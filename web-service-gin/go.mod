module mmi/web-service-gin

go 1.16

require (
	github.com/gin-gonic/gin v1.7.6
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/ugorji/go v1.2.6 // indirect
	golang.org/x/crypto v0.0.0-20211117183948-ae814b36b871 // indirect
	golang.org/x/sys v0.0.0-20211123173158-ef496fb156ab // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	mmi.com/controllers v0.0.0-00010101000000-000000000000
	mmi.com/db v0.0.0-00010101000000-000000000000
	mmi.com/forms v0.0.0-00010101000000-000000000000 // indirect
	mmi.com/models v0.0.0-00010101000000-000000000000 // indirect
)

replace mmi.com/controllers => ./controllers/

replace mmi.com/models => ./models/

replace mmi.com/db => ./db/

replace mmi.com/testgo => ./testgo/

replace mmi.com/forms => ./forms/
