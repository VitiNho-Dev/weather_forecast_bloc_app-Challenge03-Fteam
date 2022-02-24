import 'package:weather_forecast_bloc_app/app/modules/search/domain/errors/failure_search.dart';
import 'package:weather_forecast_bloc_app/app/modules/search/domain/entities/result_search.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_forecast_bloc_app/app/modules/search/domain/repositories/search_repository.dart';
import 'package:weather_forecast_bloc_app/app/modules/search/infra/datasources/search_datasource.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDatasource datasource;

  SearchRepositoryImpl(this.datasource);
  @override
  Future<Either<FailureSearch, ResultSearch>> search(String searchText) async {
    try {
      final result = await datasource.getSearch(searchText);
      return Right(result);
    } on DatasourceError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DatasourceError());
    }
  }
}
