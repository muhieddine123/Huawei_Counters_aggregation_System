SET PGPASSWORD=123456-c
psql -h localhost -d Statistics -U postgres -p 5432 -a -q -f "Update_Daily_Tables_P4.txt" >>result\result4.txt
exit