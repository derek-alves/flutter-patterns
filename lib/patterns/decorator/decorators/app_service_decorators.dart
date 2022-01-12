import 'package:study_patterns/patterns/decorator/app_service.dart';

class AppServiceDecorators implements Service {
  final Service decoratee;
  final Duration maximumDuration = Duration(seconds: 7);

  AppServiceDecorators({required this.decoratee});

  @override
  Future<String> getData() async {
    var retrySeconds = Duration(seconds: 0);
  }
}
