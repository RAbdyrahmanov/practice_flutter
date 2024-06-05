import 'package:flutter/material.dart';
import 'package:flutter27may/practice/client/client.dart';
import 'package:flutter27may/practice/repo/client_repository.dart';

class PracticeOne extends StatefulWidget {
  const PracticeOne({super.key});

  @override
  State<PracticeOne> createState() => _PracticeOneState();
}

class _PracticeOneState extends State<PracticeOne> {
  List<Client> clients = [];
  final repo=ClientRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getAllClientsWidget(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clients=repo.getAllClients();
                });
              },
              child: const Text(
                'Get all clients',
              ),
            )
          ],
        ),
      ),
    );
  }

  getAllClientsWidget() {
    List<Widget> clientWidget = [];
    for (var i = 0; i < clients.length; i++) {
      clientWidget.add(
        Text('${i + 1}.${clients[i].name} ${clients[i].sureName}'),
      );
    }
    if (clientWidget.isEmpty) {
      return const Text('No Clients');
    } else {
      return Container(
        color: Colors.blue,
          child: Column(
        children: clientWidget,
      ));
    }
  }
}
