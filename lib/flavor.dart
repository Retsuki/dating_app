// ignore_for_file: constant_identifier_names
final flavor = Flavor.values.byName(const String.fromEnvironment('FLAVOR'));

enum ApiUrls {
  user,
}

enum Flavor {
  development(projectId: 'dating-app-develop'),
  ;

  const Flavor({required this.projectId});
  final String projectId;

  String getApiPrefix(ApiUrls endpoint) {
    const apiPrefix = bool.fromEnvironment('USE_FIREBASE_EMULATOR')
        ? 'http://${const String.fromEnvironment('FIREBASE_EMULATOR_URL')}:7002/dating-app-develop/asia-northeast1'
        : '';

    switch (endpoint) {
      case ApiUrls.user:
        return '$apiPrefix/user';
    }
  }
}
