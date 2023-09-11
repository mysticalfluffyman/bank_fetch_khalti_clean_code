import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/pigeon.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/app/src/main/kotlin/com/example/khalti_task/DeviceModel.kt',
  kotlinOptions: KotlinOptions(),
  swiftOut: 'ios/Runner/DeviceModel.swift',
  swiftOptions: SwiftOptions(),
  dartPackageName: 'khalti_task',
))
@HostApi()
abstract class DeviceIdentifierDataApi {
  String getDeviceModel();
}
