initialization
initialize
	"I am initializing the objects of class LightsOutCell.
	I set the following values:
	label: the label shown with the Morph
	borderWidth: the width of the border around the Morph
	bounds: the size of the Morph
	offColor: the color of a deactivated LightsOutCell
	onColor: the color of an activated LightsOutCell"
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff .