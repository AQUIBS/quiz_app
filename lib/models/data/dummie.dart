class SampleData {
  final Map<String, dynamic> data = {
    "ReactQuestions": [
      {
        "question": "Which is the most popular JavaScript framework?",
        "options": ["Angular", "React", "Svelte", "Vue"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which company invented React?",
        "options": ["Google", "Apple", "Netflix", "Facebook"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question": "What's the fundamental building block of React apps?",
        "options": ["Components", "Blocks", "Elements", "Effects"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "What's the name of the syntax we use to describe the UI in React components?",
        "options": ["FBJ", "Babel", "JSX", "ES2015"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "How does data flow naturally in React apps?",
        "options": [
          "From parents to children",
          "From children to parents",
          "Both ways",
          "The developers decides"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How to pass data into a child component?",
        "options": ["State", "Props", "PropTypes", "Parameters"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "When to use derived state?",
        "options": [
          "Whenever the state should not trigger a re-render",
          "Whenever the state can be synchronized with an effect",
          "Whenever the state should be accessible to all components",
          "Whenever the state can be computed from another state variable"
        ],
        "correctOption": 3,
        "points": 30
      },
      {
        "question": "What triggers a UI re-render in React?",
        "options": [
          "Running an effect",
          "Passing props",
          "Updating state",
          "Adding event listeners to DOM elements"
        ],
        "correctOption": 2,
        "points": 20
      },
      {
        "question": "When do we directly \"touch\" the DOM in React?",
        "options": [
          "When we need to listen to an event",
          "When we need to change the UI",
          "When we need to add styles",
          "Almost never"
        ],
        "correctOption": 3,
        "points": 20
      },
      {
        "question": "In what situation do we use a callback to update state?",
        "options": [
          "When updating the state will be slow",
          "When the updated state is very data-intensive",
          "When the state update should happen faster",
          "When the new state depends on the previous state"
        ],
        "correctOption": 3,
        "points": 30
      },
      {
        "question":
            "If we pass a function to useState, when will that function be called?",
        "options": [
          "On each re-render",
          "Each time we update the state",
          "Only on the initial render",
          "The first time we update the state"
        ],
        "correctOption": 2,
        "points": 30
      },
      {
        "question":
            "Which hook to use for an API request on the component's initial render?",
        "options": ["useState", "useEffect", "useRef", "useReducer"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which variables should go into the useEffect dependency array?",
        "options": [
          "Usually none",
          "All our state variables",
          "All state and props referenced in the effect",
          "All variables needed for clean up"
        ],
        "correctOption": 2,
        "points": 30
      },
      {
        "question": "An effect will always run on the initial render.",
        "options": [
          "True",
          "It depends on the dependency array",
          "False",
          "In depends on the code in the effect"
        ],
        "correctOption": 0,
        "points": 30
      },
      {
        "question":
            "When will an effect run if it doesn't have a dependency array?",
        "options": [
          "Only when the component mounts",
          "Only when the component unmounts",
          "The first time the component re-renders",
          "Each time the component is re-rendered"
        ],
        "correctOption": 3,
        "points": 20
      }
    ],
    "PythonQuestions": [
      {
        "question": "Which keyword is used to define a function in Python?",
        "options": ["function", "define", "def", "func"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "How do you start a comment in Python?",
        "options": ["//", "/*", "#", "--"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "Which of these data types is immutable in Python?",
        "options": ["list", "dictionary", "set", "tuple"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question": "What is the output of print(2 ** 3)?",
        "options": ["6", "8", "9", "10"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which module in Python is used to work with regular expressions?",
        "options": ["regex", "pyre", "re", "rex"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "How do you create a variable with the floating number 2.8 in Python?",
        "options": ["x = 2.8", "x == 2.8", "float x = 2.8", "x := 2.8"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which method is used to add an element at the end of a list in Python?",
        "options": ["append()", "add()", "insert()", "extend()"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the correct file extension for Python files?",
        "options": [".python", ".pt", ".pyth", ".py"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question":
            "Which of the following is used to create an empty class in Python?",
        "options": ["pass", "continue", "None", "empty"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How do you insert COMMENTS in Python code?",
        "options": ["/* comment */", "// comment", "# comment", "-- comment"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "How can you get the length of a list in Python?",
        "options": [
          "length(mylist)",
          "len(mylist)",
          "list.size(mylist)",
          "size(mylist)"
        ],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which of the following is a correct syntax to import a module in Python?",
        "options": [
          "import module",
          "import 'module'",
          "include module",
          "require module"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How do you create a dictionary in Python?",
        "options": ["{}", "[]", "()", "<>"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which of the following is a framework for web development in Python?",
        "options": ["Django", "Laravel", "Spring", "Rails"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What does the 'len()' function do?",
        "options": [
          "Returns the length of an object",
          "Deletes an object",
          "Adds an element to an object",
          "Reverses an object"
        ],
        "correctOption": 0,
        "points": 10
      }
    ],
    "JavaQuestions": [
      {
        "question": "Which keyword is used to define a class in Java?",
        "options": ["class", "define", "public", "void"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the extension of Java bytecode files?",
        "options": [".class", ".java", ".byte", ".obj"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which method is the entry point of a Java program?",
        "options": ["start()", "main()", "entry()", "begin()"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "What is the superclass of all classes in Java?",
        "options": ["MainClass", "PrimaryClass", "Object", "BaseClass"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "Which of these is a valid declaration of a main method in Java?",
        "options": [
          "public static void main(String[] args)",
          "public void main(String[] args)",
          "static void main(String args)",
          "void main(String[] args)"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which keyword is used to inherit a class in Java?",
        "options": ["extend", "extends", "implements", "inherit"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which package contains the Random class?",
        "options": ["java.util", "java.io", "java.net", "java.lang"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the output of 9 / 2 in Java?",
        "options": ["4.5", "4", "5", "4.0"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which of the following is not a Java keyword?",
        "options": ["static", "Boolean", "void", "private"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which of these cannot be used for a variable name in Java?",
        "options": ["identifier", "keyword", "variable", "class"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "What is the default value of a boolean variable in Java?",
        "options": ["true", "false", "0", "null"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which method can be used to find the length of a string in Java?",
        "options": ["length()", "size()", "getLength()", "getSize()"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How do you start a single-line comment in Java?",
        "options": ["/*", "//", "#", "<!--"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which of the following is a loop structure in Java?",
        "options": ["for", "while", "do-while", "All of the above"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question": "Which of these is a marker interface in Java?",
        "options": ["Serializable", "Cloneable", "Remote", "All of the above"],
        "correctOption": 3,
        "points": 10
      }
    ],
    "JSQuestions": [
      {
        "question":
            "Which of the following is a correct way to declare a variable in JavaScript?",
        "options": [
          "var myVar;",
          "variable myVar;",
          "v myVar;",
          "declare myVar;"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which company developed JavaScript?",
        "options": ["Microsoft", "Apple", "Netscape", "Sun Microsystems"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "How do you write a comment in JavaScript?",
        "options": [
          "<!-- comment -->",
          "// comment",
          "# comment",
          "/* comment */"
        ],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which method is used to select an element by its ID in JavaScript?",
        "options": [
          "getElementById()",
          "getElementByClass()",
          "querySelector()",
          "getElementsByTagName()"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "What is the correct syntax for referring to an external script called 'script.js'?",
        "options": [
          "<script src='script.js'>",
          "<script href='script.js'>",
          "<script link='script.js'>",
          "<script ref='script.js'>"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which of the following is a JavaScript framework?",
        "options": ["Laravel", "Django", "React", "Rails"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "How do you create an array in JavaScript?",
        "options": [
          "var myArray = [];",
          "var myArray = {};",
          "var myArray = ();",
          "var myArray = <>;"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "How do you round the number 7.25 to the nearest integer in JavaScript?",
        "options": [
          "Math.round(7.25)",
          "Math.rnd(7.25)",
          "round(7.25)",
          "rnd(7.25)"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which operator is used to assign a value to a variable in JavaScript?",
        "options": ["*", "x", "=", "-"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "Which built-in method combines the text of two strings and returns a new string?",
        "options": ["append()", "concat()", "attach()", "combine()"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which symbol is used for comments in JavaScript?",
        "options": ["//", "/*", "#", "<!--"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the correct way to write a JavaScript array?",
        "options": [
          "var colors = ['red', 'green', 'blue']",
          "var colors = 'red', 'green', 'blue'",
          "var colors = (1:'red', 2:'green', 3:'blue')",
          "var colors = 1 = ('red'), 2 = ('green'), 3 = ('blue')"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which event occurs when the user clicks on an HTML element?",
        "options": ["onchange", "onmouseclick", "onclick", "onmouseover"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "What is the correct JavaScript syntax to write 'Hello World'?",
        "options": [
          "document.write('Hello World')",
          "response.write('Hello World')",
          "('Hello World')",
          "document.writeln('Hello World')"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How do you declare a JavaScript variable?",
        "options": [
          "var carName;",
          "variable carName;",
          "v carName;",
          "carName var;"
        ],
        "correctOption": 0,
        "points": 10
      }
    ],
    "CQuestions": [
      {
        "question":
            "Which of the following is the correct syntax to include a user-defined header file in C++?",
        "options": [
          "#include <file>",
          "#include 'file'",
          "include file",
          "#include \"file\""
        ],
        "correctOption": 3,
        "points": 10
      },
      {
        "question":
            "Which of the following is used to create an object of a class in C++?",
        "options": [
          "ClassName objectName;",
          "objectName = new ClassName;",
          "objectName : ClassName;",
          "ClassName(objectName);"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "What is the output of the following code? \nint main() { int x = 10; cout << x; return 0; }",
        "options": ["10", "x", "0", "Compilation Error"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which of the following is not a valid C++ data type?",
        "options": ["int", "float", "boolean", "char"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "What is the correct syntax to declare a pointer in C++?",
        "options": ["int *ptr;", "int ptr;", "int &ptr;", "pointer int ptr;"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which keyword is used to define a constant in C++?",
        "options": ["constant", "const", "define", "static"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which of the following correctly declares an array in C++?",
        "options": [
          "array{10};",
          "array[10];",
          "int array[10];",
          "int array(10);"
        ],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "Which function is used to find the length of a string in C++?",
        "options": ["length()", "strlen()", "size()", "sizeof()"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "Which of the following is a valid loop construct in C++?",
        "options": ["for", "foreach", "repeat", "loop"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What does 'nullptr' represent in C++?",
        "options": [
          "A null pointer",
          "A null character",
          "A void pointer",
          "An undefined variable"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which of the following is a correct way to allocate memory dynamically in C++?",
        "options": [
          "int *ptr = new int;",
          "int ptr = new int;",
          "int *ptr = malloc(sizeof(int));",
          "int ptr = malloc(sizeof(int));"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which keyword is used to return control from a function back to the calling function in C++?",
        "options": ["exit", "break", "continue", "return"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question":
            "Which of the following operators cannot be overloaded in C++?",
        "options": ["+", "=", "::", "++"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "Which access specifier in C++ makes a class member accessible only within the same class?",
        "options": ["public", "private", "protected", "default"],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "What is the purpose of a constructor in C++?",
        "options": [
          "To deallocate memory",
          "To initialize objects",
          "To copy objects",
          "To call other functions"
        ],
        "correctOption": 1,
        "points": 10
      }
    ],
    "FlutterQuestions": [
      {
        "question":
            "Which language is primarily used to write Flutter applications?",
        "options": ["Java", "Kotlin", "Dart", "Swift"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "Which company developed Flutter?",
        "options": ["Apple", "Facebook", "Google", "Microsoft"],
        "correctOption": 2,
        "points": 10
      },
      {
        "question": "What is the command to create a new Flutter project?",
        "options": [
          "flutter new project",
          "flutter create project",
          "flutter create",
          "flutter new"
        ],
        "correctOption": 2,
        "points": 10
      },
      {
        "question":
            "Which widget is used to create an immutable container in Flutter?",
        "options": [
          "Container",
          "StatelessWidget",
          "StatefulWidget",
          "InheritedWidget"
        ],
        "correctOption": 1,
        "points": 10
      },
      {
        "question": "How do you add a package dependency in a Flutter project?",
        "options": [
          "Add it to pubspec.yaml",
          "Add it to dependencies.yaml",
          "Add it to packages.yaml",
          "Add it to flutter.yaml"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the default build method in a StatefulWidget?",
        "options": [
          "@override build",
          "Widget build",
          "Stateful build",
          "createState"
        ],
        "correctOption": 1,
        "points": 10
      },
      {
        "question":
            "Which command is used to run a Flutter app on an emulator or device?",
        "options": [
          "flutter run",
          "flutter start",
          "flutter execute",
          "flutter play"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which widget is used to lay out widgets vertically or horizontally in Flutter?",
        "options": ["Column", "Row", "Stack", "Both Column and Row"],
        "correctOption": 3,
        "points": 10
      },
      {
        "question": "How do you specify an image asset in a Flutter project?",
        "options": [
          "Add it to assets in pubspec.yaml",
          "Add it to images in pubspec.yaml",
          "Add it to resources in pubspec.yaml",
          "Add it to pictures in pubspec.yaml"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which of the following is used to style a Text widget in Flutter?",
        "options": [
          "TextStyle",
          "TextDecoration",
          "FontStyle",
          "FontDecoration"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the use of the Navigator widget in Flutter?",
        "options": [
          "To manage navigation between screens",
          "To add animations",
          "To create a floating action button",
          "To manage state"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "How do you create a new StatefulWidget in Flutter?",
        "options": [
          "Create a class extending StatefulWidget",
          "Create a class extending StatelessWidget",
          "Create a class extending State",
          "Create a class extending FlutterWidget"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "Which widget is used to build a scrolling list of items?",
        "options": ["ListView", "Column", "Row", "Stack"],
        "correctOption": 0,
        "points": 10
      },
      {
        "question": "What is the purpose of the build method in Flutter?",
        "options": [
          "To build the widget tree",
          "To initialize state",
          "To handle user input",
          "To manage animations"
        ],
        "correctOption": 0,
        "points": 10
      },
      {
        "question":
            "Which widget would you use to create an input form in Flutter?",
        "options": ["TextField", "Form", "Input", "Both TextField and Form"],
        "correctOption": 3,
        "points": 10
      }
    ]
  };
}
