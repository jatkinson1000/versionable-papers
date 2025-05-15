
# Previous work on executable papers

## Jupyter notebooks (and similar tools like R markdown)

- These are live notebooks that combine code, figures and text, providing context to analysis in ways that are not possible with simple code scripts
- Whilst most papers contain a single snapshot of a figure, authors can share notebooks along with their paper showcasing the code used to generate each figure
- These can be made accessible with the use of cloud-based platforms such as binder and google colab, allowing others to run notebooks directly from their browser without having to download code
- Researchers can continue to update and maintain these notebooks after inital publication of the article
- However, this is still separate from the paper itself, and any changes/updates will note be reflected in the original article
- There are also limitations on the kinds of analyses that can be performed in notebooks, necessitating a more robust solution for many research studies

## Fully executable papers

There have been some efforts by individual researchers to create fully executable papers, along with guidelines for other researchers e.g. <https://www.nature.com/articles/s42005-020-00403-4>

## Joarnal initiatives

There have been some efforts by journals to encourage the use of notebooks:

- <https://www.nature.com/articles/515151a>
- <https://www.oreilly.com/content/jupyter-at-oreilly/>

[eLife executable research articles](https://elifesciences.org/collections/d72819a9/executable-research-articles)

- based on Jupyter notebooks and R markdown
- shows code used to generate each figure, which can be run online on the eLife website
- however, these are not necessarily fully integrated end-to-end pipelines (just a series of scripts used to generate figures)
- data and code are static, and there doesn't seem to be any system in place for creating updates
- no longer active

## Beyond Execution: Verifying Pipelines

- Codecheck: Not executable papers per-se, but requires pipeline to be re-runnable and quantifiable research outputs verified.
- Promotes automation, but it's still up to authors to put the effort in, and there are minimal guidelines in place
- Could relate to versioning - i.e. any change that would cause codecheck to fail would be considered a "breaking" change, and require a major/minor version bump
