import 'package:study_patterns/patterns/builder/lib/builders/funcionario_builder_completo.dart';
import 'package:study_patterns/patterns/builder/lib/dio/custom_dio_builder.dart';

import 'builders/funcionario_builder.dart';
import 'models/filho_model.dart';

void execute() async {
  var funcionario1 = FuncionarioBuilder.instance
      .nome("Derek Enrique")
      .idade(21)
      .profissao("dev")
      .addFilho(FilhoModel(name: "Paulo", idade: 12))
      .addFilho(FilhoModel(name: "Valentina", idade: 6))
      .build();

  print(funcionario1);

  var funcionario2 = FuncionarioBuilderCompleto.instance
      .nome("Pedro Paulo")
      .idade(20)
      .profissao("Cavaleiro")
      .addFilhos(FilhoModel(name: "Cavalo", idade: 40))
      .build();

  print('--------------------------------------------------------------');
  var responsePost = await CustomDioBuilder.instance
      .post()
      .path('https://jsonplaceholder.typicode.com/posts')
      .addHeader('Content-type', 'application/json')
      .params()
      .data({
    'title': "titulox",
    'body': 'Bodyx',
    'userId': 1,
  }).run();

  print(responsePost.data);

  print('--------------------------------------------------------------');
  await CustomDioBuilder.instance;
}
