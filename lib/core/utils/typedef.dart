import 'package:dartz/dartz.dart';
import 'package:tdd/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid<T> = ResultFuture<void>;
typedef DataMap = Map<String, dynamic>;
