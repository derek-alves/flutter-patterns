import 'filho_model.dart';

class FuncionarioModel {
  String? name;
  int? idade;
  String? profissao;
  List<FilhoModel>? filhos;

  FuncionarioModel({
    this.name,
    this.idade,
    this.profissao,
    this.filhos,
  });

  @override
  String toString() {
    return 'FuncionarioModel(name: $name, idade: $idade, profissao: $profissao, filhos: $filhos)';
  }
}
