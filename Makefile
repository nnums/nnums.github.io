.PHONY: mdbook
mdbook:
	mdbook build meta-notes --dest-dir ../docs/meta-notes

.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve meta-notes --open

.PHONY: jupyter
jupyter:
	. notebooks/venv/bin/activate && cd notebooks/src && jupyter-lab