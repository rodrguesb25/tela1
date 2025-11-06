import 'package:flutter/material.dart';

class PresenceScreen extends StatelessWidget {
  const PresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pagina Inicial'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint), label: 'Biometria'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/219/219969.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Voltar',
                          style: TextStyle(color: Colors.grey)),
                      Text('Bruno Silva ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Text(
                      'Administrador',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1234567890',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Divider(color: Colors.white54, height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Check in',
                                style: TextStyle(color: Colors.white70)),
                            Text('12:16:56 PM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Check out',
                                style: TextStyle(color: Colors.white70)),
                            Text('12:32:00 PM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Column(
                        children: [
                          Text('Distance from office',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 5),
                          Text('225.78m',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.blue[700]),
                      onPressed: () {},
                      child: const Text('Abrir no mapa'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Presence History',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('show all', style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 12),
              ...[
                {'in': '8:08 PM', 'out': '8:29 PM', 'date': 'Sunday, May 1, 2022'},
                {'in': '2:24 PM', 'out': '2:24 PM', 'date': 'Saturday, Apr 30, 2022'},
                {'in': '11:38 AM', 'out': '11:38 AM', 'date': 'Friday, Apr 29, 2022'},
              ].map((e) => Card(
                    margin: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Check in: ${e['in']}'),
                          Text('Check out: ${e['out']}'),
                        ],
                      ),
                      subtitle: Text(e['date']!),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: PresenceScreen()));
}