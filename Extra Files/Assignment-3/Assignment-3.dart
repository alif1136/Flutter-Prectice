import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment-3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Assignment 13'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  HomePageCard(
                    image:
                    "https://cdn.ostad.app/course/photo/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg",
                    batch: "১১",
                    seat: "৬",
                    days: "৬",
                    name:
                    "Full Stack Web Development with JavaScript (MERN)",
                  ),
                  HomePageCard(
                    image:
                    "https://cdn.ostad.app/course/photo/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg",
                    batch: "৬",
                    seat: "৮৬",
                    days: "৪০",
                    name:
                    "Full Stack Web Development with Python, Django & React",
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  HomePageCard(
                    image:
                    "https://cdn.ostad.app/course/photo/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg",
                    batch: "৭",
                    seat: "৭৫",
                    days: "৩৯",
                    name: "Full Stack Web Development with ASP.NET Core",
                  ),
                  HomePageCard(
                    image:
                    "https://cdn.ostad.app/course/photo/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg",
                    batch: "১৩",
                    seat: "৬৫",
                    days: "৪১",
                    name: "SQA: Manual & Automated Testing",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageCard extends StatelessWidget {
  final String image;
  final String batch;
  final String seat;
  final String days;
  final String name;

  const HomePageCard({
    super.key,
    required this.image,
    required this.batch,
    required this.seat,
    required this.days,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: (screenWidth - 16) / 2,
      height: 340,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.network(
                image,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildInfoChip('ব্যাচ $batch'),
                        _buildInfoChip('$seat সিট বাকি'),
                        _buildInfoChip('$days দিন বাকি'),
                      ],
                    ),
                    const Divider(),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'বিস্তারিত দেখি',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.arrow_forward,
                                size: 16, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(text, style: const TextStyle(fontSize: 10)),
      ),
    );
  }
}
