import 'package:flutter_test/flutter_test.dart';
import 'package:jobsity_challenge/domain/core/http_client/http_client.dart';
import 'package:jobsity_challenge/domain/core/http_client/http_response.dart';
import 'package:jobsity_challenge/domain/serie/serie_model.dart';
import 'package:jobsity_challenge/infrastructure/serie/datasource/serie_datasource.dart';
import 'package:mocktail/mocktail.dart';

import 'http_series_mock.dart';

class MockHttpClient extends Mock implements IHttpClient {}

void main() {
  late SerieDatasource serieDatasource;
  late MockHttpClient httpClient;

  setUpAll(() async {
    httpClient = MockHttpClient();
    serieDatasource = SerieDatasource(httpClient);
  });

  group('Serie datasource', () {
    group('getSeries', () {
      test(
          'should return List<SerieModel> when response is success for pagination search',
          () async {
        when(() => httpClient.get(any())).thenAnswer(
            (_) => Future.value(HttpResponse(showsPaginationResponse, 200)));

        final series = await serieDatasource.getSeries(null);

        expect(series.length, 1);
        expect(
          series.first,
          equals(SerieModel.fromMap(showsPaginationResponse.first)),
        );
      });

      test(
          'should return List<SerieModel> when response is success for query search',
          () async {
        when(() => httpClient.get(any())).thenAnswer(
            (_) => Future.value(HttpResponse(showsSearchResponse, 200)));

        final series = await serieDatasource.getSeries('Maze');

        expect(series.length, 1);
        expect(
          series.first,
          equals(
            SerieModel.fromMap(showsSearchResponse.first['show'] as dynamic),
          ),
        );
      });

      test(
          'should return empty list  when response is 404 (results end in pagination)',
          () async {
        when(() => httpClient.get(any()))
            .thenAnswer((_) => Future.value(HttpResponse([], 404)));

        final series = await serieDatasource.getSeries('Maze', page: 100);

        expect(series.isEmpty, true);
      });

      test(
          'should throws Exception if code is different from 200, 201, 304, 404',
          () async {
        when(() => httpClient.get(any()))
            .thenAnswer((_) => Future.value(HttpResponse([], 401)));

        expect(
          () => serieDatasource.getSeries('Maze', page: 100),
          throwsException,
        );
      });

      test('should throws Exception if http is invalid', () async {
        when(() => httpClient.get(any())).thenThrow(Exception());

        expect(
          () => serieDatasource.getSeries('Maze', page: 100),
          throwsException,
        );
      });
    });

    group('getSeriesEpisodes', () {
      test(
          'should return SerieModel when response is success for serie details',
          () async {
        when(() => httpClient.get(any())).thenAnswer(
            (_) => Future.value(HttpResponse(serieDetailResponse, 200)));

        final serie = await serieDatasource.getSeriesEpisodes(1);

        expect(serie, equals(SerieModel.fromMap(serieDetailResponse)));
      });

      test('should throws Exception if code is different from 200, 201, 304',
          () async {
        when(() => httpClient.get(any()))
            .thenAnswer((_) => Future.value(HttpResponse([], 401)));

        expect(() => serieDatasource.getSeriesEpisodes(1), throwsException);
      });

      test('should throws Exception if http is invalid', () async {
        when(() => httpClient.get(any())).thenThrow(Exception());

        expect(() => serieDatasource.getSeriesEpisodes(1), throwsException);
      });
    });
  });
}
