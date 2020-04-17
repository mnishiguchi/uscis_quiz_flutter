import 'package:flutter/material.dart';

import 'package:uscisquiz/pages/pages.dart';
import 'package:uscisquiz/blocs/blocs.dart';
import 'package:uscisquiz/widgets/widgets.dart';

class BookmarkedQuestionsPage extends QuestionsPage {
  static const routeName = '/bookmarked_questions';

  @override
  String pageTitle() => 'Bookmarked Questions';

  @override
  Widget buildQuestions(BuildContext context, UscisQuizStateLoaded state) {
    final Set<int> bookmarkedIds = state.bookmarkedIds ?? Set<int>();
    final questions = state.questions
        .where((question) => bookmarkedIds.contains(question.id))
        .toList();

    return QuestionList(
      questions: questions,
      bookmarkedIds: bookmarkedIds,
    );
  }
}
