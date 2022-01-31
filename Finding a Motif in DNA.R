setwd("C:/Users/Zain/R/Bioinformatics")
library(stringr)
seq <- "write_sequence_here"
seq_split <- strsplit(seq,"")[[1]]
motif <- "write_motif_here"
made <- ""
pos <- 0
results <- c()

for (i in seq_split){
  print(i)
  made <- gsub(" ", "", paste(made,i))
  print(made)
  if (nchar(made)==nchar(motif))
    {
    pos<-pos+1
    if (grepl(motif,made,fixed = TRUE))
      {
      results <- c(results,pos)
      made <- str_sub(made,2)
      }
    else
      made <- str_sub(made,2)
  }
}
result_txt <- paste(results, collapse = " ")
writeLines(result_txt, 'motif.txt')