username=$1
#username=ytyaru0
db_file=~/root/script/py/GitHub.Uploader.Pi3.Https.201802210700/res/db/GitHub.Accounts.sqlite3

sql="select Password from Accounts where Username='$username';"
this_dir=`dirname $0`
sql_file=${this_dir}/GetPassword.sql
echo $sql > $sql_file
password=`sqlite3 $db_file < $sql_file`
rm $sql_file

echo $password

