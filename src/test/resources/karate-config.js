function fn() {
  karate.configure('logPrettyRequest', false);
  karate.configure('logPrettyResponse', false);
  karate.configure('printEnabled', true);  // Enable print statements
  return {};
}