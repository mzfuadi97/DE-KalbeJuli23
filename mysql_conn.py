# Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan percobaan koneksi
conn = mysql.connector.connect(
    user='username',
    password='password',
    host='localhost',
    database='database_name'
)

#Membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    'INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)'
    'VALUES (?, ?, ?, ?, ?)'
)

values = ("John", "Doe", 24, "Male", 5000)

try:
    # Eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()
    print("Data berhasil dimasukkan!")
except Exception as e:
    # Rollback apabila ada issue
    conn.rollback()
    print("Error:", e)

# Menutup koneksi
conn.close()