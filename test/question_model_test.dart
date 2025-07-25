import 'package:flutter_test/flutter_test.dart';
import 'package:matchapp/models/question.dart';

void main() {
  test('Question model serializes and deserializes correctly', () {
    final original = Question(
      id: 'q1',
      text: 'Wat is je lievelingseten?',
      authorId: 'user123',
      createdAt: DateTime.parse('2025-07-24T12:00:00Z'),
    );

    final json = original.toJson();
    final copy = Question.fromJson(json);

    expect(copy.id, equals(original.id));
    expect(copy.text, equals(original.text));
    expect(copy.authorId, equals(original.authorId));
    expect(copy.createdAt.toIso8601String(), equals(original.createdAt.toIso8601String()));
  });
}
