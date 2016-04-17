# Prototyping with Framer

# Create a background
new BackgroundLayer backgroundColor: "#151517"

# Create a layer with the Framer logo
logo = new Layer
  width: 128
  height: 128
  image: "images/icon.png"
logo.center()

# Create additional states (the original state is 'default')
logo.states.add
  second:
    y: 200
    scale: 1.5
    rotation: 225
  third:
    y: 300
    scale: 0.5
    blur: 25

# Create a spring animation
logo.states.animationOptions =
  curve: "spring(250,25,0)"

# Animate to the next state on click
logo.on Events.Click, ->
  logo.states.next()
