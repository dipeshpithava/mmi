module mmi/web-service-gin

go 1.16

require (
	github.com/aws/aws-sdk-go v1.43.18 // indirect
	github.com/aws/aws-sdk-go-v2/config v1.13.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/dynamodb v1.13.0 // indirect
	github.com/gin-gonic/gin v1.7.6
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/nbio/st v0.0.0-20140626010706-e9e8d9816f32 // indirect
	github.com/ugorji/go v1.2.6 // indirect
	golang.org/x/crypto v0.0.0-20211117183948-ae814b36b871 // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/h2non/gentleman.v2 v2.0.5 // indirect
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
