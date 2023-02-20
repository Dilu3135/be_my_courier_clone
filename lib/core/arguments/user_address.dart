class AddUser {
  final String email;
  final String userId;
  final String address;
  final String state;
  final String zip;
  final String city;
  final String name;
  final String country;

  AddUser(
      {required this.email,
      required this.name,
      required this.userId,
      required this.address,
      required this.state,
      required this.zip,
      required this.city,
      required this.country});

  factory AddUser.fromJson(Map<String, dynamic> json) {
    return AddUser(
      email: json['email'],
      name: json['name'],
      userId: json['userId'],
      address: json['address'],
      state: json['state'],
      zip: json['zip'],
      city: json['city'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['email'] = email;
    data['name'] = name;
    data['userId'] = userId;
    data['address'] = address;
    data['state'] = state;
    data['zip'] = zip;
    data['city'] = city;
    data['country'] = country;
    return data;
  }
}
