import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Argopuro',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Probolinggo, Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Argopuro adalah salah satu gunung tertinggi di Jawa Timur dengan ketinggian 3.088 mdpl. Di puncaknya terdapat Danau Taman Hidup, sebuah danau cantik yang dikelilingi padang savana dan hutan lebat. Tempat ini menyimpan keindahan alam yang luar biasa sekaligus nilai spiritual yang kuat, karena dipercaya sebagai tempat bersemayamnya Dewi Rengganis dalam legenda Jawa. Jalur pendakian Argopuro dikenal sebagai salah satu jalur terpanjang di Pulau Jawa yang membutuhkan waktu 3-5 hari perjalanan, menjadikannya pengalaman tak terlupakan yang memadukan petualangan dan ketenangan jiwa bagi para pecinta alam.'
        '\nAdinda Luluk Hanifah - 244107060137',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Adinda Luluk Hanifah - 244107060137',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/argopuro.webp',
              width:  double.infinity,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}