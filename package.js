Package.describe({
  name: 'pierreeric:fview-bksurfaceimage',
  summary: 'Adaptive image plugin for Meteor\'s famous-views.',
  version: '0.1.0',
  git: 'https://github.com/PEM--/fview-bksurfaceimage'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use('mjn:famous@0.3.0_5', 'client', { weak: true });
  api.use('raix:famono@0.9.14', { weak: true });
  api.use('gadicohen:famous-views@0.1.24');
  api.addFiles(
    [
      'lib/pre.js',
      'lib/famous-bkimagesurface/BkImageSurface.js',
      'lib/post.js'
    ], 'client');
});
