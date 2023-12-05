class Validation {
  static String? validationSenha(p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Campo obrigatório';
    }
    if (p0.length < 2) {
      return 'A senha deve ter no mínimo 2 caracteres';
    }
    if (p0.length > 21) {
      return 'A senha deve ter no máximo 20 caracteres';
    }
    if (p0.endsWith(' ')) {
      return 'O senha não pode terminar com espaço';
    }
    if (p0.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'A senha não pode conter caracteres especiais';
    }

    return null;
  }

  static String? validationLogin(p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Campo obrigatório';
    }
    if (p0.length > 21) {
      return 'O email deve ter no máximo 20 caracteres';
    }

    if (p0.endsWith(' ')) {
      return 'O email não pode terminar com espaço';
    }

    return null;
  }
}
