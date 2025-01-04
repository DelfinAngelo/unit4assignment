import 'package:flutter/material.dart';

void main() => runApp(Unit4App());

class Unit4App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('About Myself')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/image.jpg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Delfin Angelo Lamasan',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Displaying info rows
              Column(
                children: [
                  for (var info in [
                    {
                      'icon': Icons.email,
                      'title': 'EMAIL',
                      'data': 'delfinangelo.lamasan@wvsu.edu.ph'
                    },
                    {
                      'icon': Icons.phone,
                      'title': 'PHONE',
                      'data': '09123456789'
                    },
                    {
                      'icon': Icons.school,
                      'title': 'HOBBIES',
                      'data': 'Studying, Sleeping, Playing Video Games'
                    },
                    {
                      'icon': Icons.location_city,
                      'title': 'CITY',
                      'data': 'La Paz, Iloilo City'
                    },
                    {
                      'icon': Icons.info,
                      'title': 'ABOUT',
                      'data': 'BSIT 3rd Year Student'
                    }
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(info['icon'] as IconData), 
                          SizedBox(width: 8),
                          Text(
                            '${info['title']}:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Expanded(
                            child: Text(
                              '${info['data']}',
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'My Biography',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'I am a calm student who likes to relax and take things slowly. In my free time, I enjoy playing games and watching shows, both made-up stories and real ones. Even though I am laid-back, I always make sure to finish my work on time.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
