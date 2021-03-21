class Stack<T> {
  final List<T> _stack;
  final int _maxSize;
  Stack([this._maxSize]) : _stack = [];

  Stack.fromArray(this._stack, [this._maxSize]) {
    if (_maxSize != null && _maxSize <= _stack.length) {
      throw Exception(
          "Stack's maximum size is smaller than the initial stack size");
    }
  }

  T pop() {
    if (_stack.isEmpty) {
      throw Exception('Empty stack');
    } else {
      return _stack.removeLast();
    }
  }

  void push(T elt) {
    if (_maxSize != null && _stack.length == _maxSize) {
      throw Exception('Stack is full');
    }

    _stack.add(elt);

    ;
  }

  int size() => _stack.length;

  T peek() => _stack.isNotEmpty ? _stack.last : throw Exception('Empty stack');

  // DEBUG
  @override
  String toString() {
    var arr = [];
    for (var i = 0; i < _stack.length; i++) {
      arr.add(_stack[i].toString());
    }
    return arr.toString();
  }
}
