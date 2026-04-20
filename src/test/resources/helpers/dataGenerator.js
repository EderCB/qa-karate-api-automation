function fn() {
  var random = Math.floor(Math.random() * 100000);

  return {
    nome: 'User ' + random,
    email: 'user' + random + '@test.com',
    password: '' + random + '',
    administrador: 'false'
  }
}