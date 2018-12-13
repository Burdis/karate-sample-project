function() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'local';
  }
  var config = {
    env: env,
  }
  if (env == 'local') {
    config.baseUrl = 'https://jsonplaceholder.typicode.com/';
    config.dataDir = '../data/';
  }
  return config;
}