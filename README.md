# Can others reproduce your results?<br><small>Using `uv` and `pixi` in Python data analysis projects</small>

## Viewing the resources

👉 [Visit the website](https://jatonline.github.io/managing-dependencies-using-uv-and-pixi/) 👈

## Development

### Slides

The slides are built and published using [Quarto](https://quarto.org/):

```bash
quarto render
quarto publish
```

### Demos

The demo environments are inside [`playground/`](./playground/) and run inside [Podman](https://podman.io/) containers.

There is a [just](https://just.systems/) [`justfile`](./playground/justfile) to conveniently build and run the demos. For example:

```bash
cd playground
just build uv_lib_demo
just run uv_lib_demo
```

Check the [`compose.yml`](./playground/compose.yml) and each demo's `Dockerfile` for further details.

## Licence

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
