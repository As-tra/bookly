import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  (Future<Failure>,Future<List<BookModel>>) fetchBestSellerBooks();
  (Future<Failure>,Future<List<BookModel>>) fetchFeaturedBooks();
}
