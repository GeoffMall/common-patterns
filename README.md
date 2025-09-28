# Common Patterns

Some common patterns. See the [live site](https://geoffmall.github.io/common-patterns/master/).

## Inspirations

- [Structurizr](https://structurizr.com/) - for the C4 model and diagrams
- [Structurizr Site Generatr](https://github.com/avisi-cloud/structurizr-site-generatr/) - for the static site generation
- [Mermaid](https://docs.mermaidchart.com/) - for the sequence diagrams

## Usage

1. Download structurizr-site-generatr image.

```
make pull
```

2. Local development. This will start a local server at `http://localhost:8080/`.

```
make serve
```

3. Build the site. This will generate the static site in `./docs/` folder.

```
make generate-site
```

