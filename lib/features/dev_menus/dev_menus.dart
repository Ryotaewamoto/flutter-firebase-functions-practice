import 'package:flutter_firebase_functions_practice/models/dev_menu.dart';
import 'package:flutter_firebase_functions_practice/pages/image_api_page.dart';
import 'package:flutter_firebase_functions_practice/pages/printing_page.dart';

final devMenus = <DevMenu>[
  const DevMenu(
    title: 'API tutorial',
    description: 'use image API',
    location: ImageApiPage.location
  ),
  const DevMenu(
    title: 'original printing',
    description: 'create route to printing page',
    location: PrintingPage.location,
  )
];
