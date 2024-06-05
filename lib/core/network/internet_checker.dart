import 'package:dio_clean_learn/core/init_dependencies/init_dependencies.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

Future<bool> checkInternetConnection() async {
  // Check if the device is connected to the internet
  return await getItInstance<InternetConnection>().hasInternetAccess;
}
