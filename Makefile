.PHONY: mdbook
mdbook:
	mdbook build metanotes --dest-dir ../docs/metanotes

.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve metanotes --open

.PHONY: jupyter
jupyter:
	. notebooks/venv/bin/activate && cd notebooks/src && jupyter-lab