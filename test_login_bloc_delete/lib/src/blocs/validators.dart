import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.toString().contains("@")) {
        sink.add(email);
      } else {
        sink.addError("Enter valid email address");
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.toString().length > 4) {
        sink.add(password);
      } else {
        sink.addError("Incorrect password");
      }
    },
  );
}
