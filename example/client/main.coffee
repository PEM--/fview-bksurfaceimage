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
    Engine.on 'prerender', ->
      now = new Date
      rotation = Transform.rotateY (now - startDate)/(180*Math.PI)
      mod1.setTransform rotation
      mod2.setTransform rotation
  , 5000

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
      code: "+BkImageSurface"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'Backface added'
      code: "+BkImageSurface backface='true'"
      backface: true
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'SizeMode: AUTO'
      code: "+BkImageSurface sizemode='AUTO'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'SizeMode: FILL (default)'
      code: "+BkImageSurface sizemode='FILL'"
      backface: false
      sizemode: 'FILL'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'SizeMode: ASPECTFILL'
      code: "+BkImageSurface sizemode='ASPECTFILL'"
      backface: false
      sizemode: 'ASPECTFILL'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'SizeMode: ASPECTFIT'
      code: "+BkImageSurface sizemode='ASPECTFIT'"
      backface: false
      sizemode: 'ASPECTFIT'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: CENTER'
      code: "+BkImageSurface positionmode='CENTER'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: LEFT'
      code: "+BkImageSurface positionmode='LEFT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'LEFT'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: RIGHT'
      code: "+BkImageSurface positionmode='RIGHT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'RIGHT'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: TOP'
      code: "+BkImageSurface positionmode='TOP'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'TOP'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: BOTTOM'
      code: "+BkImageSurface positionmode='BOTTOM'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'BOTTOM'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: TOPLEFT'
      code: "+BkImageSurface positionmode='TOPLEFT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'TOPLEFT'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: TOPRIGHT'
      code: "+BkImageSurface positionmode='TOPRIGHT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'TOPRIGHT'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: BOTTOMLEFT'
      code: "+BkImageSurface positionmode='BOTTOMLEFT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'BOTTOMLEFT'
      repeatmode: 'NONE'
    }
    {
      desc: 'PositionMode: BOTTOMRIGHT'
      code: "+BkImageSurface positionmode='BOTTOMRIGHT'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'BOTTOMRIGHT'
      repeatmode: 'NONE'
    }
    {
      desc: 'RepeatMode: NONE (default)'
      code: "+BkImageSurface repeatnmode='NONE'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'NONE'
    }
    {
      desc: 'RepeatMode: HORIZONTAL'
      code: "+BkImageSurface repeatnmode='HORIZONTAL'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'HORIZONTAL'
    }
    {
      desc: 'RepeatMode: VERTICAL'
      code: "+BkImageSurface repeatnmode='VERTICAL'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'VERTICAL'
    }
    {
      desc: 'RepeatMode: BOTH'
      code: "+BkImageSurface repeatnmode='BOTH'"
      backface: false
      sizemode: 'AUTO'
      positionmode: 'CENTER'
      repeatmode: 'BOTH'
    }
  ]
