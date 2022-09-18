import 'package:flutter_firebase_functions_practice/pages/development/auto_complete_page.dart';
import 'package:flutter_firebase_functions_practice/pages/development/pagination_page.dart';

import '../../models/dev_menu.dart';
import '../../pages/development/image_api_page.dart';
import '../../pages/development/printing_page.dart';
import '../../pages/development/storage_printing_page.dart';

final devMenus = <DevMenu>[
  const DevMenu(
      title: 'API tutorial',
      description: 'using image API',
      location: ImageApiPage.location),
  const DevMenu(
    title: 'Printing',
    description: 'enable pdf preview and printing from root',
    location: PrintingPage.location,
  ),
  const DevMenu(
    title: 'StoragePrinting',
    description: 'enable pdf preview and printing from storage',
    location: StoragePrintingPage.location,
  ),
  const DevMenu(
    title: 'AutoComplete',
    description: 'search text with form field automatically',
    location: AutoCompletePage.location,
  ),
  const DevMenu(
      title: 'Pagination',
      description: 'pagination with mock API responding json',
      location: PaginationPage.location),
];
