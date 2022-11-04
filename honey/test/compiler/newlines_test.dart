import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

void main() {
  group('new lines parsing:', () {
    test('multiline test script without new lines', () {
      const test = '''
        login()
        tap "Action" button
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });
    test('multiline test script with new lines', () {
      const test = '''
        login()

        tap "Action" button
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });

    test('multiline test script with multiple new lines', () {
      const test = '''
        login()
        

        tap "Action" button
        tap "Action" button
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });

    test('multiline test script with multiple new lines at the end', () {
      const test = '''
        login()
        
        tap "Action" button
        tap "Action" button

        
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });

    test('multiline test script with multiple newlines between actions', () {
      const test = '''
        login()
        
        tap "Action" button


        tap "Action" button
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });

    test(
        'multiline test script with multiple new lines'
        ' between actions and at the end', () {
      const test = '''
        login()
        
        tap "Action" button


        tap "Action" button



        
        ''';
      final result = compileHoneyTalk(test);
      expect(result.hasError, false);
    });
  });
}
