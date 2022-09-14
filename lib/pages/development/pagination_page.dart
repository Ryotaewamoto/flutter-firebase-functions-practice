import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaginationPage extends HookConsumerWidget {
  const PaginationPage({super.key});

  static const path = '/development/pagination';
  static const name = 'PaginationPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController controller = useScrollController();

    useEffect(() {
      return null;

      // controller.addListener(_someCallback);
      // return () => controller.removeListener(_someCallback);
    }, [controller]);

    return Scaffold(
      appBar: AppBar(title: const Text('PaginationPage')),
      body: const Center(
        child: Text('ちょっと待ってて'),
      ),
    );
  }
}


// class HttpApiClient {
//   HttpApiClient(this._read);
//   final Reader _read;

//   static const _baseUrl = 'https://jsonplaceholder.typicode.com/posts';

//   final int _limit = 20;


//   Future<http.Response> get(int page) async {
//     try {
//       final response =
//       await http.get(Uri.parse("$_baseUrl?_page=$page&_limit=$_limit"));
//       return response;
//     } catch (err) {
//       ResponseResult.failure(message: e.toString());
//     }
//   }

// }
