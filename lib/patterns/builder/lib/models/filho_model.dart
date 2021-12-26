class FilhoModel {
  final String name;
  final int idade;

  FilhoModel({
    required this.name,
    required this.idade,
  });

  @override
  String toString() => 'FilhoModel(name: $name, idade: $idade)';
}
