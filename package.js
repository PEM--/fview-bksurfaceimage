Package.describe({
  name: 'pierreeric:fview-bkimage',
  summary: ' /* Fill me in! */ ',
  version: '1.0.0',
  git: ' /* Fill me in! */ '
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.addFiles('pierreeric:fview-bkimage.js');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:fview-bkimage');
  api.addFiles('pierreeric:fview-bkimage-tests.js');
});
