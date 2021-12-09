module mmi.com/controllers

go 1.16

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/lib/pq v1.10.4
)

replace mmi.com/models => ../models/

replace mmi.com/forms => ../forms/
