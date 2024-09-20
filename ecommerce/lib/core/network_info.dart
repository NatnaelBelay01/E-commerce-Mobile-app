import "package:internet_connection_checker/internet_connection_checker.dart";

abstract class NetworkInfo {
  Future<bool> get isconnected;
}

class NetworkInfoImp implements NetworkInfo {
  InternetConnectionChecker internetconnectionchecker;
  NetworkInfoImp({required this.internetconnectionchecker});

  @override
  Future<bool> get isconnected{
		return internetconnectionchecker.hasConnection;
	}
}
