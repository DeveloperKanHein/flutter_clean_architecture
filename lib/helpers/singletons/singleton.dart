class Singleton {
  static Singleton? _instance;
  Singleton._();
  static Singleton get instance => _instance ??= Singleton._();
}