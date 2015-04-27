cat final.ddl | sed -e "s/;/;~/" -e 's/"//g' | tr -s "\n~" " \n" | grep "ALTER TABLE.*KEY" | tr -d '\15\32' | java -jar DDLParser.jar > final.ddl2
cat final.ddl | sed -e "s/;/;~/" -e 's/"//g' | tr -s "\n~" " \n" | grep "ALTER TABLE.*KEY" | tr -d '\15\32' | java -jar DDLParser2.jar > final.ddl3
