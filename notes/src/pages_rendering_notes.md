# Pages Rendering Notes

As I experiment with pages, I'll take down notes to present the experimental results.

## It takes time (about 1 or 2 minutes?) for a change to propagate to the website

When I add or change content in the docs file and push that change to github, I typically need to wait a couple of minutes before I can see the results of that change.

## `index.html` == `/`

I get the same result from each of the following urls:

- `https://www.nnums.com`
- `https://www.nnums.com/`
- `https://www.nnums.com/index`
- `https://www.nnums.com/index.html`

Note that I don't get redirects, just identical content.

## `other.html` == `other`

Similarly, I can toggle `.html` for other pages as well.
These give the same result:

- `https://www.nnums.com/other`
- `https://www.nnums.com/other.html`

## Markdown is rendered as plain text

I added a markdown file and took a look and what I say was raw markdown without any highlighting or rendering.

## Directories work

I tried `/docs/notes/note.html` and it worked fine under `https://www.nnums.com/notes/note` and its html twin.

## CNAME isn't accessible

You can't view the CNAME file, meaning these fail:

- `https://www.nnums.com/CNAME`
- `https://www.nnums.com/cname`

## Files without extensions

I tried a non-cname file without an extension and it was made available to the browser.

My browser didn't want to treat it as text, but instead offered to download it and let me inspect it outside the browser.
