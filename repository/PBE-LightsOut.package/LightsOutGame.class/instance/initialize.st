initialization
initialize
	"initialize the LightsOutGame"

	| sampleCell width height n |
	super initialize .
	n := self cellsPerSide .
	sampleCell := LightsOutCell new .
	width := sampleCell width .
	height := sampleCell height .
	self bounds: (5 @ 5 extent: (width * n) @ (height * n) + (2 * self borderWidth)).
	cells := Matrix new: n tabulate: [ :row :col | self newCellAt: row at: col ]