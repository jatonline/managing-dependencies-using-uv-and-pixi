# Can others reproduce your results?<br><small>Using `uv` and `pixi` in Python data analysis projects</small>

## Viewing the resources

Choose the tool you'd like to know more about:

### uv

- [Slides](./slides/uv/) (<time datetime="2025-04-01">1 April 2025</time>, with embedded videos)
- [Video of the Lunch and Learn talk](https://youtu.be/OJ_-rkoeol8) (<time datetime="2025-04-01">1 April 2025</time>)
- [Video of the RSE South West talk](https://zenodo.org/records/14837979) (<time datetime="2025-02-10">10 February 2025</time>) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.14837979.svg)](https://doi.org/10.5281/zenodo.14837979)
- [Example data science project layout](./playground/uv_lib_demo/files/uv_lib_demo/)
    - [`pyproject.toml`](./playground/uv_lib_demo/files/uv_lib_demo/pyproject.toml)
    - `notebooks/`
        - [`example_notebook.ipynb`](./playground/uv_lib_demo/files/uv_lib_demo/notebooks/example_notebook.ipynb)
    - `src/my_project/`
        - [`probability.py`](./playground/uv_lib_demo/files/uv_lib_demo/src/my_project/probability.py)
- Further reading:
    - [uv project website](https://docs.astral.sh/uv/)

### Pixi

- [Slides](./slides/pixi/) (<time datetime="2025-04-29">29 April 2025</time>, with embedded videos)
- [Example data science project layout](./playground/pixi_lib_demo/files/pixi_lib_demo/)
    - [`pyproject.toml`](./playground/pixi_lib_demo/files/pixi_lib_demo/pyproject.toml)
    - `notebooks/`
        - [`example_notebook.ipynb`](./playground/pixi_lib_demo/files/pixi_lib_demo/notebooks/example_notebook.ipynb)
    - `src/my_project/`
        - [`probability.py`](./playground/pixi_lib_demo/files/pixi_lib_demo/src/my_project/probability.py)
- Further reading:
    - [Pixi project website](https://pixi.sh)

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
