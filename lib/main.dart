
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F0E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF174A3B),
        title: Text(
          'Profil Mahasiswa',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Color(0xFF174A3B),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/image/foto_iqbal.jpeg',
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Muhammad Iqbal Ichsani',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NPM: 25670035',
                    style: TextStyle(
                      color: Color(0xFFB8D8C0),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFB8D8C0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'INFORMATIKA',
                      style: TextStyle(
                        color: Color(0xFF174A3B),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Color(0xFFB8D8C0)),
                  SizedBox(height: 15),
                  Text(
                    'Belajar, berkembang, dan berkarya '
                    'bersama teknologi.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Profil',
                style: TextStyle(
                  color: Color(0xFF174A3B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 15),

            tombolProfil(
              context,
              Icons.person_outline,
              'Tentang Saya',
              TentangSaya(),
            ),
            tombolProfil(
              context,
              Icons.school_outlined,
              'Pendidikan',
              Pendidikan(),
            ),
            tombolProfil(
              context,
              Icons.code,
              'Keterampilan',
              Keterampilan(),
            ),
            tombolProfil(
              context,
              Icons.contact_mail_outlined,
              'Kontak',
              Kontak(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tombolProfil(
  BuildContext context,
  IconData ikon,
  String judul,
  Widget halaman,
) {
  return Container(
    margin: EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFB8D8C0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          ikon,
          color: Color(0xFF174A3B),
        ),
      ),
      title: Text(
        judul,
        style: TextStyle(
          color: Color(0xFF174A3B),
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Color(0xFF174A3B),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => halaman,
          ),
        );
      },
    ),
  );
}

class TentangSaya extends StatelessWidget {
  const TentangSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return halamanProfil(
      context,
      'Tentang Saya',
      'Saya adalah mahasiswa Informatika '
          'yang tertarik dengan dunia teknologi. '
          'Saya senang mempelajari hal baru '
          'dan mengembangkan kemampuan.',
      Icons.person,
    );
  }
}

class Pendidikan extends StatelessWidget {
  const Pendidikan({super.key});

  @override
  Widget build(BuildContext context) {
    return halamanProfil(
      context,
      'Pendidikan',
      'Universitas: Universitas Persatuan Guru Republik Indonesia\n\n'
          'Program Studi: Informatika\n\n'
          'Semester: 3\n\n'
          'Kelas: 3A',
      Icons.school,
    );
  }
}

class Keterampilan extends StatelessWidget {
  const Keterampilan({super.key});

  @override
  Widget build(BuildContext context) {
    return halamanProfil(
      context,
      'Keterampilan',
      'Dasar Pemrograman\n\n'
          'Flutter\n\n'
          'Basis Data\n\n'
          'Kerja Sama Tim',
      Icons.code,
    );
  }
}

class Kontak extends StatelessWidget {
  const Kontak({super.key});

  @override
  Widget build(BuildContext context) {
    return halamanProfil(
      context,
      'Kontak',
      'Email: muhammadiqbalinsani@gmail.com\n\n'
          'Telepon: 081215519930\n\n'
          'Lokasi: Kendal, Jawa Tengah, Indonesia',
      Icons.contact_mail,
    );
  }
}

Widget halamanProfil(
  BuildContext context,
  String judul,
  String isi,
  IconData ikon
) {
  return Scaffold(
    backgroundColor: Color(0xFFF3F0E5),
    appBar: AppBar(
      backgroundColor: Color(0xFF174A3B),
      title: Text(
        judul,
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: Color(0xFF174A3B),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFB8D8C0),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  ikon,
                  size: 55,
                  color: Color(0xFF174A3B),
                ),
              ),
              SizedBox(height: 20),
              Text(
                judul,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xFFB8D8C0)),
              SizedBox(height: 15),
              Text(
                isi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.7,
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
