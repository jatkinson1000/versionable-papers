# Versioning research

There are two main types of versioning schemes in use to provide context and semantics:
- Significance of change based versioning (e.g. [Semantic Versioning](https://semver.org/)): provides information of the "importance" / "significance" of the change, originally used to say how much it breaks or changes compatibility of previous versions.
- Date based versioning (e.g. [CalVer](https://calver.org/), [HashVer](https://miniscruff.github.io/hashver/)): provides information on when a change has been made, providing absolute information of the relationship between versioned objects. Hashes can be used if the object is changing rapidly.

Andrew Nesbitt has written a good overview of [different versioning schemes](https://nesbitt.io/2024/06/24/from-zerover-to-semver-a-comprehensive-list-of-versioning-schemes-in-open-source.html) 

There have been suggestions of how to use these versioning schemes in research:
- [Semantic Versioning for papers](https://royalsocietypublishing.org/doi/10.1098/rsbl.2022.0463): here the the MAJOR / MINOR / MICRO definitions are mapped to adding a major analysis. adding a minor analysis and adding a correction, respectively. 
- [RDA Principles and best practices in data versioning for all datasets big and small](https://doi.org/10.15497/RDA00042): provides examples and guidance on how to identify a release of a dataset, and recommends the use of Semantic Versioning but does not provide guidance on how to translate this for data.

There have also been developments which help to packages the many different parts of research together, including data, software, and publications:
- [RO-Crate](https://www.researchobject.org/ro-crate/): provides an integrated view across all elements of a research object. It includes identifiers and relationships, but doesn't enforce any policies on how to apply versioning.
- [Open Science Framework[(https://osf.io/): provides a place to manage and publish all the parts of a piece of research to enable collaboration. It provides some [guidance around versioning](https://help.osf.io/article/282-file-revisions-and-version-control) but 

However, there is surprisingly little guidance on how to apply semantic versioning to different types of research object, and no guidance on how research teams can support continual incremental releasing.

Some questions that need further progress to enable this include
- Do we need the concept of versioning the research as a whole (e.g. the RO-Crate). If so, how do you apply semantic versioning to this? For example, if the software changes substantially, e.g. complete rewrite with major version, but the functionality used for the paper hasn't changed substantially, and the data hasn't changed, is this  as a major change to the research?
- Or should the paper / executable paper have primacy, and if so, how is this versioned when the research objects that contribute to it are changed.
- Or does it not matter, and we just record the version of each thing and don't attempt to create an overall semantic version?

An important concept is that there is still a "human in the loop" - someone who decides what constitutes a major vs minor vs micro release. 

It might be possibel to use the [criteria from the Turing Way](https://the-turing-way.netlify.app/reproducible-research/overview/overview-definitions) to help create this guidance:
- Reproducible
- Replicable
- Generalisable
- Robust

## A process for semantic versioning of research

This provides guidance for semantic versioning of your research process.

_To be added_

- Create brief guidance 
