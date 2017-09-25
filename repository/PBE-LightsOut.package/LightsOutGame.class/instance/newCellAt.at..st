initialization
newCellAt: row at: col
	"Create a cell for position (row,col) and add it to my on-screen
	representation at the appropriate screen position. Answer the
	new cell"

	| aCell origin |
	aCell := LightsOutCell new.
	origin := self innerBounds origin.
	self addMorph: aCell.
	aCell position: ((row - 1) * aCell width) @ ((col - 1) * aCell height) + origin.
	aCell mouseAction: [ self toggleNeighboursOfCellAt: row at: col ].
	^ aCell