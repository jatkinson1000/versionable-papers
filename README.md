# CW25 Hack Day: Versioned Papers

Project for the [2025 Collaborations Workshop](https://www.software.ac.uk/workshop/collaborations-workshop-2025-cw25)
Hack Day.

### Key Resources

- [GitHub Project Board](https://github.com/users/jatkinson1000/projects/6)
- [HackMD notes](https://hackmd.io/@4deJBiw5Q02xMEjNHqRPTw/rJdZuffWxe)
- [Presentation slides](./cw25/CW25_Presentation.pdf)

### Key objectives

- Guidance on semantic versioning of research
- A tool to automatically generate a new version of an executable paper when the code and/or data is changed


## Contributions

Contributions and collaborations are welcome from anyone with an
interest in improving research publication.

Any suggestions for improvement can be documented by
[opening an issue](https://github.com/jatkinson1000/versionable-papers/issues).

If you built something that would be useful to, or can
address an [open issue](https://github.com/jatkinson1000/versionable-papers/issues), please
[fork the repository](https://github.com/jatkinson1000/versionable-papers/fork) and open a
pull request.

### License

Copyright &copy; CW25 versionable papers [team](#team).

Distributed under an [MIT License](https://github.com/jatkinson1000/versionable-papers/blob/main/LICENSE) (code) and [CC BY](https://creativecommons.org/licenses/by/4.0/) (documentation)

### Team

- [Jack Atkinson](https://jackatkinson.net/)
- Richard J. Acton
- [Nicky Nicolson](https://www.kew.org/science/our-science/people/nicky-nicolson)
- Liam Pattinson
- Tom Bland
- Neil Chue Hong
- Gabriel Mateus Bernardo Harrington
- [Matthew S. Gillman](https://www.lannelongue-group.org/members/Matthew%20Gillman.html)
- Scott Archer Nicholls
- [Steve Bachman](https://www.kew.org/science/our-science/people/steven-p-bachman) - SPB has contributed an [existing project](https://github.com/stevenpbachman/gbif_species_monitor) which we're using as a basis  

## Seed point data example

This example is using `details of species/analysis here`

The pipeline is built using [targets](https://books.ropensci.org/targets/), a [Make](https://www.gnu.org/software/make/)-like pipeline tool for statistics and data science in R.
This package allows for establishing analytical dependencies, so if an input data source changes, all the relevant analytical components can be rerun automatically as needed.

This pipeline culminates in the rendering of a [Quarto](https://quarto.org/) file.
Quarto is a [literate programming](https://en.wikipedia.org/wiki/Literate_programming) approach that allows a dynamic paper to be produced with the updated analysis results in a publication ready format.

The Quarto file is rendered to the `docs` directory which is in turn served by [GitHub Pages](https://pages.github.com/).

This pipeline is encapsulated by a CI that building a [Docker](https://www.docker.com/) image from the [Rocker](https://rocker-project.org/) project
The R dependencies are managed by [renv](https://rstudio.r-universe.dev/renv) with a lock file defining the packages/versions is used by the image build process.

This is used in conjunction with a semantic versioning system to track changes to the changes to data, software and analytical results


