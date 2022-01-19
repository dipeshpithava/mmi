package controllers

import (
	"github.com/gin-gonic/gin"
	"gopkg.in/h2non/gentleman.v2"
	"gopkg.in/h2non/gentleman.v2/plugins/body"
	"gopkg.in/h2non/gentleman.v2/plugins/bodytype"
	"fmt"
	"net/http"
)

type NseServiceController struct{}

func (ctrl NseServiceController) IINDetails(c *gin.Context) {
	cli := gentleman.New()

	data := `<NMFIIService><service_request><appln_id>MFS118681</appln_id><password>G8KZAHVH</password><broker_code>ARN-118681</broker_code><iin>5012130843</iin></service_request></NMFIIService>`
	cli.Use(body.String(data))

	cli.Use(bodytype.Type("xml"))

	res, err := cli.Request().Method("POST").URL("https://www.nsenmf.com/NMFIITrxnService/NMFTrxnService/IINDETAILS").Send()
	if err != nil {
	  fmt.Printf("Request error: %s\n", err)
	  return
	}
	if !res.Ok {
	  fmt.Printf("Invalid server response: %d\n", res.StatusCode)
	  return
	}

	fmt.Printf("Status: %d\n", res.StatusCode)
	fmt.Printf("Body: %s", res.String())
	c.XML(http.StatusOK, res.String())
}
