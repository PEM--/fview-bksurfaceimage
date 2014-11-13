var BkImageSurface = null;

FView.ready(function() {
  libDefine(myRequire, {}, module);
  BkImageSurface = module.exports;
  FView.registerView('BkImageSurface', BkImageSurface, {
    attrUpdate: function(key, value, oldValue, data, firstTime) {
      switch(key) {
        case 'sizemode':
          this.view.setSizeMode(BkImageSurface.SizeMode[value]);
          break;
        case 'backface':
          if (value) {
            this.view.properties.webkitBackfaceVisibility = 'visible';
            this.view.properties.backfaceVisibility = 'visible';
          }
          break;
      }
    }
  });
});
