# BkSurfaceImage - Adaptive images
A plugin for [famous-views](http://famous-views.meteor.com).

This plugin brings [famous-bksurfaceimage](https://github.com/IjzerenHein/famous-bkimagesurface) in Blaze or Jade templating for [Meteor.js](https://www.meteor.com).

![fview-bkimagesurface](https://raw.githubusercontent.com/PEM--/fview-bksurfaceimage/master/doc/bkimagesurface.png)

As the author of the component, [Hein Rutjes](https://github.com/IjzerenHein) says it:
> BkImageSurface adds support for sizing strategies such as AspectFit and AspectFill for displaying images with [famo.us](http://famo.us). It uses a `div` with a background-image rather than a `img` tag.

**demo**: [fview-bksurfaceimage](http://fview-bksurfaceimage.meteor.com)

## Usage
Starts with the usual and add some packages:
```bash
meteor create mydevices
cd mydevices
mkdir client
meteor add gadicohen:famous-views pierreeric:fview-bksurfaceimage
# From here you can choose your favorite Famo.us provider.
# Mine is raix:famono but it works equally fine with mjn:famous.
meteor add raix:famono
```

> Note that [raix:famono](https://atmospherejs.com/raix/famono) is not only a Famo.us provider. You can use it to import Bower packages, raw Github repos, CDN libraries and local libraries. Putting D3.js, Sortable, Velocity, jQueryUI... in Meteor with it, is a no brainer. A must :star:

You can choose to write your HTML templates with Blaze or
with [Maxime Quandalle's Jade](https://github.com/mquandalle/meteor-jade).
```bash
meteor add mquandalle:jade
```

For your logic, you can write yours in vanilla JS or in [CoffeeScript](https://atmospherejs.com/meteor/coffeescript):
```bash
meteor add coffeescript
```

And then in `client` directory, call your FlexGrid filling it with either a static set of surfaces or a reactive one extracted from your MongoDB:
```jade
+BkImageSurface sizemode='ASPECTFILL' positionmode='BOTTOM' content='/myhighresimage.jpg'
```
With the following attributes and the default values:
* `content`: The URL of your background image.
* `backface`: false by default, add back-face visible once set to true.
* `sizemode`:
  * `AUTO`: Keeps the original image dimensions.
  * `FILL`: Default, fills the image to the size of the div.
  * `ASPECTFILL`: (cover) Fills the div with the image while keeping correct image aspect ratio (crops if neccesary).
  * `ASPECTFIT`: (contain) Fits the whole image in the div while keeping correct image aspect ratio.
* `positionmode`:
  * `CENTER`: Default, Centers the image in the div.
  * `LEFT`: Left aligns the image in the div.
  * `RIGHT`: Right aligns the image in the div.
  * `TOP`: Top aligns the image in the div.
  * `BOTTOM`: Bottom aligns the image in the div.
  * `TOPLEFT`: Aligns the image in the top-left corner of the div.
  * `TOPRIGHT`: Aligns the image in the top-right corner of the div.
  * `BOTTOMLEFT`: Aligns the image in the bottom-left corner of the div.
  * `BOTTOMRIGHT`: Aligns the image in the bottom-right corner of the div.
* `repeatmode`:
  * `NONE`: Default, no image-repeat.
  * `HORIZONTAL`: Image is repeated horizontally.
  * `VERTICAL`: Image is repeated vertically.
  * `BOTH`: Image is repeated both horizontally and vertically.
