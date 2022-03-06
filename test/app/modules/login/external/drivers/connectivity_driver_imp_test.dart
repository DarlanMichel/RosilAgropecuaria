import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rosilagropecuaria/app/modules/login/external/drivers/connectivity_driver_imp.dart';

class ConnectivityMock extends Mock implements Connectivity {}

main() {
  final connectivity = ConnectivityMock();
  final driver = ConnectivityDriverImp(connectivity);
  test('should return bool mobile', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.mobile);

    expect(driver.isOnline, completion(true));
  });

  test('should return bool wifi', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.wifi);

    expect(driver.isOnline, completion(true));
  });

  test('should return bool false', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.none);

    expect(driver.isOnline, completion(false));
  });

  test('should return bool false', () async {
    when(connectivity.checkConnectivity()).thenThrow(Exception());

    expect(driver.isOnline, throwsA(isA<Exception>()));
  });
}