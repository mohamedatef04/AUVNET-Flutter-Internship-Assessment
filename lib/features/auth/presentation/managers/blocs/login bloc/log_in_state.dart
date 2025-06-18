class LogInState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const LogInState({
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
  });

  LogInState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage,
  }) {
    return LogInState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }

  @override
  String toString() {
    return 'LogInState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage)';
  }
}
