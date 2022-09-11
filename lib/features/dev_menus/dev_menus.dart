import '../../models/dev_menu.dart';
import '../../pages/development/image_api_page.dart';
import '../../pages/development/printing_page.dart';
import '../../pages/development/storage_printing_page.dart';

final devMenus = <DevMenu>[
  const DevMenu(
    title: 'API tutorial',
    description: 'using image API',
    location: ImageApiPage.location
  ),
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
];
