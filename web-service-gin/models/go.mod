module mmi.com/models

go 1.16

require (
	github.com/lib/pq v1.10.4
	mmi.com/db v0.0.0-00010101000000-000000000000
)

replace mmi.com/db => ../db/
