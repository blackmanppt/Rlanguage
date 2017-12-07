#-----------------------------------------------------------  
#RODBC 
#-----------------------------------------------------------  
#安裝RODBC Driver 
install.packages("RODBC")
install.packages("dplyr")
#載入Library 
library("RODBC")
library(dplyr)
#-----------------------------------------------------------  
#連線字串 
#sqlConnString = "driver={SQL Server};server=192.168.0.131;database=database;uid=Viewer;pwd=Viewer"
require(RODBC)
conn = odbcConnect(dsn= "GGF",uid = "Viewer",pwd = "Viewer")
#執行sql查詢 
FraudDF1 <- sqlQuery(conn, " SELECT * FROM Mapping ")
#抓取前5筆顯示 
head(FraudDF1, 5)
#關閉連線 
odbcClose(conn)

channel <- odbcDriverConnect(settings$dbConnection)
FraudDF2 <- sqlQuery(channel, " SELECT * FROM Mapping ")
head(FraudDF2, 5)
