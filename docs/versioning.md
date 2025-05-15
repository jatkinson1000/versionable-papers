# Versioning research

There are two main types of versioning schemes in use to provide context and semantics:
- Significance of change based versionin (e.g. [Semantic Versioning](https://semver.org/)): provides information of the "importance" / "significance" of the change, originally used to say how much it breaks or changes compatibility of previous versions.
- Date based versioning (e.g. [CalVer](https://calver.org/), [HashVer](https://miniscruff.github.io/hashver/)): provides information on when a change has been made, providing absolute information of the relationship between versioned objects. Hashes can be used if the object is changing rapidly.

Andrew Nesbitt has written a good overview of [different versioning schemes](https://nesbitt.io/2024/06/24/from-zerover-to-semver-a-comprehensive-list-of-versioning-schemes-in-open-source.html) 

There have been suggestions of how to use these versioning schemes in research:
- [Semantic Versioning for papers](https://royalsocietypublishing.org/doi/10.1098/rsbl.2022.0463): here the the MAJOR / MINOR / MICRO definitions are mapped to adding a major analysis. adding a minor analysis and adding a correction, respectively
- 
    - 
    - Link semantic versioning to the paper e.g. 
        - When published v1.0.0
        - v2.0.0 adds a major analysis
        - v1.1.0 adds a minor analysis
        - v1.0.1 adds a correction
    - Issues
        - No semantic link between version, and versioning of the things that have produced the paper e.g. software and data and workflow
        - Possibly doesn't work for executable papers where you are changing more than just parameters
    - Questions:
        - If the software changes substantially, e.g. complete rewrite with major version, but the functionality used for the paper hasn't changed substantially, do we need to flag this as a major change?
        - Should the "paper version" have primacy? or is there another research object (ROCrate?) or abstract concept that should be versioned. 
        - Or does it not matter, and we just record the version of each thing and don't attempt to create an overall semantic version?

- Open Science Framework
    - https://help.osf.io/article/282-file-revisions-and-version-control

- ROCrate
    - Integrated view across all elements of a research object: data, software, methods, article
        - Includes identifiers and relationships
        - Does not appear to have any metadata 
