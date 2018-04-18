#!/bin/bash
mysql -uroot -p1 <<EOF
DROP DATABASE lua;
CREATE DATABASE lua;
USE lua;
CREATE TABLE software (
	id int unsigned NOT NULL auto_increment,
	name varchar(255),
	version varchar(255), 
	compiler varchar(255), 
	compilerbase varchar(255),
	compilerversion varchar(255),
	category varchar(255),
	description varchar(255),
	url varchar(255),
	concant varchar(255), 
	notes BLOB, 
	PRIMARY KEY(id)
);
EOF
for f in $(find /home/blik/Desktop/archive/2018_04_11/apps -type f -name "*lua"); do 
 echo $f; 
 export software_name=$(grep "Name:        " $f | sed 's/.*Name:        //g' | sed 's/\")//g');
 export software_version=$(grep Version: $f | sed 's/.* //g' | sed 's/\")//g');
 export software_category=$(grep "Category:    " $f | sed 's/.*Category:    //g' | sed 's/\")//g');
 export software_description=$(grep "Description: " $f | sed 's/.*Description: //g' | sed 's/\")//g');
 export software_url=$(grep URL: $f | sed 's/.* //g' | sed 's/\")//g');
 export software_blob=$(sed -n "/Product/,/]])/p" $f  | head -n-1);
 export software_compiler=$(grep "^.*compiler     = \"" $f | sed 's/.*compiler     = \"//g' | sed 's/\".*//g' | sed 's/\./_/g' | sed 's/-jdk-/-c/g');
 export software_compiler_base=$(echo $software_compiler | sed 's/-.*//g')
 export software_compiler_version=$(echo $software_compiler | sed 's/^.*-//g' | sed 's/\./_/g')
 export software_concant=$(echo $software_name"_"$software_version"_"$software_compiler)
 export software_blob=$(sed -n "/Product/,/]])/p" $f | head -n-1 | sed "s/'/_/g" | sed 's/\"/_/g' | sed 's/\`/_/g');
 echo "INSERT INTO software (name, version, compiler, compilerbase, compilerversion, category,description,url, concant, notes) VALUES ('$software_name', '$software_version', '$software_compiler', '$software_compiler_base', '$software_compiler_version', '$software_category', '$software_description', '$software_url', '$software_concant', '$software_blob');" | mysql -uroot -p1 lua;
done
mysql -uroot -p1 <<EOF
USE lua;
SELECT concant, COUNT(concant) FROM software GROUP BY concant HAVING COUNT(concant) > 1;
DELETE t1 FROM software t1 INNER JOIN software t2 WHERE t1.id < t2.id AND t1.concant = t2.concant;
SELECT * FROM software;
EOF
