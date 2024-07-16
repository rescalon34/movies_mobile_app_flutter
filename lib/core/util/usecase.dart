
/// Generic class to execute common use case call method.
abstract class UseCase<Type, Params> {
  Future<Type> call({Params params});
}
