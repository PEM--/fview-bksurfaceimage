css = new CSSC
css
.add '.red-border', border: "#{CSSC.px 1} solid #{CSSC.red}"
.add ['p', 'pre'],
  textAlign: 'center'
  margin: 0
  padding: 0
.add 'pre', fontSize: CSSC.px 11

# Set FView logging at its bare minimum
Logger.setLevel 'famous-views', 'info'

# Polyfills are necessary if you are using raix:famono
famous.polyfills

FView.ready ->
  console.info "%c\nfamous-views started\n", \
    "font-weight: 300; color: #ec5f3e; font-size: x-large; \
    font-family: 'Lato', 'Helvetica Neue', Helvetica, Arial, sans-serif; \
    -webkit-font-smoothing: antialiased;"

Template.picts.rendered = ->
  scrollview = FView.byId 'scrollview'
  Engine = famous.core.Engine
  Engine.pipe scrollview.view
  flexgrid = scrollview.children[0]
  sequence = flexgrid.sequence
  Timer = famous.utilities.Timer
  Transform = famous.core.Transform
  Timer.setTimeout ->
    startDate = new Date
    mod1 = sequence._sequence[1].children[1].children[1].modifier
    mod2 = sequence._sequence[2].children[1].children[1].modifier
    console.log mod1, mod2
    Engine.on 'prerender', ->
      now = new Date
      rotation = Transform.rotateY (now - startDate)/(180*Math.PI)
      mod1.setTransform rotation
      mod2.setTransform rotation
  , 1000

Template.picts.helpers
  # TODO backface  with rotation, sizemode, positionmode, repeatmode
  picts: [
    {
      desc: 'Default value filled with a 200x200 img'
      code: "+BkImageSurface content='...'"
      backface: false
      sizemode: 'FILL'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'Default has no backface'
      code: "+BkImageSurface content='...'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'Backface added'
      code: "+BkImageSurface backface='true' content='...'"
      backface: true
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
  ]
