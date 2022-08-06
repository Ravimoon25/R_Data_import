#SFTP connection using R
library ("RCurl")

##downloading a file

protocol <- "sftp"
server <- "example.com"
userpwd <- "user:pwd"
tsfrFilename <- "/xx/xx/dummy_xl_upload_test.xlsx" # sample sftp folder path


url <- paste0(protocol, "://", server, tsfrFilename) #create url
data <- getBinaryURL(url = url, userpwd=userpwd)

writeBin(data, 'localpath/dummy_xl_upload_test.xlsx')
