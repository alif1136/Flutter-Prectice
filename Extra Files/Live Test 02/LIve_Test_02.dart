import 'package:flutter/material.dart';
//
void main() {
  runApp(ContactListApp());
}

class ContactListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {"name": "Javad", "phone": "01877-777777"},
    {"name": "Ferdous", "phone": "01777-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ✅ Fake Status Bar
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("5:40", style: TextStyle(color: Colors.white)),
                Row(
                  children: [
                    Icon(Icons.signal_cellular_alt, color: Colors.white, size: 18),
                    SizedBox(width: 4),
                    Icon(Icons.wifi, color: Colors.white, size: 18),
                    SizedBox(width: 4),
                    Icon(Icons.battery_full, color: Colors.white, size: 18),
                  ],
                )
              ],
            ),
          ),

          // ✅ AppBar
          AppBar(
            title: Text("Contact List"),
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),

          // ✅ Rest of UI
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone",
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      minimumSize: Size(double.infinity, 40),
                    ),
                    child: Text("Add"),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Icon(Icons.person, color: Colors.brown),
                            title: Text(
                              contacts[index]["name"]!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index < 2 ? Colors.red : Colors.red,
                              ),
                            ),
                            subtitle: Text(contacts[index]["phone"]!),
                            trailing: Icon(Icons.call, color: Colors.blue),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
