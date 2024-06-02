import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=fiction&orderBy=newest',
      );
      List<BookModel> myBooks = [];
      for (var item in data["items"]) {
        myBooks.add(BookModel.fromJson(item));
      }
      return Right(myBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );
      List<BookModel> myBooks = [];
      for (var item in data["items"]) {
        myBooks.add(BookModel.fromJson(item));
      }
      return Right(myBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:$category&Sorting=relevance',
      );
      List<BookModel> myBooks = [];
      for (var item in data["items"]) {
        myBooks.add(BookModel.fromJson(item));
      }
      return Right(myBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
