package CoralTerms;
use strict;

use CGI qw/:all/;
use DBI;
use CGI::Carp qw( fatalsToBrowser );
use Encode qw<encode FB_HTMLCREF> ;

use Config::IniFiles;
 
my $config_file = '../admin/licensing.ini';

my $input = new CGI();
my $db;

################
# new
################
sub new {

        my ($class_name) = @_;
        my ($self) = {};
        bless ($self, $class_name);
        return $self;

}


################
# getTermsFromDocument Subroutine #
################

sub getTermsFromDocument {
	shift;
	my $sfxProviderName=shift; 
	my $expressionType=shift; 
	db_conn();
	return getTerms($sfxProviderName, $expressionType);
	db_close();
 
} 
 
##############################
# sub to display statistics page
 
sub getTerms {
	my $sfxProviderName=shift; 
	my $expressionType=shift; 
	
	my ($expressionId, $effectiveDate, $documentText, $lastUpdateDate, @displayNotes, $lastSignatureDate, $qualifier);
	
	
	my $q = qq(SELECT E.expressionId, date_format(D.effectiveDate, '%m/%d/%Y') effectiveDate, E.documentText, Q.shortName qualifier
			FROM Document D, ExpressionType ET, SFXProvider SP, 
			Expression E 
				LEFT JOIN ExpressionQualifierProfile EQP ON (EQP.expressionID = E.expressionID)
				LEFT JOIN Qualifier Q ON (Q.qualifierID = EQP.qualifierID)
			WHERE D.documentId = E.documentId
			AND ET.expressionTypeId = E.expressionTypeId
			AND (D.expirationDate is null || D.expirationDate = '0000-00-00')
			AND SP.documentID = D.documentID
			AND E.productionUseInd='1'
			AND ET.shortName = '$expressionType'
			AND SP.shortName = '$sfxProviderName');

	my $sth = $db->prepare($q);
	$sth->execute();

	$sth->bind_columns(undef, \$expressionId, \$effectiveDate,\$documentText, \$qualifier);
	$sth->fetch();
	# convert new line character to html line break
	$documentText =~ s/\n/<br \/>/g;
	$sth->finish();



	
	my $q = qq(SELECT date_format(MAX(updateDate), '%m/%d/%Y') lastUpdateDate FROM (
			SELECT MAX(lastUpdateDate) updateDate FROM Expression WHERE ExpressionId='$expressionId'
			UNION
			SELECT MAX(lastUpdateDate) updateDate FROM ExpressionNote WHERE ExpressionId='$expressionId') allDates);

	my $sth = $db->prepare($q);
	$sth->execute();

	$sth->bind_columns(undef, \$lastUpdateDate);
	$sth->fetch();
	$sth->finish();

	my $q = qq(SELECT date_format(MAX(signatureDate), '%m/%d/%Y') lastSignatureDate
			FROM Signature S, Document D, SFXProvider SP
			WHERE D.documentId = S.DocumentId
			AND D.expirationDate is null
			AND SP.documentID = D.documentID
			AND SP.shortName = '$sfxProviderName'
			AND signatureTypeId='2'
			GROUP BY S.documentId
			ORDER BY 1;);

	my $sth = $db->prepare($q);
	$sth->execute();

	$sth->bind_columns(undef, \$lastSignatureDate);
	$sth->fetch();
	$sth->finish();


	my $displayNote;
	
	$q = qq(SELECT EN.note
		FROM ExpressionNote EN
		WHERE EN.expressionId = '$expressionId'
		ORDER BY displayOrderSeqNumber;);


	$sth = $db->prepare($q);
	$sth->execute();

	$sth->bind_columns(undef, \$displayNote);
	while ($sth->fetch()) {
		#convert new lines to html line breaks
		$displayNote =~ s/\n/<br \/>/g;
		push (@displayNotes, $displayNote);
	}
	
	$sth->finish();





	return ($expressionId, $effectiveDate, $documentText, $lastUpdateDate, $lastSignatureDate, $qualifier, @displayNotes);


}


#####################################
# initialize DBI connection
 
sub db_conn {
 
	my $cfg = new Config::IniFiles( -file => "$config_file" );

	# database connection info
	my $dsn = $cfg->val('Database', 'dsn');
	my $db_user = $cfg->val('Database', 'database_user');
	my $db_pass = $cfg->val('Database', 'database_password');


	my (%attr) = ( PrintError => 0, RaiseError => 0 );

	# connect to the database
	$db = DBI->connect("$dsn","$db_user","$db_pass") or die $DBI::errstr;;

} # end subroutine db_conn;
 

####################################
# sub to close db connection
 
sub db_close {
 
	$db->disconnect();
 
}



1;