module mmi/web-service-gin

go 1.16

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/golang/protobuf v1.4.3 // indirect
	github.com/google/go-cmp v0.5.5 // indirect
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/stretchr/testify v1.7.0 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519 // indirect
	golang.org/x/sys v0.0.0-20210923061019-b8560ed6a9b7 // indirect
	google.golang.org/protobuf v1.25.0 // indirect
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
	gopkg.in/yaml.v2 v2.3.0 // indirect
	mmi.com/controllers v0.0.0-00010101000000-000000000000
	mmi.com/db v0.0.0-00010101000000-000000000000
	mmi.com/models v0.0.0-00010101000000-000000000000 // indirect
)

replace mmi.com/controllers => ./controllers/

replace mmi.com/models => ./models/

replace mmi.com/db => ./db/
