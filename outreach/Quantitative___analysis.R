#read data, first without the firs two rows, to exclude first data row which is not data, then with all to get the column names right
QAsurvey <- read.csv("~/github_repo/rdm_promotion/outreach/Quantitative assessment of research data management practice - EPFL-Delft.csv", 
                     sep =",", skip= 2)
QAsurveyn <- read.csv("~/github_repo/rdm_promotion/outreach/Quantitative assessment of research data management practice - EPFL-Delft.csv", 
                     sep =",", skip=)
names(QAsurvey) <- names(QAsurveyn)


View(QAsurvey)
QAsurvey <- QAsurvey [-1,]
names(QAsurvey)

#get amount of data loss as numeric
QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose.
QAsurvey$dataloss = NA
QAsurvey$dataloss = ifelse(QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose. == "1 day - 7 days", 1, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose. == "1 month - 6 months", 12, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose. == "7 days - 1 month", 3, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose. == "Less than 1 day", 0.1, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$You.said.you.lost.research.data.in.the.past.year..How.much.time.did.you.lose. == "More than 6 months of work", 30, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$Did.you.lose.any.research.data.in.the.past.year. == "Not sure", NA, QAsurvey$dataloss)
QAsurvey$dataloss = ifelse(QAsurvey$Did.you.lose.any.research.data.in.the.past.year. == "No", 0, QAsurvey$dataloss)

library (ggplot2)

mean7x <- function (x, move){
  y = mean (x)
  return (move *y)
}
xx= Is.your.research.data.automatically.backed.up.
yy= "Did.you.lose.any.research.data.in.the.past.year."
ggplot(data =QAsurvey, aes(
  x=Is.your.research.data.automatically.backed.up.,
  y=dataloss
  )) + geom_violin() +
  # stat_summary(fun.y=quantile, fun.args=list(probs=0.95), geom="point", shape=18,
  #               size=3, color="red") +
  stat_summary(fun.y=mean7x, fun.args=list(move=7), geom="point", shape=18,
               size=3, color="blue")+
   labs(title = "Data loss and back up",
        subtitle = "Violin plot = data loss in weeks, blue point = mean data loss in days",
         y = "Amount of data recently lost",
        x= "is your data backed up ?")

#(aes(QAsurvey$Is.your.research.data.automatically.backed.up.,QAsurvey$Did.you.lose.any.research.data.in.the.past.year.)

