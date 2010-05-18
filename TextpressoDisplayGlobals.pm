package TextpressoDisplayGlobals;

# Package provides global constants for all
# Webdisplay related matters of the Textpresso
# system.
#
# (c) 2004 Hans-Michael Muller, Caltech, Pasadena.

use strict;
use Net::Domain qw(hostname hostfqdn hostdomain);
use Socket;
require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(DSP_BGCOLOR DSP_TXTCOLOR DSP_LNKCOLOR DSP_AUTHOR DSP_HDRBCKGRND DSP_HDRFACE DSP_HDRSIZE DSP_HDRCOLOR DSP_TXTFACE DSP_TXTSIZE DSP_HIGHLIGHT_COLOR HTML_ROOT HTML_LINKTEMPLATES HTML_MENU HTML_LOGO HTML_PICPASS HTML_NONE HTML_ON HTML_OFF WELCOME HTML_LIT_PATH CGI_LIT_PATH IMG_PATH OWN_CHILD_STRING QUESTION_MARK_IMAGE SYN_LIST SEARCH_KEYWORDS_SYN_KEY SYN_LIST_DISPLAY_KEY);

# Get the name of the localhost

sub htmlroothelper { 
    # workaround to deal with double hostname of 
    # textpresso-www; necessary for cookies to work correctly
    my $aux = "http://" . hostfqdn() . "/";
    $aux =~ s/textpresso-www\.caltech\.edu/www\.textpresso\.org/g;
    return $aux;
}

## use constant HTML_ROOT => htmlroothelper();
use constant HTML_ROOT => 'http://localhost/';
####
# -----------------  Begin literature specific changes --------------
####

use constant HTML_LIT_PATH => 'textpresso/';

####added by RF, for synonyms list
use constant SYN_LIST => 'tdb/astrobiology/syn';

# use constant CGI_LIT_PATH => 'cgi-bin/celegans/';
use constant CGI_LIT_PATH => 'cgi-bin/textpresso/';
use constant IMG_PATH => HTML_ROOT . HTML_LIT_PATH . '/gif/';

# use constant HTML_LOGO => HTML_LIT_PATH . '/gif/textpresso4worm.jpg';
use constant HTML_LOGO => 'textpresso/gif/textpresso_new.jpg';
use constant HTML_PICPASS => HTML_LIT_PATH . '/gif/pwd.jpg';

# This is the text that appears on the home page under News and Messages

use constant WELCOME => 'Textpresso 2.5: 
                         The software for this site underwent a major upgrade
                         with important improvements to its functionality. Users
                         can now search for special characters (try: glp-1(ar202))
                         or single characters in phrases (try: "coenzyme q").
                         Several improvements in speed have been made; the
                         search result page should build up faster as well as 
                         sorting by fields other than score. Monster queries, i.e.,
                         four or five phrases, concatenated by OR (\,), are much
                         faster too.<br>
                         Please note that characters used to formulate Boolean
                         expressions now need to be escaped, except for
                         whitespace (which stands for AND): 
                         \, (OR) \- (AND NOT) \( \) (one level bracketing).
                         <p>
                         Please use the Feedback page (option in the top menu) to report irregularities.';

use constant QUESTION_MARK_IMAGE => HTML_ROOT . HTML_LIT_PATH . '/gif/questionmark3.gif';


####
# --------------- End literature specific changes --------------------
####


use constant DSP_BGCOLOR => 'white';
use constant DSP_TXTCOLOR => 'black';
#use constant DSP_LNKCOLOR => '#4d4d4d';
use constant DSP_LNKCOLOR => '#0000ff';
use constant DSP_AUTHOR => 'Hans-Michael Muller';
use constant DSP_HDRBCKGRND => '#444488';
use constant DSP_HDRFACE => 'Verdana,sans-serif';
use constant DSP_HDRSIZE => 'medium';
use constant DSP_HDRCOLOR => 'white';
use constant DSP_TXTFACE => 'verdana, helvetica';
use constant DSP_TXTSIZE => 'small';
use constant DSP_TARGETS => ['abstract', 'acknowledgments', 'body', 'title', 'introduction', 'materials', 'results', 'discussion', 'conclusion', 'references']; 
use constant DSP_SECTION_SEQUENCE => ['title', 'abstract', 'introduction', 'materials', 'results', 'discussion', 'conclusion', 'acknowledgments', 
										'references', 'body']; # section order in which sentences are displayed. 


use constant DSP_HIGHLIGHT_COLOR => {1 => '#ccccff',
				     2 => '#ccffcc',
				     3 => '#ffcccc',
				     4 => '#cccccc',
				     5 => '#ccffff',
				     6 => '#ffccff',
				     7 => '#ffffcc',
				     menutexton => '#00008b',
				     menutextoff => '#ffffff',
				     bgwhite => '#ffffff',
				     oncolor => '#006400',
				     offcolor => '#8b0000',
				     texthighlight => '#ff0000',
				     warning => '#ff0000'};
use constant HTML_LINKTEMPLATES => HTML_ROOT . HTML_LIT_PATH . 'misc/link.templates';


use constant HTML_MENU => { 'Home' => CGI_LIT_PATH . 'home',
			    'Search' => CGI_LIT_PATH . 'search',
			     ##modified by RF 1011/08
			    'Categories/Synonyms' => CGI_LIT_PATH . 'ontology',
                            'Document Finder' => CGI_LIT_PATH . 'docfinder',
			    'User Guide' => CGI_LIT_PATH. 'user_guide',
			    'Feedback' => CGI_LIT_PATH . 'feedback',
			    'Downloads' => CGI_LIT_PATH . 'downloads',
			    'About AIRFrame-Textpresso' => CGI_LIT_PATH . 'about_textpresso',
			    'Copyright' => CGI_LIT_PATH . 'copyright',
			    'Query Language' => CGI_LIT_PATH . 'tql'};

use constant HTML_NONE => 'none';
use constant HTML_ON => 'on';
use constant HTML_OFF => 'off';

# for cascading menu
use constant OWN_CHILD_STRING => ' (all)';

1;
