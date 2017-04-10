load.phylo4d <- function(tree.file, data.file, ncol, label){
	
	library(phylosignal)
	library(adephylo)
	library(ape)
	library(phylobase)
	library(plyr)
	
	tree <- read.tree(tree.file)
	data <- read.table(data.file)
	names <- as.vector(data$V1)
	data <- data[ncol]
	colnames(data) <- c(label)
	rownames(data) <- names
	p4d <- phylo4d(tree, data)
	return(p4d)
}
