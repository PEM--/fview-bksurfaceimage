var BkImageSurface = null;

FView.ready(function() {
  libDefine(myRequire, {}, module);
  BkImageSurface = module.exports;
  FView.registerView('BkImageSurface', BkImageSurface, {
    attrUpdate: function(key, value, oldValue, data, firstTime) {
      switch(key) {
        case 'backface':
          if (value) {
            this.view.properties.webkitBackfaceVisibility = 'visible';
            this.view.properties.backfaceVisibility = 'visible';
          }
          break;
        case 'sizemode':
          this.view.setSizeMode(BkImageSurface.SizeMode[value]);
          break;
        case 'positionmode':
          this.view.setPositionMode(BkImageSurface.PositionMode[value]);
          break;
        case 'repeatmode':
          this.view.setRepeatMode(BkImageSurface.RepeatMode[value]);
          break;
      }
    }
  });
});
