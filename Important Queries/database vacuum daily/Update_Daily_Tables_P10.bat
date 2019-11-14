SET PGPASSWORD=123456-c
psql -h localhost -d Statistics -U postgres -p 5432 -a -q -f "Update_Daily_Tables_P10.txt" >>result\result10.txt
exit