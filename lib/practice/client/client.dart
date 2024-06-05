class Client {
  final String name;
  final String sureName;

  Client({required this.name, required this.sureName});
}

class RegularClient extends Client {
  RegularClient({required super.name, required super.sureName});
}

class VipClient extends Client {
  final String premiumStatus;
  final String cashBack;
  VipClient(this.premiumStatus, this.cashBack,
      {required super.name, required super.sureName});
}
