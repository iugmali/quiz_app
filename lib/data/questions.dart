import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What is the purpose of the initState() method?',
    [
      'To initialize the state',
      'To update the state',
      'To define the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the build() method?',
    [
      'To build the UI',
      'To update the UI',
      'To define the UI',
      'To destroy the UI',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the dispose() method?',
    [
      'To clean up resources',
      'To update the state',
      'To define the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the didUpdateWidget() method?',
    [
      'To react to changes in the widget',
      'To update the widget',
      'To define the widget',
      'To destroy the widget',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the key property?',
    [
      'To uniquely identify widgets',
      'To define the widget',
      'To update the widget',
      'To destroy the widget',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the main() function in Dart?',
    [
      'To serve as the entry point of the application',
      'To define global variables',
      'To handle exceptions',
      'To define classes',
    ],
  ),
  QuizQuestion(
    'What is a Future in Dart?',
    [
      'An object representing a delayed computation',
      'A function that will be executed in the future',
      'A data type for storing dates and times',
      'A class for creating animations',
    ],
  ),
  QuizQuestion(
    'What is a Stream in Dart?',
    [
      'An asynchronous sequence of data',
      'A data type for storing collections of data',
      'A function for handling events',
      'A class for creating animations',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the async keyword in Dart?',
    [
      'To mark a function as asynchronous',
      'To define a function',
      'To handle exceptions',
      'To define classes',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the await keyword in Dart?',
    [
      'To wait for a Future to complete',
      'To define a function',
      'To handle exceptions',
      'To define classes',
    ],
  ),
  QuizQuestion(
    'What is a mixin in Dart?',
    [
      'A way of reusing a class’s code in multiple class hierarchies',
      'A class that can be instantiated',
      'A function that can be overridden',
      'A data type for storing collections of data',
    ],
  ),
  QuizQuestion(
    'What is the difference between const and final in Dart?',
    [
      'const values are compile-time constants, final values can be calculated at runtime',
      'const values can be changed after being assigned, final values cannot',
      'const is used for declaring variables, final is used for declaring classes',
      'There is no difference, they can be used interchangeably',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the then() method in Dart?',
    [
      'To handle the result of a Future',
      'To define a Future',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the catchError() method in Dart?',
    [
      'To handle errors in a Future',
      'To define a Future',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the whenComplete() method in Dart?',
    [
      'To run code after a Future completes',
      'To define a Future',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion('What\'s a Stream in Dart?',
  [
    'A type of Iterable, a sequence of asynchronous events',
    'A sequence of synchronous events',
    'A sequence of events',
    'A sequence of asynchronous data',
  ]),
  QuizQuestion(
    'What is the purpose of the catchError() method in Dart?',
    [
      'To handle errors in a Future or Stream',
      'To throw errors',
      'To log errors',
      'To ignore errors',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the firstWhere() method in Dart?',
    [
      'To find the first element in a collection that satisfies a certain condition',
      'To find the last element in a collection',
      'To find all elements in a collection that satisfy a certain condition',
      'To find the first element in a collection',
    ],
  ),

  QuizQuestion(
    'What is the purpose of the fold() method in Dart?',
    [
      'To combine elements in a Stream into a single value, the return type can be different from the elements',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the where() method in Dart?',
    [
      'To create a new collection with all elements that satisfy a certain condition',
      'To find the first element in a collection that satisfies a certain condition',
      'To find the last element in a collection that satisfies a certain condition',
      'To update elements in a collection that satisfy a certain condition',
    ],
  ),

  QuizQuestion(
    'What is the purpose of the listen() method in Dart?',
    [
      'To listen for events on a Stream',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the any() method in Dart?',
    [
      'To check if at least one element in a collection satisfies a certain condition',
      'To check if all elements in a collection satisfy a certain condition',
      'To find the first element in a collection that satisfies a certain condition',
      'To create a new collection with all elements that satisfy a certain condition',
    ],
  ),

  QuizQuestion(
    'What is the purpose of the map() method in Dart?',
    [
      'To transform elements in a Stream',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the every() method in Dart?',
    [
      'To check if all elements in a collection satisfy a certain condition',
      'To check if at least one element in a collection satisfies a certain condition',
      'To find the first element in a collection that satisfies a certain condition',
      'To create a new collection with all elements that satisfy a certain condition',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the where() method in Dart?',
    [
      'To filter elements in a Stream',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the expand() method in Dart?',
    [
      'To transform elements in a Stream into multiple elements',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the reduce() method in Dart?',
    [
      'To combine elements in a Stream into a single value, the return type can\'t be different from the elements',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the skip() method in Dart?',
    [
      'To skip the first n elements in a Stream',
      'To define a Stream',
      'To update the state',
      'To destroy the state',
    ],
  ),
];
