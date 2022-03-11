package controllers

import (
	"mmi.com/models"
	"github.com/gin-gonic/gin"
	"net/http"
	"mmi.com/forms"
)

type LoginController struct{}
type ApiRequest struct{
    PAN string `json:"pan" binding:"required,min=10,max=10"`
}

var LoginModel = new(models.LoginModel)
func (ctrl LoginController) IsUserExists(c *gin.Context){
	var form forms.RequestMaster
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		message := kycForm.GetCVLDataRequestValidate(validationErr)
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"message": message})
		return
	}
	if form.ApiName != "IS_USER_EXISTS" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "wrong api details"})
		return
	}
	
	results,err := LoginModel.IsUserExists(form.Request.PAN)

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"api_name": form.ApiName,
			"data" : "Could not get data",
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"api_response": response})
		return
	}

	if len(results) > 0 {
		var response = gin.H{
			"success": bool(true),
			"api_name": form.ApiName,
			"data": "Existing User",
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}else{
		var response = gin.H{
			"success": bool(false),
			"api_name": form.ApiName,
			"data": "New User",
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}
}

func (ctrl LoginController) SignIn(c *gin.Context){
	var form forms.RequestMasterSignIn
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		message := kycForm.GetSignInDataRequestValidate(validationErr)
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"message": message})
		return
	}
	if form.ApiName != "SIGN_IN" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "wrong api details"})
		return
	}
	
	results,err := LoginModel.SignIn(form.Request.PAN, form.Request.Password)

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"api_name": form.ApiName,
			"data" : "Invalid PAN / Password",
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"api_response": response})
		return
	}

	if len(results) > 0 {
		var response = gin.H{
			"success": bool(true),
			"api_name": form.ApiName,
			"data": "Successfully SignIn",
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}else{
		var response = gin.H{
			"success": bool(false),
			"api_name": form.ApiName,
			"data": "Invalid PAN / Password",
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}
}

func (ctrl LoginController) GetUserData(c *gin.Context){
	var request ApiRequest
	c.BindJSON(&request)
	results,err := LoginModel.GetUserData(request.PAN)

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"message": "Could not get data",
			"data": "",
			"error" : err,
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"api_response": response})
		return
	}

	if len(results) > 0 {
		var response = gin.H{
			"success": bool(true),
			"data": results[0],
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}else{
		var response = gin.H{
			"success": bool(false),
			"data": "Data Not Found",
		}
		c.PureJSON(http.StatusOK, gin.H{"api_response": response})
	}
}