// import 'package:pertama/form2.dart';
// import 'awal.dart';
// import 'form2.dart';
// import 'form2.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: LoginPage(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:pertama/DataBeritaModel.dart';
import 'package:pertama/DetailBerita.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> judul = [
    'PDIP dan Ganjar Pranowo Hanya Menunggu Waktu yang Tepat',
    'Eks Kapolri Dorong Polri Benahi Pelayanan Publik dari Tingkat Paling Rendah',
    'SELEBRITIS3 jam lalu Karyawan Rizky Billar Pamit, Leslar Entertainment Dibubarkan?',
    'Prakiraan Cuaca di Yogyakarta Hari Ini, 28 Oktober 2022: Berawan Sepanjang Hari',
    'WhatsApp Down, Warganet Berbondong-Bondong ke Telegram dan Michat',
    'Bola Ganjil: Cinta Drama Jadi Alasan Hadirnya Tendangan Penalti',
    'PDIP dan Ganjar Pranowo Hanya Menunggu Waktu yang Tepat',
    'Eks Kapolri Dorong Polri Benahi Pelayanan Publik dari Tingkat Paling Rendah',
    'Hasil Lengkap Liga Europa: Arsenal Tumbang, MU Menang, Roma Jaga Asa',
    'Prakiraan Cuaca di Yogyakarta Hari Ini, 28 Oktober 2022: Berawan Sepanjang Hari',
    'WhatsApp Down, Warganet Berbondong-Bondong ke Telegram dan Michat',
    'Bola Ganjil: Cinta Drama Jadi Alasan Hadirnya Tendangan Penalti'
  ];

  static List url = [
    'https://asset.kompas.com/crops/zh50o4XyPnHMqtHX6gbSixwf-C0=/0x2:1917x1280/177x117/data/photo/2022/10/26/6358ff0f51de0.jpg',
    'https://asset.kompas.com/crops/H7qtxHXI1x7vQfwTywnVF2b1Qug=/0x0:0x0/177x117/data/photo/2022/10/27/635a38681d0d2.jpg',
    'https://cdn1-production-images-kly.akamaized.net/vMMud6HsN9Qg54gIJwrkIzSPLHs=/200x112/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4193210/original/093997100_1665901417-5_Leslar_Entertainment.jpg',
    'https://asset.kompas.com/crops/e5Hr1kM1Dw7B_-40Nsbppz2z4mA=/25x12:4101x2729/177x117/data/photo/2022/03/23/623aa480b625e.jpg',
    'https://cdn1-production-images-kly.akamaized.net/zuvDPhQpyhtQV9kJEFDPBKxJNyg=/200x112/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3081002/original/085637200_1584614932-whatsapp-1789194.jpg',
    'https://cdn0-production-images-kly.akamaized.net/1Lx6g2ZppfjVB09lVkgIZ0GFFGk=/200x112/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4204542/original/024945200_1666783448-000_DV1422924.jpg',
    'https://asset.kompas.com/crops/zh50o4XyPnHMqtHX6gbSixwf-C0=/0x2:1917x1280/177x117/data/photo/2022/10/26/6358ff0f51de0.jpg',
    'https://asset.kompas.com/crops/H7qtxHXI1x7vQfwTywnVF2b1Qug=/0x0:0x0/177x117/data/photo/2022/10/27/635a38681d0d2.jpg',
    'https://asset.kompas.com/crops/Xl0cYyaTzPbo9kq6H__Hz1rsh7I=/41x0:578x358/177x117/data/photo/2022/10/28/635acceabb0d8.jpg',
    'https://asset.kompas.com/crops/e5Hr1kM1Dw7B_-40Nsbppz2z4mA=/25x12:4101x2729/177x117/data/photo/2022/03/23/623aa480b625e.jpg',
    'https://cdn1-production-images-kly.akamaized.net/zuvDPhQpyhtQV9kJEFDPBKxJNyg=/200x112/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3081002/original/085637200_1584614932-whatsapp-1789194.jpg',
    'https://cdn0-production-images-kly.akamaized.net/1Lx6g2ZppfjVB09lVkgIZ0GFFGk=/200x112/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4204542/original/024945200_1666783448-000_DV1422924.jpg'
  ];
  static List<String> deskripsi = [
    'SECARA elektoral, diakui atau tidak, Ganjar Pranowo adalah senjata andalan Partai Demokrasi Indonesia Perjuangan (PDIP) untuk menghadapi kandidat potensial sekelas Anies Baswedan dan Prabowo Subianto. Rasanya thesis ini sudah tidak perlu diperdebatkan lagi. \n\n\n\tDari survei-survei politik yang muncul sejak setahun belakangan, jika digeneralisasi, Ganjar Pranowo lebih sering berada di posisi teratas ketimbang Prabowo dan Anies. Apalagi hasil survei terbaru survei Litbang Kompas, yang menempatkan Ganjar Pranowo di posisi sangat kompetitif terhadap kandidat lain di satu sisi dan jauh di atas Puan Maharani di sisi lain. Karena itu, menurut hemat saya, bagi PDIP pilihan antara memilih Ganjar Pranowo atau Puan Maharani sebenarnya bukanlah sebuah opsi elektoral yang masuk akal, karena menyandingkan dua opsi yang tidak sepadan. Apalagi, sepanjang pengetahuan saya, PDIP adalah salah satu partai yang paling sensitif dengan hasil survei ilmiah. PDIP tidak sekadar beretorika dengan sikap tersebut alias PDIP telah membuktikan sendiri keberpihakannya kepada realitas politik yang ada yang direfleksikan oleh survei-survei politik terpercaya oleh lembaga survei bereputasi. Sebut saja, misalnya, saat Megawati Soekarnoputri dengan dewasa dan legowo memutuskan untuk tidak ikut berlaga di pemilihan tahun 2014 lalu. Keputusan tersebut bukan saja lahir dari kebijaksanaan dan kenegarawanan politik seorang Megawati, tapi juga lahir dari fleksibilitas PDIP dalam beradaptasi dengan realitas politik yang ada. \n\n\n\tTak bisa dipungkiri kala itu bahwa nama Joko Widodo sedang naik daun setelah berhasil memenangkan pertarungan politik di ibu kota negara. Semua hasil survei politik menempatkan Jokowi sebagai satu-satunya kader PDIP yang mampu menyaingi elektabiltas Prabowo Subianto. Memang terkesan kala itu bahwa PDIP membutuhkan waktu yang agak lama untuk mengakuinya. Pertama, boleh jadi memang terdapat dua aspirasi di internal PDIP, yakni antara kembali memajukan Megawati sebagai calon presiden atau menerima figur baru yang bukan dari trah Sukarno, tapi sedang naik daun. Kedua, sebagaimana saya meyakini, ada proses dan mekanisme yang harus dilalui oleh sebuah partai sebesar PDIP untuk sampai pada satu kesimpulan penting terkait siapa calon presiden resmi partai.',
    'JAKARTA, KOMPAS.com - Mantan Kapolri Jenderal (Purn) Bambang Hendarso Danuri meyakini masyarakat akan kembali mencintai Polri pada waktunya. Hal itu disampaikan Bambang Hendarso saat dirinya dan sejumlah mantan Kapolri lainnya menyambangi Mabes Polri. Bambang Hendarso lantas mengakui bahwa saat ini tingkat kepercayaan publik terhadap Polri sedang merosot. "Pada akhirnya, kecintaan masyarakat pada Polri pada waktunya akan timbul kembali. Saat ini memang menurun karena ada beberapa peristiwa," ujar Bambang saat ditemui di Mabes Polri, Jakarta Selatan, Kamis (27/10/2022). Baca juga: Eks Kapolri Dorong Polri Benahi Pelayanan Publik dari Tingkat Paling Rendah Bambang Hendarso, mewakili para Purnawirawan Polri lainnya, mendukung penuh apa yang Kapolri Jenderal Listyo Sigit Prabowo sedang lakukan demi meraih lagi kepercayaan publik. "Kita semua para purnawirawan dari pusat sampai daerah akan memberikan dukungan sepenuhnya," katanya. Selain itu, Bambang meminta masyarakat turut memberikan semangat untuk Polri yang sedang berbenah. Pasalnya, kata Bambang Hendarso, apa yang sedang Polri hadapi saat ini cukup berat. "Kita yakin dengan adanya kita para purnawirawan memberikan support dan dorongan yang begitu besar," ujar Bambang. Artikel ini telah tayang di Kompas.com dengan judul "Eks Kapolri Bambang Hendarso Danuri Yakin Cinta Masyarakat pada Polri Akan Bersemi Lagi", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06084171/eks-kapolri-bambang-hendarso-danuri-yakin-cinta-masyarakat-pada-polri-akan.',
    'Liputan6.com, Jakarta Lesti Kejora dan Rizky Billar kembali bersama setelah menghadapi kasus dugaan kekerasan dalam rumah tangga atau KDRT. Hubungan pasangan suami istri ini juga dikabarkan membaik. \n\n\nDi tengah meredanya pemberitaan soal kasus KDRT, salah satu karyawan Lesti dan Billar di Leslar Entertainment yang bernama Donny, seolah mengindikasikan sedang berpamitan.Enam+02:07VIDEO: Kuasa Hukum Nikita Mirzani Langsung Temui Jaksa Ajukan Penangguhan Penahanan"HATUR NUHUN SADAYANA❤️ Terimakasih juga untuk kalian semua yang sudah ikut menyaksikan Leslar Entertainment Tumbuh dan Berkembang," kata Donny di akun Instagramnya, Kamis (27/10/2022). Bersama keterangan itu, Donny yang diketahui berprofesi sebagai editor ini menyertakan foto dirinya sedang berkumpul bersama teman-teman di Leslar Entertainment.',
    'Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin Artikel ini telah tayang di Kompas.com dengan judul "Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin...", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06271141/saat-mantan-kapolri-ramai-ramai-turun-gunung-ke-mabes-polri-karena-prihatin?source=widgetML&engine=J',
    'SECARA elektoral, diakui atau tidak, Ganjar Pranowo adalah senjata andalan Partai Demokrasi Indonesia Perjuangan (PDIP) untuk menghadapi kandidat potensial sekelas Anies Baswedan dan Prabowo Subianto. Rasanya thesis ini sudah tidak perlu diperdebatkan lagi. \n\n\n\tDari survei-survei politik yang muncul sejak setahun belakangan, jika digeneralisasi, Ganjar Pranowo lebih sering berada di posisi teratas ketimbang Prabowo dan Anies. Apalagi hasil survei terbaru survei Litbang Kompas, yang menempatkan Ganjar Pranowo di posisi sangat kompetitif terhadap kandidat lain di satu sisi dan jauh di atas Puan Maharani di sisi lain. Karena itu, menurut hemat saya, bagi PDIP pilihan antara memilih Ganjar Pranowo atau Puan Maharani sebenarnya bukanlah sebuah opsi elektoral yang masuk akal, karena menyandingkan dua opsi yang tidak sepadan. Apalagi, sepanjang pengetahuan saya, PDIP adalah salah satu partai yang paling sensitif dengan hasil survei ilmiah. PDIP tidak sekadar beretorika dengan sikap tersebut alias PDIP telah membuktikan sendiri keberpihakannya kepada realitas politik yang ada yang direfleksikan oleh survei-survei politik terpercaya oleh lembaga survei bereputasi. Sebut saja, misalnya, saat Megawati Soekarnoputri dengan dewasa dan legowo memutuskan untuk tidak ikut berlaga di pemilihan tahun 2014 lalu. Keputusan tersebut bukan saja lahir dari kebijaksanaan dan kenegarawanan politik seorang Megawati, tapi juga lahir dari fleksibilitas PDIP dalam beradaptasi dengan realitas politik yang ada. \n\n\n\tTak bisa dipungkiri kala itu bahwa nama Joko Widodo sedang naik daun setelah berhasil memenangkan pertarungan politik di ibu kota negara. Semua hasil survei politik menempatkan Jokowi sebagai satu-satunya kader PDIP yang mampu menyaingi elektabiltas Prabowo Subianto. Memang terkesan kala itu bahwa PDIP membutuhkan waktu yang agak lama untuk mengakuinya. Pertama, boleh jadi memang terdapat dua aspirasi di internal PDIP, yakni antara kembali memajukan Megawati sebagai calon presiden atau menerima figur baru yang bukan dari trah Sukarno, tapi sedang naik daun. Kedua, sebagaimana saya meyakini, ada proses dan mekanisme yang harus dilalui oleh sebuah partai sebesar PDIP untuk sampai pada satu kesimpulan penting terkait siapa calon presiden resmi partai.',
    'JAKARTA, KOMPAS.com - Mantan Kapolri Jenderal (Purn) Bambang Hendarso Danuri meyakini masyarakat akan kembali mencintai Polri pada waktunya. Hal itu disampaikan Bambang Hendarso saat dirinya dan sejumlah mantan Kapolri lainnya menyambangi Mabes Polri. Bambang Hendarso lantas mengakui bahwa saat ini tingkat kepercayaan publik terhadap Polri sedang merosot. "Pada akhirnya, kecintaan masyarakat pada Polri pada waktunya akan timbul kembali. Saat ini memang menurun karena ada beberapa peristiwa," ujar Bambang saat ditemui di Mabes Polri, Jakarta Selatan, Kamis (27/10/2022). Baca juga: Eks Kapolri Dorong Polri Benahi Pelayanan Publik dari Tingkat Paling Rendah Bambang Hendarso, mewakili para Purnawirawan Polri lainnya, mendukung penuh apa yang Kapolri Jenderal Listyo Sigit Prabowo sedang lakukan demi meraih lagi kepercayaan publik. "Kita semua para purnawirawan dari pusat sampai daerah akan memberikan dukungan sepenuhnya," katanya. Selain itu, Bambang meminta masyarakat turut memberikan semangat untuk Polri yang sedang berbenah. Pasalnya, kata Bambang Hendarso, apa yang sedang Polri hadapi saat ini cukup berat. "Kita yakin dengan adanya kita para purnawirawan memberikan support dan dorongan yang begitu besar," ujar Bambang. Artikel ini telah tayang di Kompas.com dengan judul "Eks Kapolri Bambang Hendarso Danuri Yakin Cinta Masyarakat pada Polri Akan Bersemi Lagi", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06084171/eks-kapolri-bambang-hendarso-danuri-yakin-cinta-masyarakat-pada-polri-akan.',
    'Liputan6.com, Jakarta Lesti Kejora dan Rizky Billar kembali bersama setelah menghadapi kasus dugaan kekerasan dalam rumah tangga atau KDRT. Hubungan pasangan suami istri ini juga dikabarkan membaik. \n\n\nDi tengah meredanya pemberitaan soal kasus KDRT, salah satu karyawan Lesti dan Billar di Leslar Entertainment yang bernama Donny, seolah mengindikasikan sedang berpamitan.Enam+02:07VIDEO: Kuasa Hukum Nikita Mirzani Langsung Temui Jaksa Ajukan Penangguhan Penahanan"HATUR NUHUN SADAYANA❤️ Terimakasih juga untuk kalian semua yang sudah ikut menyaksikan Leslar Entertainment Tumbuh dan Berkembang," kata Donny di akun Instagramnya, Kamis (27/10/2022). Bersama keterangan itu, Donny yang diketahui berprofesi sebagai editor ini menyertakan foto dirinya sedang berkumpul bersama teman-teman di Leslar Entertainment.',
    'Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin Artikel ini telah tayang di Kompas.com dengan judul "Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin...", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06271141/saat-mantan-kapolri-ramai-ramai-turun-gunung-ke-mabes-polri-karena-prihatin?source=widgetML&engine=J',
    'SECARA elektoral, diakui atau tidak, Ganjar Pranowo adalah senjata andalan Partai Demokrasi Indonesia Perjuangan (PDIP) untuk menghadapi kandidat potensial sekelas Anies Baswedan dan Prabowo Subianto. Rasanya thesis ini sudah tidak perlu diperdebatkan lagi. \n\n\n\tDari survei-survei politik yang muncul sejak setahun belakangan, jika digeneralisasi, Ganjar Pranowo lebih sering berada di posisi teratas ketimbang Prabowo dan Anies. Apalagi hasil survei terbaru survei Litbang Kompas, yang menempatkan Ganjar Pranowo di posisi sangat kompetitif terhadap kandidat lain di satu sisi dan jauh di atas Puan Maharani di sisi lain. Karena itu, menurut hemat saya, bagi PDIP pilihan antara memilih Ganjar Pranowo atau Puan Maharani sebenarnya bukanlah sebuah opsi elektoral yang masuk akal, karena menyandingkan dua opsi yang tidak sepadan. Apalagi, sepanjang pengetahuan saya, PDIP adalah salah satu partai yang paling sensitif dengan hasil survei ilmiah. PDIP tidak sekadar beretorika dengan sikap tersebut alias PDIP telah membuktikan sendiri keberpihakannya kepada realitas politik yang ada yang direfleksikan oleh survei-survei politik terpercaya oleh lembaga survei bereputasi. Sebut saja, misalnya, saat Megawati Soekarnoputri dengan dewasa dan legowo memutuskan untuk tidak ikut berlaga di pemilihan tahun 2014 lalu. Keputusan tersebut bukan saja lahir dari kebijaksanaan dan kenegarawanan politik seorang Megawati, tapi juga lahir dari fleksibilitas PDIP dalam beradaptasi dengan realitas politik yang ada. \n\n\n\tTak bisa dipungkiri kala itu bahwa nama Joko Widodo sedang naik daun setelah berhasil memenangkan pertarungan politik di ibu kota negara. Semua hasil survei politik menempatkan Jokowi sebagai satu-satunya kader PDIP yang mampu menyaingi elektabiltas Prabowo Subianto. Memang terkesan kala itu bahwa PDIP membutuhkan waktu yang agak lama untuk mengakuinya. Pertama, boleh jadi memang terdapat dua aspirasi di internal PDIP, yakni antara kembali memajukan Megawati sebagai calon presiden atau menerima figur baru yang bukan dari trah Sukarno, tapi sedang naik daun. Kedua, sebagaimana saya meyakini, ada proses dan mekanisme yang harus dilalui oleh sebuah partai sebesar PDIP untuk sampai pada satu kesimpulan penting terkait siapa calon presiden resmi partai.',
    'JAKARTA, KOMPAS.com - Mantan Kapolri Jenderal (Purn) Bambang Hendarso Danuri meyakini masyarakat akan kembali mencintai Polri pada waktunya. Hal itu disampaikan Bambang Hendarso saat dirinya dan sejumlah mantan Kapolri lainnya menyambangi Mabes Polri. Bambang Hendarso lantas mengakui bahwa saat ini tingkat kepercayaan publik terhadap Polri sedang merosot. "Pada akhirnya, kecintaan masyarakat pada Polri pada waktunya akan timbul kembali. Saat ini memang menurun karena ada beberapa peristiwa," ujar Bambang saat ditemui di Mabes Polri, Jakarta Selatan, Kamis (27/10/2022). Baca juga: Eks Kapolri Dorong Polri Benahi Pelayanan Publik dari Tingkat Paling Rendah Bambang Hendarso, mewakili para Purnawirawan Polri lainnya, mendukung penuh apa yang Kapolri Jenderal Listyo Sigit Prabowo sedang lakukan demi meraih lagi kepercayaan publik. "Kita semua para purnawirawan dari pusat sampai daerah akan memberikan dukungan sepenuhnya," katanya. Selain itu, Bambang meminta masyarakat turut memberikan semangat untuk Polri yang sedang berbenah. Pasalnya, kata Bambang Hendarso, apa yang sedang Polri hadapi saat ini cukup berat. "Kita yakin dengan adanya kita para purnawirawan memberikan support dan dorongan yang begitu besar," ujar Bambang. Artikel ini telah tayang di Kompas.com dengan judul "Eks Kapolri Bambang Hendarso Danuri Yakin Cinta Masyarakat pada Polri Akan Bersemi Lagi", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06084171/eks-kapolri-bambang-hendarso-danuri-yakin-cinta-masyarakat-pada-polri-akan.',
    'Liputan6.com, Jakarta Lesti Kejora dan Rizky Billar kembali bersama setelah menghadapi kasus dugaan kekerasan dalam rumah tangga atau KDRT. Hubungan pasangan suami istri ini juga dikabarkan membaik. \n\n\nDi tengah meredanya pemberitaan soal kasus KDRT, salah satu karyawan Lesti dan Billar di Leslar Entertainment yang bernama Donny, seolah mengindikasikan sedang berpamitan.Enam+02:07VIDEO: Kuasa Hukum Nikita Mirzani Langsung Temui Jaksa Ajukan Penangguhan Penahanan"HATUR NUHUN SADAYANA❤️ Terimakasih juga untuk kalian semua yang sudah ikut menyaksikan Leslar Entertainment Tumbuh dan Berkembang," kata Donny di akun Instagramnya, Kamis (27/10/2022). Bersama keterangan itu, Donny yang diketahui berprofesi sebagai editor ini menyertakan foto dirinya sedang berkumpul bersama teman-teman di Leslar Entertainment.',
    'Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin Artikel ini telah tayang di Kompas.com dengan judul "Saat Mantan Kapolri Ramai-ramai "Turun Gunung" ke Mabes Polri karena Prihatin...", Klik untuk baca: https://nasional.kompas.com/read/2022/10/28/06271141/saat-mantan-kapolri-ramai-ramai-turun-gunung-ke-mabes-polri-karena-prihatin?source=widgetML&engine=J'
  ];
  static List<String> tanggal = [
    '2022-10-09 | Penulis : Juleha',
    '2022-10-03 | Penulis : Andrian Hermawan',
    '2021-08-02 | Penulis : Sutijah',
    '2022-10-09 | Penulis : Fadli P',
    '2020-11-09 | Penulis : Puan Maharani',
    '2011-07-06 | Penulis : Joko suganda',
    '2022-09-23 | Penulis : Putri Ayu',
    '2022-12-13 | Penulis : Arif Saepuloh',
    '2022-05-25 | Penulis : Maryam',
    '2022-03-29 | Penulis : Juleha',
    '2022-03-19 | Penulis : Asep Sutisna',
    '2022-12-04 | Penulis : Juleha'
  ];
  final List<DataBeritaModel> DataBerita = List.generate(
      judul.length,
      (index) => DataBeritaModel('${judul[index]}', '${url[index]}',
          '${deskripsi[index]}', '${tanggal[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Berita Hari ini'),
        ),
        body: ListView.builder(
            itemCount: DataBerita.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(DataBerita[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(DataBerita[index].ImageUrl),
                  ),
                  subtitle: Text(DataBerita[index].date),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailBerita(
                              dataBeritaModel: DataBerita[index],
                            )));
                  },
                ),
              );
            }));
  }
}




























// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Belajar Flutter'),
//         leading: const Icon(Icons.account_tree_outlined),
//         backgroundColor: Colors.red,
//       ),
//     );
//   }
// }