# Build the mdbook metabook
.PHONY: mdbook
mdbook:
	mdbook build metanotes --dest-dir ../docs/metanotes
	mdbook build user-guide --dest-dir ../docs/user-guide

# Open the mdbook metabook
.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve metanotes --open

.PHONY: static
static:
	open "http://localhost:8000"
	python3 -m http.server --directory docs
