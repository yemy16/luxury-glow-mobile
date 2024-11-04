## 💥Luxury Glow Mobile (Yemima Clara Nainggolan // 2306245825) 💥
<details>
<summary> ✨ Tugas 7 ✨</summary>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**Stateless Widget** adalah widget yang bersifat statis, artinya tampilan atau behavior-nya tidak akan berubah setelah widget tersebut dirender. Stateless widget tidak memiliki "state" yang dapat diubah selama aplikasi berjalan. Contoh dari stateless widget adalah Text, Icon, dan Container. Biasanya, stateless widget digunakan untuk menampilkan informasi yang tidak berubah.

**Stateful Widget** adalah widget yang memiliki "state" atau kondisi yang dapat berubah selama aplikasi berjalan. Stateful widget membutuhkan dua class: satu untuk widget itu sendiri dan satu lagi untuk state yang terkait dengannya (biasanya menggunakan State<T>). Contoh dari stateful widget adalah Checkbox, TextField, dan Slider. Stateful widget digunakan ketika kita perlu merespons interaksi pengguna atau perubahan data dalam aplikasi.

Perbedaan dari keduanya:
| Aspek           | Stateless Widget                                                | Stateful Widget                                                 |
|-----------------|-----------------------------------------------------------------|------------------------------------------------------------------|
| **State**       | Tidak memiliki state yang bisa berubah                          | Memiliki state yang bisa berubah                                |
| **Penggunaan**  | Digunakan untuk UI statis yang tidak berubah                    | Digunakan untuk UI dinamis yang perlu perubahan tampilan        |
| **Reactivity**  | Diupdate hanya jika widget induk berubah atau build ulang       | Diupdate menggunakan `setState()`                               |
| **Contoh**      | Text, Icon, Image                                               | Checkbox, Switch, Form, Button yang mengubah tampilan           |



### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

**MaterialApp**
Fungsi: Menjadi root aplikasi yang menyediakan pengaturan dasar seperti tema, title, dan home. 

**ThemeData**
Fungsi: Menyediakan tema untuk aplikasi, termasuk skema warna dan gaya tampilan lainnya. Pada proyek ini, ThemeData mengatur skema warna utama dan sekunder untuk tampilan aplikasi.

**Scaffold**
Fungsi: Menyediakan struktur dasar halaman, termasuk AppBar dan body. Scaffold memudahkan pengelolaan layout halaman seperti menambahkan AppBar, body, dan elemen UI lainnya.

**AppBar**
Fungsi: Menyediakan header atau toolbar di bagian atas halaman. Dalam proyek ini, AppBar menampilkan judul aplikasi ("Luxury Glow") dengan teks putih dan background yang diambil dari tema aplikasi.

**Padding**
Fungsi: Memberikan ruang di sekitar widget, sehingga widget tidak menempel langsung pada batas kontainernya. Dalam proyek ini, Padding digunakan untuk memberi jarak di sekitar widget dalam Column.

**Column**
Fungsi: Menyusun widget secara vertikal (dari atas ke bawah). Column digunakan untuk menampilkan beberapa widget (misalnya, Row dan Center) dalam satu tata letak vertikal.

**Row**
Fungsi: Menyusun widget secara horizontal (dari kiri ke kanan). Row digunakan untuk menampilkan tiga InfoCard secara berdampingan (NPM, Name, Class).

**InfoCard (Custom Widget)**
Fungsi: Widget kustom yang menampilkan informasi berupa title dan content. Dalam proyek ini, InfoCard digunakan untuk menampilkan informasi NPM, nama, dan kelas pengguna.

**Card**
Fungsi: Memberikan tampilan kartu dengan bayangan dan border. Digunakan di dalam InfoCard untuk menampilkan informasi dengan tampilan lebih terorganisir.

**Text**
Fungsi: Menampilkan teks pada layar. Text digunakan untuk menampilkan title dan content dalam InfoCard, judul aplikasi di AppBar, dan pesan lainnya.

**SizedBox**
Fungsi: Menyediakan ruang kosong dengan ukuran tertentu. SizedBox digunakan untuk menambahkan jarak vertikal antara Row yang berisi InfoCard dan elemen lainnya.

**Center**
Fungsi: Menempatkan widget di tengah layout. Dalam proyek ini, Center digunakan untuk menempatkan elemen Column di tengah halaman.

**GridView.count**
Fungsi: Menampilkan widget dalam bentuk grid dengan jumlah kolom yang telah ditentukan. GridView.count digunakan untuk menampilkan ItemCard dalam bentuk grid dengan tiga kolom.

**ItemCard (Custom Widget)**
Fungsi: Widget kustom untuk menampilkan ikon dan teks pada setiap card. ItemCard berfungsi sebagai button yang dapat ditekan, menampilkan nama dan ikon yang ditentukan dalam ItemHomepage.

**Material**
Fungsi: Menyediakan background warna dan efek material design untuk widget. Dalam ItemCard, Material digunakan untuk memberikan warna background dan efek sudut melengkung pada card.

**InkWell**
Fungsi: Memberikan efek ripple ketika widget ditekan. Dalam proyek ini, InkWell digunakan pada ItemCard agar card memiliki interaksi yang responsif saat ditekan, menampilkan SnackBar.

**ScaffoldMessenger**
Fungsi: Menampilkan SnackBar di halaman Scaffold. ScaffoldMessenger digunakan untuk memunculkan pesan ketika ItemCard ditekan.

**SnackBar**
Fungsi: Menampilkan pesan notifikasi singkat di bagian bawah layar. Dalam proyek ini, SnackBar berfungsi untuk memberi feedback ketika pengguna menekan salah satu ItemCard.

**Icon**
Fungsi: Menampilkan ikon dari kumpulan ikon Material. Icon digunakan dalam ItemCard untuk menampilkan ikon yang sesuai dengan nama button (seperti Icons.search, Icons.add, dan Icons.logout).

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() di Flutter digunakan untuk memperbarui UI ketika ada perubahan pada data atau variabel yang memengaruhi tampilan, setState() memberi tahu Flutter bahwa ada perubahan state pada widget sehingga widget tersebut perlu dibangun ulang (rebuild) untuk menampilkan perubahan tersebut.

Variabel yang terdampak oleh setState()
Hanya variabel atau nilai yang berada dalam state dari widget Stateful tersebut yang akan terpengaruh oleh setState(). Ini berarti:
- Variabel yang dideklarasikan di dalam class State dari widget akan terpengaruh oleh setState().
- Variabel ini bisa berupa int, String, bool, List, Map, atau tipe data lain yang ada di dalam class State.

Jika variabel berada di luar class State atau dideklarasikan sebagai variabel const atau final tanpa perubahan, maka variabel tersebut tidak akan terpengaruh oleh setState().

### 4. Jelaskan perbedaan antara const dengan final.
| Aspek                          | `final`                                              | `const`                                                   |
|--------------------------------|------------------------------------------------------|-----------------------------------------------------------|
| **Penentuan Nilai**            | Ditetapkan sekali saat runtime                       | Ditetapkan sekali saat compile-time                       |
| **Immutable**                  | Iya (tidak bisa diubah setelah inisialisasi)         | Iya (tidak bisa diubah setelah inisialisasi)              |
| **Contoh Penggunaan**          | Nilai runtime, seperti `DateTime.now()` atau data API | Nilai konstan, seperti angka tetap atau widget statis     |
| **Penggunaan dengan Widget di Flutter** | Bisa digunakan pada widget yang dibuat dinamis | Cocok untuk widget statis (terutama untuk optimisasi)     |

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- Melakukan generate proyek flutter baru dengan nama luxury_glow
- Membuat file baru dengan nama menu.dart yang berisi class myhomepage dan class myhomepagestate serta melakukan import menu.dart pada main.dart
- Mengubah tema warna aplikasi yang memiliki tipe MaterialApp
- Mengubah widget halaman menu dari sebelumnya stateful menjadi stateless
- Membuat card yang berisi NPM, Nama, dan Kelas dengan mendeklarasikan variabel bertipe string serta membuat class baru InfoCard untuk card yang akan menampilkan informasi tersebut.
- Membuat button card dengan icon untuk button lihat daftar produk, tambah produk, dan logout pada list of ItemHomepage.
- Menampilkan snackbar ketik mengeklik button.
- Mengintegrasikan InfoCard dan ItemCard untuk Ditampilkan di MyHomePage

</details>