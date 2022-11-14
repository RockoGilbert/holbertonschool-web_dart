class User {
  String name;
  int age;
  double height;
  int id;
  // Add a new property id to toJson() method

  User(
      {required this.name,
      required this.age,
      required this.height,
      required this.id});

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      id: userJson['id'],
    );
  }

  @override
  toString() async {
    return 'User(name: $name, age: $age, height: $height, id: $id)';
  }

  void main() {
    final user = User(name: "Youssef", age: 25, height: 1.89, id: 1);
    print(user.toJson());
  }
}
