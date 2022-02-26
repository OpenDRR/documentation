# OpenDRR Documentation on GitHub Pages

This is the `gh-pages-source` branch of the OpenDRR/documentation repository used to render papers in AsciiDoc format (in the docs/ directory) with Jekyll using the [GCWeb, the WET-BOEW Canada.ca theme](https://wet-boew.github.io/GCWeb/index-en.html).  The web pages are then deployed to the [gh-pages](https://github.com/OpenDRR/documentation/tree/gh-pages) branch, and are served as GitHub Pages at https://opendrr.github.io/documentation/.

Papers related to the OpenDRR platform include, for example:

* [A Federated OpenDRR Platform to Support Disaster Resilience Planning in Canada: High Level Requirements](https://opendrr.github.io/documentation/docs/opendrr-platform.html)

For other documentation, please visit the [`master`](https://github.com/OpenDRR/documentation) branch at https://github.com/OpenDRR/documentation.

## Generating documentation website using Jekyll with AsciiDoc plugin

The GitHub Pages are built and deployed automatically using GitHub Actions with the workflow file `.github/workflows/jekyll-asciidoc.yml`.

To test locally, use the command:

```console
$ bundle exec jekyll serve --baseurl ''
```
