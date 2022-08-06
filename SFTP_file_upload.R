#SFTP connection using R

library ("RCurl")

##downloading a file
protocol <- "sftp"
server <- "example.com"
userpwd <- "user:pwd"

#local path of the file
local_file_path = "C://local_path/another_file.xlsx"

#Desired sftp file path to upload
tsfrFilename2 <- "/xx/xx/another_file.xlsx"  

#create URL
url2 <- paste0(protocol, "://", server, tsfrFilename2)

#Upload the file
ftpUpload(what = local_file_path, to = url2, userpwd=userpwd)
