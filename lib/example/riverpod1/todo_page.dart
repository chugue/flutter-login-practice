// 2. 위젯을 ConsumerWidget으로 만들면 Provider에 접근할 수 있습니다.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_app/example/riverpod1/todo.dart';

class TodoPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Description: ${todo.description}'),
            Text('Completed: ${todo.isCompleted ? "Yes" : "No"}'),
          ],
        ),
      ),
    );
  }
}
