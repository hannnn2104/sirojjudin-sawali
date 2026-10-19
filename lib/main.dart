import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const Color forest = Color(0xff203D32);
const Color moss = Color(0xff58765A);
const Color cream = Color(0xffF4F0E5);
const Color sand = Color(0xffE6D9BD);
const Color ink = Color(0xff29352D);
const Color muted = Color(0xff68766B);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gunung Panderman',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: cream,
        colorScheme: ColorScheme.fromSeed(seedColor: forest),
      ),
      home: PandermanPage(),
    );
  }
}

class PandermanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        backgroundColor: cream,
        foregroundColor: forest,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.terrain_rounded, size: 27),
            SizedBox(width: 9),
            Text(
              'PANDERMAN',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.landscape_rounded, color: moss, size: 29),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/panderman2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.82),
              BlendMode.lighten,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HERO SECTION
              Padding(
                padding: EdgeInsets.fromLTRB(18, 8, 18, 22),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Stack(
                    children: [
                      Image.asset(
                        'asset/panderman.jpg',
                        width: double.infinity,
                        height: 340,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 340,
                            width: double.infinity,
                            color: moss,
                            child: Icon(
                              Icons.landscape_rounded,
                              size: 90,
                              color: Colors.white70,
                            ),
                          );
                        },
                      ),
                      Container(
                        height: 340,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.78),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 18,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: cream.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'WISATA ALAM • JAWA TIMUR',
                            style: TextStyle(
                              color: forest,
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        right: 23,
                        bottom: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jelajahi\nGunung Panderman',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 31,
                                height: 1.08,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Melangkah lebih dekat dengan alam.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // INTRODUCTION
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mengenal Panderman',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: forest,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Gunung Panderman merupakan salah satu tujuan pendakian yang berada di kawasan Kota Batu, Jawa Timur. Dari kawasan pegunungan ini, pengunjung dapat menikmati suasana alam, udara yang sejuk, serta pemandangan wilayah Batu dari ketinggian. Jalur pendakian menjadi kesempatan untuk melatih ketahanan diri sekaligus menikmati keindahan alam. Sebelum berangkat, pastikan memeriksa cuaca, mengikuti arahan petugas, dan membawa perlengkapan yang sesuai.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.75,
                        color: muted,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              // INFORMATION CARDS
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: InfoCard(
                        icon: Icons.location_city_rounded,
                        title: 'Wilayah',
                        value: 'Kota Batu',
                        color: Color(0xffDCE6D7),
                        iconColor: forest,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: InfoCard(
                        icon: Icons.forest_rounded,
                        title: 'Suasana',
                        value: 'Sejuk & Hijau',
                        color: sand,
                        iconColor: Color(0xff805D36),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // ACTIVITIES
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 28,
                      decoration: BoxDecoration(
                        color: moss,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Aktivitas Menarik',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: forest,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              ActivityItem(
                icon: Icons.hiking_rounded,
                title: 'Mendaki Gunung',
                subtitle:
                    'Nikmati perjalanan dan suasana alam di sepanjang jalur.',
                color: Color(0xffDCE6D7),
              ),
              ActivityItem(
                icon: Icons.photo_camera_rounded,
                title: 'Berburu Foto',
                subtitle:
                    'Abadikan pemandangan pegunungan dan momen perjalanan.',
                color: Color(0xffF0E1C8),
              ),
              ActivityItem(
                icon: Icons.groups_rounded,
                title: 'Petualangan Bersama',
                subtitle:
                    'Jaga kekompakan dan saling membantu selama pendakian.',
                color: Color(0xffE4E0EF),
              ),

              // PREPARATION PANEL
              Padding(
                padding: EdgeInsets.all(18),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(21),
                  decoration: BoxDecoration(
                    color: forest,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.backpack_rounded,
                            color: Color(0xffD9C59F),
                            size: 29,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Persiapan Sebelum Mendaki',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      PrepRow(text: 'Periksa cuaca dan kondisi jalur'),
                      PrepRow(text: 'Bawa air minum dan makanan secukupnya'),
                      PrepRow(
                          text: 'Gunakan alas kaki dan pakaian yang sesuai'),
                      PrepRow(text: 'Ikuti aturan serta arahan petugas'),
                      PrepRow(text: 'Jangan meninggalkan sampah di gunung'),
                    ],
                  ),
                ),
              ),

              // LOCATION PANEL
              Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Color(0xffE3E9DD),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Color(0xffD1DCCB)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: forest,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                      SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi Destinasi',
                              style: TextStyle(
                                color: muted,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Kota Batu, Jawa Timur',
                              style: TextStyle(
                                color: forest,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Pastikan mengecek akses dan ketentuan pendakian terbaru.',
                              style: TextStyle(
                                color: muted,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // QUOTE
              Padding(
                padding: EdgeInsets.fromLTRB(25, 2, 25, 25),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.park_rounded,
                        size: 36,
                        color: moss,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '"Jaga alam, nikmati perjalanan."',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: forest,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        'EXPLORE • RESPECT • PRESERVE',
                        style: TextStyle(
                          fontSize: 10,
                          letterSpacing: 1.7,
                          fontWeight: FontWeight.w900,
                          color: moss,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // FOOTER
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(22),
                color: Color(0xffE3E9DD),
                child: Column(
                  children: [
                    Text(
                      'PANDERMAN ADVENTURE',
                      style: TextStyle(
                        color: forest,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.8,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Created by Sirojjudin Sawali',
                      style: TextStyle(
                        fontSize: 12,
                        color: muted,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;
  final Color iconColor;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 29),
          SizedBox(height: 17),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: ink.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: forest,
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 12),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
            BoxShadow(
              color: forest.withOpacity(0.05),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, color: forest, size: 25),
            ),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: forest,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.4,
                      color: muted,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: moss),
          ],
        ),
      ),
    );
  }
}

class PrepRow extends StatelessWidget {
  final String text;

  const PrepRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle_rounded,
            color: Color(0xffD9C59F),
            size: 19,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.92),
                fontSize: 13,
                height: 1.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
