# Compiling this book using Mdbook

This book takes the form of a series of markdown documents bound together by links from an index defined in `Summary.md`.

These get rendered by [mdbook](https://rust-lang.github.io/mdBook/) into book form.

To install mdbook, I use cargo, the rust package manager, as in

```bash
cargo install mdbook
```

To compile the book, use the command for compiling it that is documented in the repo Makefile by using the command `make mdbook`.
