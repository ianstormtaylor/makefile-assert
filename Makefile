
assert-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "\n  Error: You must pass in the \`$*\` environment variable.\n"; \
		exit 1; \
	fi
