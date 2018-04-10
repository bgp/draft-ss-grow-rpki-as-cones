
DRAFT_NAME=draft-ss-grow-rpki-as-cones
VERSION=00

all:
	xml2rfc ${DRAFT_NAME}.xml --basename=./${DRAFT_NAME}-${VERSION} --raw --text --html

text:
	xml2rfc ${DRAFT_NAME}.xml -o ${DRAFT_NAME}-${VERSION}.txt --raw

paginated:
	xml2rfc ${DRAFT_NAME}.xml -o ${DRAFT_NAME}-${VERSION}.txt --text

html:
	xml2rfc ${DRAFT_NAME}.xml -o ${DRAFT_NAME}-${VERSION}.html --html

