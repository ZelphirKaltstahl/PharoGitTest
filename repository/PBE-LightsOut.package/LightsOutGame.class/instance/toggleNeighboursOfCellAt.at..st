game logic
toggleNeighboursOfCellAt: row at: col
	row > 1
		ifTrue: [ (cells at: row - 1 at: col) toggleState ].
	row < self cellsPerSide 
		ifTrue: [ (cells at: row + 1 at: col) toggleState ].
	col > 1
		ifTrue: [ (cells at: row at: col - 1) toggleState ].
	col < self cellsPerSide 
		ifTrue: [ (cells at: row at: col + 1) toggleState ]