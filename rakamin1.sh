# Variabel
path="D:\PROJEK\RAKAMIN\DE - Kalbe\pindah" #Menentukan variabel path 
name_of_directory="pindah" #Memberikan nama pada direktori
dir="$path/$name_of_directory" #Memmbuat variabel berupa path direktori 


# Cek apakah direktori sudah ada
if [ -d "$dir" ]; then
    echo "Ada direktori $name_of_directory!" 
else
    echo "Direktori $name_of_directory Tidak Ada!"
    exit 1
fi


