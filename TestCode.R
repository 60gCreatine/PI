library(DBI)
library(RMariaDB)

# Locally saved env, for hiding password and ip
readRenviron(".Renviron")
password <- Sys.getenv("password")
ip <- Sys.getenv("ip")

con <- dbConnect(MariaDB(),
                 dbname="test",
                 host=ip,
                 port=3306,
                 user="remote",
                 password=password)

dbGetQuery(con, "SHOW DATABASES;")
