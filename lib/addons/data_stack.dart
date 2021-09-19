import 'dart:collection';

class DataStack<T> {
  final _queue = Queue<T>();

  void push(T element) {
    _queue.addLast(element);
  }

  T pop() {
    final T lastElement = _queue.last;
    _queue.removeLast();
    return lastElement;
  }

  T peek() {
    return _queue.last;
  }

  void clear() {
    _queue.clear();
  }

  bool get isEmpty => _queue.isEmpty;
}