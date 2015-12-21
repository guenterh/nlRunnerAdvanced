
file = "/home/swissbib/temp/solrInputData/job1r115A044.format.xml";
out = "/home/swissbib/temp/trash/docProcWithMF.xml";

file |
open-file |
as-lines |
xslt-pipe-step(template="/home/swissbib/environment/code/content2SearchDocs/xslt/swissbib.solr.step1.xsl",initializePlugins="true") |
xslt-pipe-step(template="/home/swissbib/environment/code/content2SearchDocs/xslt/vufind.special.green.xsl",useLineWith="<record ") |
xslt-pipe-step(template="/home/swissbib/environment/code/content2SearchDocs/xslt/swissbib.solr.vufind2.xsl", useLineWith="<record ") |

write (out);