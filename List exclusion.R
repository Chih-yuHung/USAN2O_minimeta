#Compare two scopus results.
USA <- read.csv("N2O_list_from_US/USA_LIST.csv",header=T)
STATE <- read.csv("N2O_list_from_US/STATE_LIST.csv",header=T)

#exclude duplicate paper from USA, i.e. remove papers shown in STATE from USA
USA_updated <-USA[!(USA$EID %in% STATE$EID),]

write.csv(USA_updated,"N2O_list_from_US/USA_updated.csv")
