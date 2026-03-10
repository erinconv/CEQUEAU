# CEQUEAU Hydrological Model

Welcome to the official documentation for the CEQUEAU hydrological model. CEQUEAU is a distributed hydrological model designed for simulating watershed hydrology.

## About CEQUEAU

CEQUEAU is a spatially distributed hydrological model that divides a watershed into square grid cells, called "carreaux entiers" (whole squares), which are further divided into "carreaux partiels" (partial squares) based on watershed boundaries. The model simulates various hydrological processes including:

- Snow accumulation and melt
- Evapotranspiration
- Surface and subsurface flow
- Channel routing

## Getting Started

To get started with CEQUEAU:
1. [How to run the model](run_model.md)
2. [How to obtain the physiographic data](https://pycequeau.readthedocs.io/en/latest/index.html)
3. [Basic usage guide](guide.md)

## API Reference

The API reference provides detailed information about the model's classes and functions:

- [Simulation](api/simulation.md) - The main simulation engine
- [BassinVersant](api/bassin_versant.md) - Watershed representation
- [CarreauEntier](api/carreau_entier.md) - Whole grid cells
- [CarreauPartiel](api/carreau_partiel.md) - Partial grid cells

## Contributing

Contributions to the CEQUEAU model are welcome. Please see our [contribution guidelines](contributing.md) for more information.

## License

CEQUEAU is licensed under [LICENSE]. See the [LICENSE](license.md) file for details. 