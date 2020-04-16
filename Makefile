
BASENAME=draft-ietf-grow-rpki-as-cones
EXT=.xml
VERSION=02
SOURCENAME=${BASENAME}${EXT}
DRAFTNAME=${BASENAME}-${VERSION}

all:
	if [ -d ${DRAFTNAME} ]; then \
	echo "Dir exists, not creating it"; \
	else mkdir ${DRAFTNAME}; \
	fi
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --raw --text --html

text:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --raw

paginated:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --text

html:
	xml2rfc ${SOURCENAME} -b ${DRAFTNAME} --html

clean:
	rm -fr ${DRAFTNAME}
