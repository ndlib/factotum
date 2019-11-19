#!/shared/perl/current/bin/perl

use lib '../';
# use lib '/shared/websites/prod/lib';

use URI::Escape;
use CGI;
use CGI::Carp(fatalsToBrowser);
use sfx_api;
use HTTP::Date;
use CoralTerms;
use Library::TemplateTwo;

my $cgi=new CGI;
#not needed
#$cgi->charset('utf-8');

my $ct = new CoralTerms;

my $issn = $cgi->param('issn');


my $body = '<html>
	<head>
		<title>Interlibrary Loan License Terms</title>
		<script src="https://resources.library.nd.edu/frame/code.js" type="text/javascript"></script>
			<script>
				document.addEventListener("DOMContentLoaded", function(event) {
					documentReady();
				});
			</script>
			<script type="text/javascript" src="../js/more-less.js"></script>
	</head>
	<body>
		<!-- <div class="e"> -->
		<div>
			<!-- <h2 style="margin-top:20px;">Interlibrary Loan License Terms</h2> -->
			<h2>Interlibrary Loan License Terms</h2>
			<p>The following refers to interlibrary loan terms only. Please contact <a href="mailto:er-acq-list@nd.edu">ER Help</a> for more information about what is allowed in signed license agreements between the University of Notre Dame and publishers/content providers regarding eReserves or other methods of sharing or distributing content by the University of Notre Dame.</p>';

my $snippet_number;


if ($issn) {

	my $sfx_api_handle = new sfx_api;
	# send data to sfx_api and retrieve different piles of html
	my (%target_hash) = sfx_api->process($issn);

	foreach $target (sort (keys %target_hash)) {
		$snippet_number++;

		my ($expressionId, $effectiveDate, $documentText, $lastUpdateDate, $lastSignatureDate, $qualifier, @displayNotes) = $ct->getTermsFromDocument($target, 'Interlibrary Loan');
		my ($altexpressionId, $alteffectiveDate, $altdocumentText, $altlastUpdateDate, $altlastSignatureDate, @altdisplayNotes) = $ct->getTermsFromDocument($target, 'Interlibrary Loan (additional notes)');

			if ( ($lastSignatureDate) && ($effectiveDate =~ /0000/) ) {
				$effectiveDate = $lastSignatureDate;
			}	
			if ( ($altlastSignatureDate) && ($alteffectiveDate =~ /0000/) ) {
				$alteffectiveDate = $altlastSignatureDate;
			}

			if ($expressionId) {
				$body .= "<h3>$target</h3>";
				$body .= "<p class=\"indent2\">The following terms apply ONLY to articles accessed via <a href=\"$target_hash{$target}\">$target</a></p>";
				$body .= "<p class=\"indent2\"><ul style=\"background-color:#EEF;padding-left:5px\"><li><b>Interlibrary Loan Notes:</b></li>";
				foreach (@displayNotes) {
					$body .= "$_<br>";
				}
				$body .= "</ul></p>";
				$body .= "<p class=\"indent2\">";
				$body .= "<span id=\"open$snippet_number\"><span class=\"toggle-more\" onclick=\"javascript:showMore($snippet_number)\"><b>+</b> [view license snippet]</span></span><span id=\"summary_more$snippet_number\" style=\"display:none;\"><span id=\"close$snippet_number\" style=\"display:none;\"><span class=\"toggle-less\" onclick=\"javascript:hideMore($snippet_number)\"><b>-</b> [hide license snippet]</span></span>&nbsp;&nbsp;&nbsp;From the license agreement ($effectiveDate):<br><br><i>\"$documentText\"</i></span><br>";
				if ($altexpressionId) {
					if ($altdocumentText) {
						$snippet_number++;
						$body .= "</p><p class=\"indent2\"><span id=\"open$snippet_number\"><span class=\"toggle-more\" onclick=\"javascript:showMore($snippet_number)\"><b>+</b> [view additional ILL information]</span></span><span id=\"summary_more$snippet_number\" style=\"display:none;\"><span id=\"close$snippet_number\" style=\"display:none;\"><span class=\"toggle-less\" onclick=\"javascript:hideMore($snippet_number)\"><b>-</b> [hide additional ILL information]</span></span>&nbsp;&nbsp;&nbsp;$altdocumentText</span><br><br>";
					} else {
						$body .= "<br>";
					}
					foreach (@altdisplayNotes) {
						$body .= "<i>$_</i>";
					}
					$body .= "<br><br>";
				} else {
					$body .= "<br>";
				}
				$body .= "<i>&nbsp;&nbsp;&nbsp;ILL terms as of $lastUpdateDate</i>";
				$body .= "</p>";
			} else {
				$missing .= "<h3>$target</h3><p class=\"indent2\">Electronic resource ILL terms not defined. Please consider using print resource to fill ILL requests, if available.</p>";
			}
	}
	if ($missing) {
		$body .= "$missing";
	}

} else {
$body =<<EOF;
<html>
	<head>
		<title>Interlibrary Loan License Terms</title>
		<script src="https://resources.library.nd.edu/frame/code.js" type="text/javascript"></script>
			<script>
				document.addEventListener("DOMContentLoaded", function(event) {
					documentReady();
				});
			</script>
	</head>
	<body>
		<div class="e">
			<h2 style="margin-top:20px;">Interlibrary Loan License Terms</h2>
			<p>License check requires ISSN.</p>
EOF
}

$body .= '</div>
	</body>
</html>';

# time stamp
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = gmtime(time);
$mon = $mon+1;
if ($mon < 10){
	$mon = "0" . $mon;
}
$year = $year+1900;

	
# create name of log file using month and year, format month_year.log

my $logfile_name = "ILL_" . $mon . "_" . $year;


# open log and record time stamp

open (LOG, ">>../logs/$logfile_name.log");

my $stamp = time2str();

## print LOG "$stamp\t$ENV{'REMOTE_HOST'}\t$issn\t$ENV{'HTTP_REFERER'}\n";

close (LOG);

# my $template = Library::TemplateTwo->new(default_configuration => '/shared/perl/templates_config.xml', type => 'ddw col_1');
# $template->js('<script type="text/javascript" src="../js/more-less.js"></script>');

# print webpage
print $cgi->header( -type=>'text/html;charset=utf-8');
# $template->title("ILL License Terms");
# $template->crumbs(" > ILL License Terms");
# print $template->get_header();
# print $template->one_column($body);
# print $template->get_footer();
print $body;

