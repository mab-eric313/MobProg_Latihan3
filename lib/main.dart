import 'package:flutter/material.dart';
import 'push_pop.dart' as push_pop;
import 'kirim_data.dart' as kirim_data;
import 'named_routes.dart' as named_routes;
import 'bottom_navigation_bar.dart' as bottom_navigation_bar;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Menu(),
  ));
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MyMenuState();
}

class _MyMenuState extends State<Menu> {
  String? _selectedItem;

  final List<String> _items = [
    'Push & Pop', 'Kirim data', 'Named Routes', 'BottomNavigationBar'
  ];

  Widget _buildSelectedPage() {
    switch (_selectedItem) {
      case 'Push & Pop': return const push_pop.Init();
      case 'Kirim data': return const kirim_data.Init();
      case 'Named Routes': return const named_routes.Init();
      case 'BottomNavigationBar': return const bottom_navigation_bar.Init();
      default: return const Center(child: Text('Silahkan Pilih Halaman'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton<String>(
            hint: const Text('Pilih halaman'),
            value: _selectedItem,
            items: _items.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
          ),
          Expanded(
            child: _buildSelectedPage(),
          ),
        ],
      ),
    );
  }
}
