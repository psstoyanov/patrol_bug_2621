
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_bug_2621/main.dart' as app;

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(
        app.MyApp()
      );

      int i =0;

    while (i <1000){
        ++i;
        final button = find.byType(FloatingActionButton);
        
        await $.tester.tap(button);
        await $.tester.pumpAndSettle();

        final updatedTxt = find.text(i.toString());
        expect(updatedTxt, findsOne);

      }

    },
  );
}
