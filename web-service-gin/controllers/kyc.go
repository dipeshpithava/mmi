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

	c.JSON(http.StatusOK, gin.H{"request": form})
}