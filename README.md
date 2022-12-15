# ggmidas
Import and plot output of strain-level analysis of metagenomics from the software like [MIDAS](https://github.com/snayfach/MIDAS), [MIDAS2](https://github.com/czbiohub/MIDAS2), metaSNV v1 and metaSNV v2. Will grow into the complete package.

- [midas_db_v1.2](https://github.com/snayfach/MIDAS/blob/master/docs/ref_db.md): Contains 31,007 bacterial reference genomes clustered into 5,952 species groups.
- UHGG (in MIDAS2): Contains 286,997 genomes clustered into 4,644 species (**from human stool samples**).
- GTDB (in MIDAS2): Contains 258,406 genomes clustered into 45,555 bacterial and 2,339 archaeal species.

# Functions
- `checkProfile` (for MIDAS and MIDAS2)
Check genes and snps for how many number of samples per category is profiled.  

- `checkPATRIC`  (for MIDAS)
Only for MIDAS (midas_db_v1.2), where the gene name corresponds to PATRIC accession. The gene function for the species is queried to PATRIC server, and cached for later use. The queried gene description is returned. The duplicate entries for gene to `ec_number`, `ec_description`, `pathway_id`, `pathway_name` is deleted and ordered count table is also returned. Additionally, network representation of EC and KEGG pathway is returned in `igraph` object and `ggraph` plot.

- `getGenes` (for MIDAS)
Store gene matrix (presabs or copynum) and its heatmap, with filtering by threshold.  

- `doAdonis`
Recursively perform PERMANOVA between category for queried species, based on distance matrix from SNV frequency table.  
