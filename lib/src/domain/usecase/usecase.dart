const usecase = _UseCase();

class _UseCase extends UseCase {
  const _UseCase();

  @override
  call() {}
}

abstract class UseCase {
  const UseCase();

  call();
}
