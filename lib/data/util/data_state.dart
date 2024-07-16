import 'package:dio/dio.dart';

/// Generic class to handle success/ failure errors from network api calls.
abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailure<T> extends DataState<T> {
  const DataFailure(DioException error) : super(error: error);
}
