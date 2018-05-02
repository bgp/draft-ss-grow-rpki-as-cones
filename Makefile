
BASENAME=draft-ss-grow-rpki-as-cones
EXT=.xml
VERSION=01
SOURCENAME=${BASENAME}${EXT}
DRAFTNAME=${BASENAME}-${VERSION}

all:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --raw --text --html

text:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --raw

paginated:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --text

html:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --html

clean:
	rm ${DRAFTNAME}.*
