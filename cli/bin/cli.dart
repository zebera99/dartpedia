import 'dart:io';

const version = '0.0.1'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('dartpedia cli version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  // Add this new function and add ? to arguments type
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here we gooo!');
  print('current article title: $articleTitle');
}

void printUsage() {
  print(
    "The following commands are valid : 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}
