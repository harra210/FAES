#This is an R script from Intro to Bioinformatics Class
#
#reads the input data
stat1_interactions_new <- read.csv("string_interactions.tsv",sep="\t")

#extracts the first two and last column of the tsv file
statsmallnew <- stat1_interactions_new[c(1,2,15)]

#extracts the interactions from statsmallnew with more than 0.5 score
statsmallnewfiltered <- subset(statsmallnew, combined_score >= 0.5)

#writes the filtered interactions into a file
write.table(statsmallnewfiltered, "statsmallnewfiltered.txt", sep= "\t", quote = FALSE, row.names = FALSE)

#Print the score distribution graph
png('statsmallnew.png')
plot(statsmallnew$combined_score)
dev.off()

message("Success! All outputs are in the working directory")

##Script ran successfully, all outputs are in the working directory
