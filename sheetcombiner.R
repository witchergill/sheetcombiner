library(openxlsx2)
library(plyr)
library(tidyverse)
#listing all the files present in the folder
files<-list.files(pattern = '.csv')
files<-sort(files)
data<-NULL
for(i in 1:length(files)){
  data<-rbind(data,read_csv(files[i],skip = 1))
}
unlink(files)
write.csv(x = data,file = paste(files[length(files)],'.csv'))
