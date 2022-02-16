.PHONY: mdbook
mdbook:
	mdbook build meta-notes --dest-dir ../docs/meta-notes
.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve meta-notes --open

