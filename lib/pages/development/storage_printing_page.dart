import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import '../../utils/loading.dart';

// Firebase Storage 内にある pdf ファイルの表示・印刷画面
class StoragePrintingPage extends HookConsumerWidget {
  const StoragePrintingPage({super.key});

  static const path = '/development/storage-printing';
  static const name = 'StoragePrintingPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('StoragePrintingPage'),
        ),
        body: PdfPreview(
          canChangeOrientation: false,
          canChangePageFormat: false,
          canDebug: false,
          build: ref.read(getCloudStoragePdfProvider),
          loadingWidget: const OverlayLoadingWidget(),
        ));
  }
}

final getCloudStoragePdfProvider =
    Provider.autoDispose<Future<Uint8List> Function(PdfPageFormat)>(
  (ref) => (format) async {
    final storageRef = FirebaseStorage.instance.ref();
    final pdfRef = await storageRef.child('sample.pdf').getData();
    return pdfRef!;
  },
);
