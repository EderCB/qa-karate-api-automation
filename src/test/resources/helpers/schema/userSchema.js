function fn() {
  return {
    createdUserResponse: {
      message: 'Cadastro realizado com sucesso',
      _id: '#string'
    },

    userData: {
      _id: '#string',
      nome: '#string',
      email: '#regex ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$',
      password: '#string',
      administrador: '#string'
    },

    updatedUserResponse: {
      message: 'Registro alterado com sucesso'
    },

    deletedUserResponse: {
      message: 'Registro excluído com sucesso'
    },

    createUserMissingFieldsResponse: {
      nome: 'nome é obrigatório',
      email: 'email é obrigatório',
      password: 'password é obrigatório',
      administrador: 'administrador é obrigatório'
    },

    duplicateEmailResponse: {
      message: 'Este email já está sendo usado'
    },

    userNotFoundResponse: {
      message: 'Usuário não encontrado'
    },

    deletedUserNotFoundResponse: {
      message: 'Nenhum registro excluído'
    }
  };
}