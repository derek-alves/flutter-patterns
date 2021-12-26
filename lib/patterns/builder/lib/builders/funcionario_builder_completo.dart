import '../models/filho_model.dart';
import '../models/funcionario_model.dart';

class FuncionarioBuilderCompleto implements FuncinarioNome, FuncinarioIdade, FuncinarioProfissao, FuncinarioFilhos {
  final FuncionarioModel _funcionario = FuncionarioModel();

  FuncionarioBuilderCompleto._();

  static FuncinarioNome get instance => FuncionarioBuilderCompleto._();

  @override
  FuncinarioIdade nome(String nome) {
    _funcionario.name = nome;
    return this;
  }

  @override
  FuncinarioProfissao idade(int idade) {
    _funcionario.idade = idade;
    return this;
  }

  @override
  FuncinarioFilhos profissao(String profissao) {
    _funcionario.profissao = profissao;
    return this;
  }

  @override
  FuncinarioFilhos addFilhos(FilhoModel filho) {
    _funcionario.filhos ??= [];
    _funcionario.filhos!.add(filho);
    return this;
  }

  @override
  FuncionarioModel build() {
    return _funcionario;
  }
}

abstract class FuncinarioNome {
  FuncinarioIdade nome(String nome);
}

abstract class FuncinarioIdade {
  FuncinarioProfissao idade(int idade);
}

abstract class FuncinarioProfissao {
  FuncinarioFilhos profissao(String profissao);
}

abstract class FuncinarioFilhos {
  FuncinarioFilhos addFilhos(FilhoModel filho);
  FuncionarioModel build();
}
