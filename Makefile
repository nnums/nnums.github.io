# Build the mdbook metabook
.PHONY: mdbook
mdbook:
	mdbook build metanotes --dest-dir ../docs/metanotes

# Open the mdbook metabook
.PHONY: mdbook-serve
mdbook-serve:
	mdbook serve metanotes --open

# Run jupyter-lab
.PHONY: jupyter
jupyter:
	. notebooks/venv/bin/activate && cd notebooks/src && jupyter-lab


# Compile the notebooks to html in docs/notebooks
.PHONY: notebooks
notebooks:
	bin/notebooks.sh
