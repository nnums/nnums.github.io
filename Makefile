.PHONY: mdbook
mdbook:
	mdbook build notes --dest-dir ../docs/notes
.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve notes --open

