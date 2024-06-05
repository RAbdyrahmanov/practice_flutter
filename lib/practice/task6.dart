import 'package:flutter/material.dart';





class ClientSearchPage extends StatefulWidget {
  const ClientSearchPage({super.key});

  @override
  _ClientSearchPageState createState() => _ClientSearchPageState();
}

class _ClientSearchPageState extends State<ClientSearchPage> {
  final List<Map<String, String>> clients = [
    {'name': 'John Doe', 'email': 'john.doe@example.com', 'phone': '123-456-7890'},
    {'name': 'Jane Smith', 'email': 'jane.smith@example.com', 'phone': '234-567-8901'},
    {'name': 'Michael Johnson', 'email': 'michael.johnson@example.com', 'phone': '345-678-9012'},
  ];

  String searchQuery = '';
  Map<String, String>? selectedClient;

  void searchClient(String query) {
    setState(() {
      searchQuery = query;
      selectedClient = clients.firstWhere(
        (client) => client['name']!.toLowerCase() == query.toLowerCase(),
        orElse: () => {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: searchClient,
              decoration: InputDecoration(
                labelText: 'Enter client name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            selectedClient != null && selectedClient!.isNotEmpty
                ? ClientDetails(client: selectedClient!)
                : Text('No client found'),
          ],
        ),
      ),
    );
  }
}

class ClientDetails extends StatelessWidget {
  final Map<String, String> client;

  ClientDetails({required this.client});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${client['name']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: ${client['email']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Phone: ${client['phone']}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
