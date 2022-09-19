import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import '../../utils/loading.dart';

// アプリフォルダ内にある pdf ファイルの表示・印刷画面
class PrintingPage extends HookConsumerWidget {
  const PrintingPage({super.key});

  static const path = '/development/printing';
  static const name = 'PrintingPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PrintingPage'),
        ),
        body: PdfPreview(
          canChangeOrientation: false,
          canChangePageFormat: false,
          canDebug: false,
          build: ref.read(getRootPdfProvider),
          loadingWidget: const OverlayLoadingWidget(),
        ));
  }
}

final getRootPdfProvider =
    Provider.autoDispose<Future<Uint8List> Function(PdfPageFormat)>(
  (ref) => (format) async {
    final pdf = await rootBundle.load('assets/sample.pdf');
    return pdf.buffer.asUint8List();
  },
);
