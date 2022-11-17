# Tugas 7

Muhammad Navis Raditya Riayatsyah (2106717291)

* Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget* dan jelaskan perbedaan dari keduanya.

  * *Stateless* *widget* berarti sebuah *widget* yang tidak akan bereaksi terhadap *user interaction*.
  * *Stateful widget* merupakan sebuah *widget* yang akan bereaksi terhadap *user interaction*.
* Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

  * Text; Bertujuan untuk menetapkan teks yang akan muncul pada aplikasi dengan *styling format* tertentu.
  * ElevatedButton; *Widget* yang digunakan untuk memfasilitasi *user interaction.*
* Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut?

  * Fungsi setState() berfungsi sebagai *method setter*. Dalam artian, fungsi tersebut akan *set* sebuah perubahan dari suatu variabel.
  * Pada program untuk Tugas 7 ini, setState() memengaruhi sebuah variabel, yaitu _counter.
* Jelaskan perbedaan antara const dengan final.

  * Const; *value* dari variabel harus diketahui pada waktu *compile*. Const akan memiliki *value* yang tetap setiap *runtime*. Const dapat diubah setelah program di-inisialisasi. (referensi: https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart).
  * Final; *value* dari variabel tidak harus diketahui pada waktu *compile*. Final tidak dapat diubah setelah program di-inisialisasi. (referensi: https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart).
* Jelaskan bagaimana caramu mengimplementasikan *checklist* di atas.

  * Tombol + menambah angka sebanyak satu satuan

    ![1668056263071](image/README/1668056263071.png)

    * Dengan menambahkan *widget* ElevatedButton sebagai *stateful widget* dan menambahkan kondisi apabila tombol ditekan maka akan dijalankan fungsi _incrementCounter().
  * Tombol - mengurangi angka sebanyak satu satuan. Apabila *counter* bernilai 0, maka tombol - tidak memiliki efek apapun pada *counter*

    ![1668056290212](image/README/1668056290212.png)

    * Dengan menambahkan *widget* ElevatedButton sebagai *stateful* *widget* dan menambahkan kondisi apabila tombol ditekan maka akan dijalankan fungsi _decrementCounter().
  * Apabila *counter* bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru

    ![1668056331763](image/README/1668056331763.png)

    * Dengan menambahkan kondisi dimana ketika variabel _counter tidak dapat dibagi dengan 2, maka akan menampilkan sebuah variabel *text* dengan tipe const yang memiliki parameter text('GANJIL') dan untuk memberikan warna biru.
  * Apabila *counter* bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah

    ![1668056344940](image/README/1668056344940.png)

    * Dengan menambahkan kondisi dimana ketika variabel _counter dapat dibagi dengan 2, maka akan menampilkan sebuah variabel *text* dengan tipe const yang memiliki parameter text('GENAP') dan untuk memberikan warna merah.
  * Angka 0 dianggap sebagai angka genap

    ![1668056384231](image/README/1668056384231.png)

    * Dengan membuat kondisi dimana ketika _counter dapat dibagi 2, maka menjadi genap. Dan menjadikan kondisi ganjil sebagai *else condition*.
  * [BONUS] Menyembunyikan/menghilangkan tombol - apabila *counter* bernilai 0
    ![1668056422373](image/README/1668056422373.png)

    * Membuat kondisi apabila _counter bernilai 0, maka tombol *decrement* tidak ditampilkan. Berkebalikan dengan kondisi *counter* bernilai >0.


# Tugas 8: Flutter Form

Nama : Muhammad Navis Raditya Riayatsyah

Kelas : PBP C

NPM : 2106717291

### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

`Navigator.push ()`: Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya. `Navigator.pushReplacement()` : Berpindah halaman, namun tidak dapat kembali ke halaman sebelumnya.

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

* TextFormField() : Widget yang bisa digunakan untuk menginput teks.
* DropdownButton() : Widget yang berfungsi sebagai opsi untuk dropdown.
* TextButton() : Widget yang berfungsi sebagai tombol.
* Card() : Widget untuk menampilkan card.

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

* onPressed = fungsi yang menjalankan fungsi saat pengguna menekan tombol.
* onChanged = fungsi yang menjalankan fungsi saat pengguna mengubah sesuatu hal.
* onTap = fungsi untuk menjalankan fungsi saat pengguna mengetuk widget.

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator adalah widget yang digunakan untuk mengatur rute pada aplikasi *flutter*. Navigator bertanggungjawab untuk menavigasi dari satu *page* ke *page*. Selain itu, navigator juga bisa meng-*handle* tumpukan navigasi. Cara memanggil widget ini adalah dengan menggunakan function push() atau pop().

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Menambahkan drawer menu pada app dengan menambahkan line sebagai berikut.

```dart
drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MyHomePage(title: 'counter_7')));
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TambahBudget()));
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const DataBudget())));
                },
              )
            ],
          ),
        ),
```

3. Membuat flle untuk form budget yaitu `TambahBudget.dart`.

```dart
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/DataBudget.dart';
import 'package:flutter/services.dart';

class Budget {
  String judul;
  String nominal;
  String jenis;

  Budget(this.judul, this.nominal, this.jenis);
}

class Tampil {
  static List<Budget> dataMap = <Budget>[];
}

class TambahBudget extends StatefulWidget {
  const TambahBudget({super.key});

  @override
  State<TambahBudget> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<TambahBudget> {
  final _formKey = GlobalKey<FormState>();
  final judulController = TextEditingController();
  final nominalController = TextEditingController();
  String jenis = "Pemasukan";
  List<String> listJenis = ["Pemasukan", "Pengeluaran"];

  void pushData(List<List> listData) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => const DataBudget()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'counter_7')),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TambahBudget()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataBudget()));
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: judulController,
                    decoration: InputDecoration(
                      hintText: "Contoh: Sate Pacil",
                      labelText: "Judul",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nominalController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      // ignore: prefer_const_constructors
                      prefix: Text("Rp "),
                      labelText: "Nominal",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Pilih Jenis'),
                  trailing: DropdownButton(
                    value: jenis,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: listJenis.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        jenis = newValue!;
                      });
                    },
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(400, 50),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Tampil.dataMap.add(
                      Budget(
                          judulController.text, nominalController.text, jenis),
                    );
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("Berhasil menambahkan!"),
                              Text("Judul: ${judulController.text}"),
                              Text("Nominal: ${nominalController.text}")
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```

4. Membuat flle untu form budget yaitu `DataBudget.dart`. Untuk menampilkan Budget yang sudah diinput.

```dart
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/TambahBudget.dart';

class DataBudget extends StatelessWidget {
  const DataBudget({super.key});

  static const String _title = 'Data Budget';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'counter_7')),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TambahBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataBudget()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(title: const Text(_title)),
        body: _DataBudgetState(),
      ),
    );
  }
}

class _DataBudgetState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> mywidgets = [];

    for (int x = 0; x < Tampil.dataMap.length; x++) {
      mywidgets.add(
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text("${Tampil.dataMap[x].judul} ()"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rp ${Tampil.dataMap[x].nominal}"),
                    Text(Tampil.dataMap[x].jenis),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Container(
        child: Column(children: mywidgets),
      ),
    );
  }
}


```
