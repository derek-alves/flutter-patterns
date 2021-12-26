import 'package:study_patterns/patterns/builder/lib/models/filho_model.dart';

import '../models/funcionario_model.dart';

class FuncionarioBuilder {
  FuncionarioModel _funcionario = FuncionarioModel();

  FuncionarioBuilder._();

  static FuncionarioBuilder get instance => FuncionarioBuilder._();

  FuncionarioBuilder nome(String nome) {
    _funcionario.name = nome;
    return this;
  }

  FuncionarioBuilder idade(int idade) {
    _funcionario.idade = idade;
    return this;
  }

  FuncionarioBuilder profissao(String profissao) {
    _funcionario.profissao = profissao;
    return this;
  }

  FuncionarioBuilder addFilho(FilhoModel filho) {
    _funcionario.filhos ??= [];
    _funcionario.filhos!.add(filho);
    return this;
  }

  FuncionarioModel build() {
    return _funcionario;
  }
}
