import 'package:mockito/mockito.dart';
import 'package:ecommerce/core/network_info.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/mocks.mocks.dart';



void main(){
	late MockInternetConnectionChecker mockinternetcheck;
	late NetworkInfo networkInfo;

	setUp((){
		mockinternetcheck = MockInternetConnectionChecker();
		networkInfo = NetworkInfoImp(internetconnectionchecker: mockinternetcheck);
	});

	test('should forward a call to internetconnectonchecker when networkinfo is called', () async {
		final tHasconnect = Future.value(true);
	  when(mockinternetcheck.hasConnection).thenAnswer((_) => tHasconnect);
		final result = networkInfo.isconnected;
		verify(mockinternetcheck.hasConnection);
		expect(result, tHasconnect);
	});
}
