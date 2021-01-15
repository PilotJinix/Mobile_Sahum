class decision implements Exception
{
  final String message;

  decision(this.message);

  @override
  String toString() {
    return message;
  }
}