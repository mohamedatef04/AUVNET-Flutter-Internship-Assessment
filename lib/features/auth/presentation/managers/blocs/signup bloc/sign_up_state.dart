class SignUpState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const SignUpState({
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
  });

  SignUpState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage,
  }) {
    return SignUpState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }

  @override
  String toString() {
    return 'SignUpState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage)';
  }
}
