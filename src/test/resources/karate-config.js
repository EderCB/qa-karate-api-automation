function fn() {
  var env = karate.env || 'dev';
  var config = {
    baseUrl: 'https://serverest.dev'
  };
  if (env === 'staging') {
    config.baseUrl = 'https://serverest.dev';
  }
  return config;
}