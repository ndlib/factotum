package sfx_api;

use URI::Escape;
use CGI qw(:all);
use LWP::UserAgent;
use HTTP::Request::Common;
use XML::Simple;
use CGI::Carp(fatalsToBrowser);
use strict;

sub new {

	my ($class_name) = @_;
	my ($self) = {};
	bless ($self, $class_name);
	return $self;

}

sub process{

# extract variables

my ($self, $issn) = @_;


# create a new user agent to send the xml request to

my $userAgent = LWP::UserAgent->new(agent => 'sfx_web_service');


# original xml syntax for SFX API

my $openurl0_1 = << "EOXML";
<?xml version="1.0"?>
  <open-url>
    <object_description>
      <object_metadata_zone>
	  <sid>ND_license_check</sid>
	  <sfx.ignore_date_threshold>1</sfx.ignore_date_threshold>
        <genre>article</genre>
        <issn>$issn</issn>
        <volume></volume>
        <issue></issue>
        <year></year>
      </object_metadata_zone>
    </object_description>
  </open-url>
EOXML

my $apiurl = "https://findtext.library.nd.edu/ndu_local";
my $req = POST $apiurl, [ XML => $openurl0_1 ];


# send request to SFX API

my $response = $userAgent->request($req);


# if there is a problem, print the error and exit

if (!$response->is_success){
	print "Content-type: text/html\n\n";
	print $response->error_as_HTML;
	exit;
}


# place the response in the text variable

my $text = $response->content; 
my $html;
my $xml;

# unescape < and >

$text =~ s/&lt;/</g;
$text =~ s/&gt;/>/g;

# parse out any html and place html and xml in their respective variables

if ($text =~ /<html>/i){
	$text =~ s/(<html>[\w\W]+<\/html>)//i;
	$html = $1;
	$html = escapeHTML($html);
	$text =~ /(<\?xml[\w\W]+)/;
	$xml = $1;
}else{
	$xml = $text;
}

my $xml_hash_ref = XMLin($xml, ForceArray => 1);

my $full_text_html;
my $no_license_list;
my $target_name;
my $target_url;
my %target_hash;
my $p = 0;

foreach my $i ( 0 .. $#{ $xml_hash_ref->{target} }){

	if ($xml_hash_ref->{target}->[$i]->{service}->[0] eq "getFullTxt"){
			$target_name = "$xml_hash_ref->{target}->[$i]->{target_name}->[0]";
			$target_url = "$xml_hash_ref->{target}->[$i]->{url}->[0]";
			$target_hash{$target_name}=$target_url;	
	}

}


# print xml and html to a file
# open a file to print output to

#open (OUTPUT, ">xml_returned.txt");
#print OUTPUT "$xml\n\n\n$html";
#close (OUTPUT);

return %target_hash;
}

1;
