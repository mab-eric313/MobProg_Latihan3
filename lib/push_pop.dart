import 'package:flutter/material.dart';

class Init extends StatelessWidget {
  const Init({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BerandaPage(),
    );
  }
}

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 1: Push & Pop')),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Ini Halaman Beranda'),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TentangPage(),
                  ),
                );
              },
              child: const Text(
                'Ke Halaman Tentang'
              ),
            ),
          ],
        )
      )
    );
  }
}

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text(
            'Ini Halaman Tentang',
            style: TextStyle(
              color: Colors.black, 
              fontWeight: FontWeight(10),
              fontSize: 24,
              decoration: TextDecoration.none,
            )
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali ke Halaman Beranda'),
          ),
        ],
      ),
    );
  }
}


