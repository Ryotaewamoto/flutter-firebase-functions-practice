import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient(ref.read));

class ApiClient {
  ApiClient(this._read);
  final Reader _read;
}
