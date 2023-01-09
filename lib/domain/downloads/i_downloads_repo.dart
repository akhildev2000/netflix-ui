import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadImages();
}
