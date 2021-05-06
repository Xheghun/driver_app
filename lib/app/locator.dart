import 'package:driver_app/core/data/remote/auth/auth_webservice.dart';
import 'package:driver_app/core/data/remote/auth/auth_webservice_impl.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

void setupLocator() {

  //data
  locator..registerLazySingleton<AuthWebService>(() => AuthWebServiceImpl());

  //repository

  //use case
}
