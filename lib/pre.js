myRequire = function(what) {
  switch(what) {
    case 'famous/core/Surface': return famous.core.Surface;
    default:
      throw new Error('New require of ' + what);
  }
}

module = {};
libDefine = null;

define = function(func) {
  libDefine = func;
}
