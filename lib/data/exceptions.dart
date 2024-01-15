import 'dart:io';

class AbortedException implements Exception {}

abstract class IOExceptionWithCause implements IOException {
  final Object? cause;

  const IOExceptionWithCause([this.cause]);
}

class HttpTimeoutException extends IOExceptionWithCause {
  const HttpTimeoutException([Object? cause]) : super(cause);
}

class NetworkCallCanceledException extends IOExceptionWithCause {
  const NetworkCallCanceledException([Object? cause]) : super(cause);
}

class NetworkIOException extends IOExceptionWithCause {
  const NetworkIOException([Object? cause]) : super(cause);
}

class JsonIOException extends IOExceptionWithCause {
  const JsonIOException([Object? cause]) : super(cause);
}

/// Exception for an unexpected, non-2xx HTTP response.
class HttpStatusException implements IOException {
  final dynamic responseBody;
  final String message;
  final Uri? uri;

  /// HTTP status code
  final int code;

  /// code HTTP status code
  /// message: HTTP status message
  const HttpStatusException(this.code, this.message, {this.uri, this.responseBody});

  @override
  String toString() {
    final b = StringBuffer()
      ..write('HttpException: ')
      ..write('code = $code, ')
      ..write(message);
    final uri = this.uri;
    if (uri != null) {
      b.write(', uri = $uri');
    }
    if (responseBody != null) {
      b.write(', responseBody = $responseBody');
    }
    return b.toString();
  }
}
