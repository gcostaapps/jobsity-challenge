import 'application_start_config.dart';
import 'presentation/app_page.dart';

void main() {
  // ApplicationStartConfig().configureApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (_) => const AppPage(),
  //   ),
  // );
  ApplicationStartConfig().configureApp(const AppPage());
}
