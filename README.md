## 💥Luxury Glow Mobile 💥
## Yemima Clara Nainggolan // 2306245825 // PBP B 
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

<details>
<summary> ✨ Tugas 8 ✨</summary>

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

**Kegunaan const di Flutter**
- Meningkatkan Efisiensi: Dengan menggunakan const, Flutter dapat membuat objek hanya sekali di memori, lalu menggunakan objek yang sama berulang kali di berbagai tempat di dalam aplikasi tanpa perlu membuat ulang.
- Mengurangi Rebuild: const membantu mengurangi jumlah widget yang di-rebuild saat UI berubah, karena Flutter akan tahu bahwa widget tersebut tidak akan berubah.
- Optimasi Memori: Karena objek const hanya dibuat sekali, ini menghemat memori dan mengurangi beban garbage collector.

**Keuntungan Menggunakan const**
- Kinerja yang Lebih Baik: Karena const memastikan bahwa objek hanya dibuat sekali di memori, ini meningkatkan kinerja aplikasi, terutama pada widget yang sering di-render ulang.
- Keamanan dari Perubahan: const memastikan objek tidak bisa dimodifikasi setelah dibuat, membantu mencegah perubahan tidak sengaja pada data.
- Optimasi oleh Flutter: Flutter menggunakan const untuk membuat aplikasi lebih efisien dengan cara mencegah pembuatan ulang objek yang tidak perlu.

**Kapan Menggunakan const**
- Menggunakan const pada widget dan variabel yang tidak akan berubah selama aplikasi berjalan, seperti:
    - Teks atau string statis (const Text('Hello')).
    - Warna tetap (const Color(0xFF42A5F5)).
    - Elemen UI yang tidak bergantung pada variabel dinamis.
- Menggunakan const pada Padding, Margin, atau Container jika nilai yang diberikan bersifat statis.

**Kapan Tidak Menggunakan const**
- Stateful Widgets: Widget yang perlu diperbarui atau berubah berdasarkan state tidak perlu menggunakan const, karena widget ini perlu di-rebuild secara dinamis.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
**Perbedaan Utama Column dan Row**
Column:
- Menyusun elemen secara vertikal (dari atas ke bawah).
- Arah utama (mainAxis) adalah vertikal.
- Arah silang (crossAxis) adalah horizontal.

Row:
- Menyusun elemen secara horizontal (dari kiri ke kanan).
- Arah utama (mainAxis) adalah horizontal.
- Arah silang (crossAxis) adalah vertikal.

**Perbandingan Penggunaan**
- Menggunakan Column ketika Anda ingin menyusun widget secara vertikal, seperti dalam daftar, formulir, atau tata letak satu kolom.
- Menggunakan Row ketika Anda ingin menyusun widget secara horizontal, seperti dalam navbar, toolbar, atau tata letak ikon di satu baris.

**Contoh implementasi column:** 
```
class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Item 1', style: TextStyle(fontSize: 24)),
          Text('Item 2', style: TextStyle(fontSize: 24)),
          Text('Item 3', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
```
Dalam contoh di atas:
- mainAxisAlignment diatur ke MainAxisAlignment.center, sehingga elemen-elemen akan berada di tengah secara vertikal.
- crossAxisAlignment diatur ke CrossAxisAlignment.start, sehingga elemen-elemen akan berada di bagian kiri layar secara horizontal.

**Contoh implementasi Row :**
```
class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Example')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.star, size: 50),
          Icon(Icons.favorite, size: 50),
          Icon(Icons.thumb_up, size: 50),
        ],
      ),
    );
  }
}
```
Dalam contoh di atas:
- mainAxisAlignment diatur ke MainAxisAlignment.spaceAround, sehingga ada jarak yang sama antara setiap ikon di sepanjang arah utama (horizontal).
- crossAxisAlignment diatur ke CrossAxisAlignment.center, sehingga ikon-ikon berada di tengah secara vertikal.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**
**Elemen Input yang Digunakan**
1. TextFormField:
- Name: Input teks untuk nama produk, di mana pengguna dapat memasukkan teks maksimal 5 kata.
- Price: Input angka untuk harga produk, dengan validasi untuk memastikan input berupa angka positif.
- Description: Input teks untuk deskripsi produk, di mana pengguna dapat memasukkan teks maksimal 30 kata.
-  Shade : Input teks untuk produk, i mana pengguna dapat memasukkan teks maksimal 5 kata.
- Stick quantity : Input angka untuk jumlah stock produk, dengan validasi untuk memastikan input berupa angka positif.
2. Button:
Save Button: Untuk menyimpan data dari form dan memunculkan hasil input di pop-up dialog.

**Elemen Input Flutter Lain yang Tidak Digunakan**
Berikut adalah beberapa elemen input lain yang disediakan oleh Flutter namun tidak digunakan dalam tugas ini:
1. Checkbox:
Digunakan untuk pilihan boolean yang memungkinkan pengguna menandai (check) atau menghilangkan tanda (uncheck) pada pilihan tertentu. Biasanya digunakan untuk konfirmasi atau pengaturan, seperti "Ingat Saya" di halaman login.

2. Radio Button:
Digunakan untuk pilihan tunggal dari beberapa opsi. Radio button cocok untuk memilih satu opsi dari sekelompok pilihan, seperti memilih kategori atau status produk.

3. Switch:
Mirip dengan Checkbox, tetapi dalam bentuk toggle switch. Biasanya digunakan untuk pengaturan yang dapat diaktifkan atau dinonaktifkan, seperti "Aktifkan Notifikasi".

4. Slider:
Digunakan untuk memilih nilai dari rentang angka dengan menggeser slider. Biasanya digunakan untuk input angka dalam rentang tertentu, misalnya mengatur tingkat volume atau memilih harga dalam kisaran tertentu.

5. DatePicker:
Digunakan untuk memilih tanggal. Berguna untuk input yang memerlukan data tanggal, seperti tanggal pembuatan produk atau tanggal kedaluwarsa.

6. TimePicker:
Digunakan untuk memilih waktu. Biasanya digunakan saat input memerlukan data waktu, seperti waktu buka atau tutup toko.

Alasan tidak menggunakan elemen input tersebut karena elemen-elemen input seperti Checkbox, Radio Button, Switch, Slider, DatePicker, dan TimePicker tidak digunakan dalam tugas ini karena halaman form hanya memerlukan input teks dan angka yang sederhana. 

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
**Langkah-langkah Mengatur Tema di Flutter**
- Menggunakan ThemeData di MaterialApp: Pada widget MaterialApp, menggunakan properti theme untuk menentukan ThemeData. Di dalam ThemeData, bisa mengatur elemen seperti warna utama (primary color), warna sekunder (accent color), gaya teks, dan banyak lagi.
- Menggunakan ColorScheme: ColorScheme adalah cara yang lebih terstruktur untuk mendefinisikan warna di seluruh aplikasi, seperti warna utama (primary), warna sekunder (secondary), warna latar belakang (background), dan sebagainya.
- Menentukan Gaya Teks dan Warna Tombol: Bisa juga menyesuaikan gaya teks (textTheme) dan warna tombol (buttonTheme) di dalam ThemeData.

Ya, pada aplikasi yang saya buat, saya telah mengimplementasikan tema dengan cara menggunakan ThemeData dan ColorScheme. Tema ini membuat aplikasi lebih konsisten, karena semua widget yang menggunakan primary atau secondary color akan secara otomatis mengambil warna ungu yang sudah ditentukan dalam tema, dan saya tidak perlu mengatur warna setiap kali membuat widget baru.

**Implementasi Tema di Aplikasi Luxury Glow**
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxury Glow',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepPurple,     // Warna utama ungu
          secondary: Colors.deepPurple[400],   // Warna sekunder ungu
        ),
      ),
      home: MyHomePage(),
    );
  }
}
```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- Navigasi Menggunakan Navigator dan MaterialPageRoute
Metode ini digunakan untuk berpindah halaman secara langsung dari tombol atau elemen interaktif lainnya.
Contoh implementasi pada aplikasi:
Ketika tombol Tambah Produk ditekan, aplikasi menggunakan Navigator.push untuk berpindah dari halaman utama (MyHomePage) ke halaman form tambah produk (ProductEntryFormPage).
```
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
  );
}
```

- Navigasi Menggunakan Drawer
Drawer digunakan sebagai navigasi global yang memungkinkan pengguna berpindah ke halaman utama atau halaman tambah produk dengan cara yang lebih terstruktur.
Contoh implementasi:
Drawer diimplementasikan dalam file left_drawer.dart dan disertakan dalam halaman utama (MyHomePage) serta halaman lain yang relevan.
Navigasi dilakukan menggunakan Navigator.pushReplacement untuk mengganti halaman aktif di stack dengan halaman baru, sehingga pengguna tidak kembali ke halaman sebelumnya saat menekan tombol Back.
```
ListTile(
  leading: const Icon(Icons.home),
  title: const Text('Halaman Utama'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  },
),
ListTile(
  leading: const Icon(Icons.add),
  title: const Text('Tambah Produk'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
    );
  },
),
```

Pada form ProductEntryFormPage, state dikelola secara lokal menggunakan StatefulWidget untuk memvalidasi input pengguna dan menampilkan data di pop-up (AlertDialog).
Hal ini memastikan pengguna mendapatkan feedback langsung setelah navigasi ke halaman tertentu.

</details>