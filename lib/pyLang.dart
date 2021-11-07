// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'quesBank.dart';

class PyLang {
  List<Question> quesBank = [
    Question(
        q: 'What is a correct syntax to output "Hello World" in Pyhton?', a: 1),
    Question(q: 'How do you insert COMMENTS in Python code?', a: 1),
    Question(q: 'What is the correct file extension for Python files?', a: 3),
    Question(
        q: 'Which method can be used to remove any whitespace from both the beginning and the end of a string?',
        a: 2),
    Question(q: 'Which operator is used to multiply numbers?', a: 4),
    Question(
        q: 'Which method can be used to return a string in upper case letters?',
        a: 3),
    Question(q: 'Which operator can be used to compare two values?', a: 3),
    Question(
        q: 'Which collection is ordered, changeable, and allows duplicate members?',
        a: 1),
    Question(q: 'How do you start writing a while loop in Python?', a: 4),
    Question(q: 'Which statement is used to stop a loop?', a: 1),
  ];

  List<String> opt = [
    'print("Hello World")',
    'echo("Hello World");',
    'p("Hello World")',
    'echo "Hello World"',
    '#This is a comment',
    '// This is a comment ',
    '/*This is a comment*/',
    '@ This is a comment',
    '.pyht',
    '.pt',
    '.py',
    '.pyt',
    'trim()',
    'strip()',
    'len()',
    'ptrim',
    'X',
    '#',
    '%',
    '*',
    'upperCase()',
    'touppercase()',
    'upper()',
    'toUpperCase()',
    '><',
    '=',
    '==',
    '<>',
    'LIST',
    'DICTIONARY',
    'SET',
    'TUPLE',
    'while (x > y)',
    'while x > y {',
    'x > y while {',
    'while x > y:',
    'stop',
    'exit',
    'return',
    'break',
  ];
}
