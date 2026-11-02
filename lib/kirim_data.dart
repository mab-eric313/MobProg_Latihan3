import 'package:flutter/material.dart';

final items = {'Apel': 19_000, 'Mangga': 20_000, 'Pisang': 15_000};

class Init extends StatelessWidget {
  const Init({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SenderPage(),
    );
  }
}

class SenderPage extends StatelessWidget {
  const SenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 2: Kirim data')),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Data yang akan dikirim: $items'),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) { 
                      return ReceiverPage(
                        items: items
                      );
                    }
                  ),
                );
              }, 
              child: const Text('Kirim'),
            ),
          ]
        )
      ),
    );
  }
}

class ReceiverPage extends StatelessWidget {
  const ReceiverPage({
    super.key, 
    required this.items,
  });

  final Map<String, int> items;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text('Data yang diterima: $items',
            style: TextStyle(
              color: Colors.black, 
              fontWeight: FontWeight(20),
              fontSize: 16,
              decoration: TextDecoration.none,
            )
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const Text(
              'Kembali ke halaman Pengirim', 
            ),
          ),
        ],
      ),
    );
  }
}
