# Compiling this book

This book takes the form of a series of markdown documents bound together by links from an index defined in `Summary.md`.

These get rendered by [mdbook](https://rust-lang.github.io/mdBook/) into book form.

To install mdbook, I use cargo, the rust package manager, as in

```bash
cargo install mdbook
```

To run build for the book, I specify the source and target directories like this:

```bash
mdbook build notes --dest-dir ../docs/notes
```
