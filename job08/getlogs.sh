log_dir="/var/log"
utilisateur="remi"
nombre_connexions=$(grep "utilisateur" "$log_dir/auth.log")
current_datetime=$(date +"%d-%m-%Y-%H:%M")
filename="number_connection-$current_datetime"
 echo "nombre de connexion" | wc -1  > "$filename
tar -cvzf "/home/remi/shell-exe/job08/Backups/$filename.tar" "$filename"

 echo "Le nombre de connexion de utilisateur $utilisateur a été extrait et archivé dans $backup_dir/$filename.tar"
rm number_connection-$current_datetime
