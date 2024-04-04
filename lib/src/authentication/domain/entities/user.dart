class User {
  final int id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  const User(
      {required this.id,
      required this.createdAt,
      required this.name,
      required this.avatar});
}
