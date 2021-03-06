import 'dart:async';
import 'validators.dart';

class Bloc with Validators {
  final _email = StreamController();
  final _password = StreamController();

  // Add data to the stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}
