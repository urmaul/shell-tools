function massext() {
	find -L . -type f -name "*.$1" | while read FNAME; do
		mv "$FNAME" "${FNAME%.$1}.$2"
	done
}

function rmsvn() {
	rm -rf `find . -type d -name .svn`
}
