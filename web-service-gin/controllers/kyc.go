package controllers

import (
	"mmi.com/forms"
	"github.com/gin-gonic/gin"
	"net/http"
)

type KycController struct{}

var kycForm = new(forms.KycForm)

func (ctrl KycController) CVLApi(c *gin.Context) {
	var form forms.RequestMaster
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		message := kycForm.GetCVLDataRequestValidate(validationErr)
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"message": message})
		return
	}

	if form.ApiName != "GET_CVL_DATA" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "API DETAILS INCORRECT"})
		return
	}

	var data = gin.H{
		"kyc_name": "Test Yadav",
		"pan": form.Request.PAN,
		"kyc_status": "Y",
		"msg" : "",
	}

	var response = gin.H{
		"success": bool(true),
		"response": gin.H{
			"api_name" : form.ApiName,
			"data" : data,
		},
	}

	c.PureJSON(http.StatusOK, gin.H{"api_response": response})
}
