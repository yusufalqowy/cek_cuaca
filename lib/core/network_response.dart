enum NetworkStatus {
  init,
  loading,
  success,
  internetError,
  error;

  bool get isSuccess => this == success;

  bool get isError => this == error;

  bool get isInternetError => this == internetError;

  bool get isLoading => this == loading;
}

class NetworkResponse<T> {
  final NetworkStatus? status;
  final T? data;
  final String? message;

  NetworkResponse({
    this.status,
    this.data,
    this.message,
  });

  NetworkResponse<T> copyWith({
    NetworkStatus? status,
    T? data,
    String? message,
  }) =>
      NetworkResponse<T>(
        status: status ?? this.status,
        data: data ?? this.data,
        message: message ?? this.message,
      );

  static NetworkResponse<T> success<T>(data) {
    return NetworkResponse(status: NetworkStatus.success, data: data);
  }

  static NetworkResponse<T> error<T>({required String? message}) {
    return NetworkResponse(status: NetworkStatus.error, message: message);
  }

  static NetworkResponse<T> init<T>() {
    return NetworkResponse(status: NetworkStatus.init);
  }

  static NetworkResponse<T> loading<T>() {
    return NetworkResponse(status: NetworkStatus.loading);
  }

  static NetworkResponse internetError() {
    return NetworkResponse(status: NetworkStatus.internetError);
  }
}
