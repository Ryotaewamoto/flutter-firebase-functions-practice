import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:printing/printing.dart';

import '../utils/loading.dart';

class PrintingPage extends HookConsumerWidget {
  const PrintingPage({super.key});

  static const path = '/development/printing';
  static const name = 'PrintingPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Uint8List> getPdf() async {
      final pdf = await rootBundle.load('assets/sample.pdf');
      return pdf.buffer.asUint8List();
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('PrintingPage'),
        ),
        body: PdfPreview(
          canChangeOrientation: false,
          canChangePageFormat: false,
          canDebug: false,
          build: (format) async => await getPdf(),
          loadingWidget: const OverlayLoadingWidget(),
        ));
  }
}
