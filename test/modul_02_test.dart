import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_2/MODUL 2/models/course.dart';
import 'package:flutter_application_2/MODUL 2/widgets/course_card.dart';
import 'package:flutter_application_2/MODUL 2/academic_dashboard_screen.dart';

void main() {
  group('Modul 02 Autograding: Declarative UI & Responsive Layout', () {
    test('1. Model Course mengembalikan daftar data sample valid', () {
      final sample = Course.getSampleCourses();

      expect(sample.length, greaterThanOrEqualTo(4));
      expect(sample.first.code, equals('TRPL501'));
      expect(sample.first.sks, greaterThan(0));
    });

    testWidgets(
      '2. CourseCard merender nama mata kuliah, dosen, dan badge SKS',
      (WidgetTester tester) async {
        const course = Course(
          code: 'TEST101',
          name: 'Algoritma Pemrograman',
          lecturer: 'Dosen Penguji',
          sks: 3,
          progress: 0.5,
        );

        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CourseCard(course: course),
            ),
          ),
        );

        expect(find.text('TEST101'), findsOneWidget);
        expect(
          find.text('Algoritma Pemrograman'),
          findsOneWidget,
        );
        expect(find.text('Dosen Penguji'), findsOneWidget);
        expect(find.text('3 SKS'), findsOneWidget);
        expect(
          find.byType(LinearProgressIndicator),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      '3. AcademicDashboardScreen adaptif',
      (WidgetTester tester) async {
        // =========================
        // TEST MOBILE
        // =========================

        tester.view.physicalSize = const Size(400, 800);
        tester.view.devicePixelRatio = 1.0;

        await tester.pumpWidget(
          const MaterialApp(
            home: AcademicDashboardScreen(),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(ListView), findsOneWidget);
        expect(find.byType(GridView), findsNothing);

        // =========================
        // TEST TABLET / DESKTOP
        // =========================

        tester.view.physicalSize = const Size(800, 600);
        tester.view.devicePixelRatio = 1.0;

        await tester.pumpWidget(
          const MaterialApp(
            home: AcademicDashboardScreen(),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(GridView), findsOneWidget);

        // =========================
        // RESET UKURAN LAYAR
        // =========================

        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
      },
    );
  });
}