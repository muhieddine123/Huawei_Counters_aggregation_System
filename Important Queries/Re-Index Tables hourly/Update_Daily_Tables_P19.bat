SET PGPASSWORD=123456-c
psql -h localhost -d Statistics -U postgres -p 5432 -a -q -f "Update_Daily_Tables_P19.txt" >>result\result19.txt
exit