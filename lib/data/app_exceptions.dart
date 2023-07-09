class AppException implements Exception {
  final _prefix;
  final _message;

  AppException([this._prefix, this._message]);

  String toString() {
    return "$_prefix $_message";
  }
}

// Request TimeOut Exception
class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error During Communication");
}

// Bad Request Exception
class BadReqeustException extends AppException {
  BadReqeustException([String? message]) : super(message, "Invalid Request");
}

// Unauthorized Exception
class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message, "Unauthorized Request");
}

class InvalidException extends AppException {
  InvalidException([String? message]) : super(message, "Invalid Input");
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, "Internal Server Error");
}

class EmailAlreadyTakenException extends AppException {
  EmailAlreadyTakenException([String? message])
      : super(message, "Email already in Use");
}

class UserNotFoundException extends AppException {
  UserNotFoundException([String? message])
      : super(message, "These credentials do not match our Records");
}
