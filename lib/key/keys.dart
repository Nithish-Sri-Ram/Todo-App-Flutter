import 'package:flutter/material.dart';
import 'package:todo/key/checkable_item.dart';

class Todo {
  const Todo(this.priority, this.text);
  final String text;
  final Priority priority;
}

class Keys extends StatefulWidget {
  const Keys({super.key});
  @override
  State<Keys> createState() {
    return _KeysState();
  }
}

class _KeysState extends State<Keys> {
  var _order = 'asc';
  final _todos = [
    const Todo(Priority.urgent, 'Learn Flutter'),
    const Todo(Priority.normal, 'Practice Flutter'),
    const Todo(Priority.low, 'Learn other courses'),
  ];

  List<Todo> get _orderedTodos {
    final sortedTodos = List.of(_todos);
    sortedTodos.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComesAfterA : -bComesAfterA;
    });
    return sortedTodos;
  }

  void _changeOrder() {
    setState(() {
      _order = _order == 'asc' ? 'desc' : 'asc';
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: _changeOrder,
            icon: Icon(
                _order == 'asc' ? Icons.arrow_downward : Icons.arrow_upward),
            label: Text('Sort ${_order == 'asc' ? 'Decending' : 'Ascending'}'),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              for (final todo in _orderedTodos)
                CheckableItem(
                  key: ValueKey(todo.text), // or you can use an ObjectKey(todo),
                  todo.text,
                  todo.priority,
                )
            ],
          ),
        ),
      ],
    );
  }
}