import 'package:flutter_firebase_functions_practice/models/dev_menu.dart';
import 'package:flutter_firebase_functions_practice/pages/image_api_page.dart';
import 'package:flutter_firebase_functions_practice/pages/printing_page.dart';

final devMenus = <DevMenu>[
  const DevMenu(
    title: 'API tutorial',
    description: 'using image API',
    location: ImageApiPage.location
  ),
  const DevMenu(
    title: 'Printing',
    description: 'enable pdf preview and printing',
    location: PrintingPage.location,
  )
];
