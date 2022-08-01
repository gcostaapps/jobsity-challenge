class HttpResponse {
  HttpResponse(this.data, this.statusCode);

  final dynamic data;
  final int? statusCode;

  bool isSuccess() {
    return statusCode == 200 || statusCode == 201 || statusCode == 304;
  }
}
