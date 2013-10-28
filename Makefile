#java -jar ~/java/saxon/lib/saxon9.jar -s:../metadata/index.rdf -xsl:../xsl/index2html.xsl -o:../site/sibindex.html

HIGHLIGHT=white
DRAFT=
ARTID=
SITE=beta
LANG=ar
JARS=/usr/local/jar
JARDIR=/usr/local/jar
SAXON=saxon9
XSL=/usr/local/xml/xsl

.PHONY :

zb:
	java -jar ${JARS}/${SAXON}.jar \
	-xi:on \
	-s:zbguide.xml \
	-xsl:${XSL}/book-xliff2pdf.xsl \
	> tmp/zbguide.tex; \
	(xelatex \
	-output-directory=tmp \
	tmp/zbguide.tex  && \
	open tmp/zbguide.pdf;)

