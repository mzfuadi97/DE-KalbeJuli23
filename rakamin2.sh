# Variabel
path="D:\PROJEK\RAKAMIN\DE - Kalbe\pindah" #Menentukan variabel path 
name_of_directory="pindah" #Memberikan nama pada direktori
dir="$path/$name_of_directory" #Memmbuat variabel berupa path direktori 
filename_csv="KalbeSales.csv" #File target
source_dir="d:/PROJEK/RAKAMIN/DE - Kalbe" #Source file target

# Cek apakah direktori sudah ada
if [ -d "$dir" ]; then
    echo "Ada direktori $name_of_directory!"
    cp "$source_dir/$filename_csv" "$dir" #Jika ada maka dilakukan duplikasi data ke variabel dir
    echo "File Pindah Berhasil"
else
    echo "Direktori $name_of_directory Tidak Ada!"
    mkdir "$dir" #Jika tidak ada maka membuat direktori baru, dari variabel yang sudah ditentukan
    exit 1
fi


