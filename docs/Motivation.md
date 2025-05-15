# Motivation

Often, researchers use code to generate and/or analyse their results. Sometimes, the code is left as-is, and never used again. Somewtimes, however, the code continues to be worked on. Indeed, it may become a citeable resource in its own right.

In addition, the data set used may grow, and/or an additional data set becomes available. 

So, either the code may change, or the data does, or both.

These changes may change results significantly, such that it justifies a new paper to be published. Often, however, a new paper isn't justified. In such a case, we propose that *a new version of the existing paper is generated*, with a suitable versioning scheme. The updated version would then be made available on the journal website, and the original or previous versions continue to be available.

We propose the use of a tool which will automatically generate a new version of trhe paper with the new code and/or new data.

Automatic document generation from results has been proposed before, for Stata (Gillman 2018). Here, we present a proof-of-concept tool based on R.


## References
Gillman, M. S. (2018). Some Commands to Help Produce Rich Text Files from Stata. *The Stata Journal*, 18(1), 197-205. https://doi.org/10.1177/1536867X1801800112 (Original work published 2018)