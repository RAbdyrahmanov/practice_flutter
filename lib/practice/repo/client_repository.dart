import 'package:flutter27may/practice/client/client.dart';
import 'package:flutter27may/practice/client_info.dart';

final allClients = <Client>[
  RegularClient(name: 'Rus', sureName: 'Abdrahmanov'),
  VipClient('Vip', '100', name: 'Bolot', sureName: 'Bolotov'),
  RegularClient(name: 'Max', sureName: 'Maximov'),
  VipClient('Premium', '50', name: 'Sasha', sureName: 'Alekseev'),
  RegularClient(name: 'Adil', sureName: 'Rustamov'),
];

class ClientRepository implements ClientInfo {
  @override
  findClient(String name) {
    Client? client;
    for (var i = 0; i < allClients.length; i++) {
      if (name == allClients[i].name) {
        client = allClients[i];
        break;
      }
     
    }
     return client;
  }

  @override
  getAllClients() {
    return allClients;
  }
}
