var BkImageSurface = null;

FView.ready(function() {
  libDefine(myRequire, {}, module);
  BkImageSurface = module.exports;
  FView.registerView('BkImageSurface', BkImageSurface);
})
