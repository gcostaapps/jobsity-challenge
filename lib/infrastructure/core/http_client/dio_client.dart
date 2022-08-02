import 'package:dio/dio.dart';

import '../../../domain/core/http_client/http_client.dart';
import '../../../domain/core/http_client/http_response.dart';

class DioClient implements IHttpClient {
  final Dio client;

  DioClient(this.client);

  @override
  Future<HttpResponse> get(String url) async {
    final response = await client.get(url);
    return HttpResponse(response.data, response.statusCode);
  }
}
