import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'loading_dialog.g.dart';

abstract class LoadingDialog {
  void show();
  Future<void> hide();
}

@Injectable()
class LoadingDialogImp implements LoadingDialog {
  late OverlayEntry _entry;

  LoadingDialogImp() {
    _entry = OverlayEntry(
      builder: (context) {
        return Container(
          color: Colors.black.withOpacity(.3),
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  Future<void> hide() async {
    _entry.remove();
    await Future.delayed(Duration(milliseconds: 500));
  }

  @override
  void show() {
    FocusManager.instance.primaryFocus?.unfocus();
    asuka.addOverlay(_entry);
  }
}
