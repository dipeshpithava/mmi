package controllers

import (
	"mmi.com/models"
	"github.com/gin-gonic/gin"
	"net/http"
)

type LoginController struct{}
type ApiRequest struct{
    PANNO string `json:"panno" binding:"required"`
}
var LoginModel = new(models.LoginModel)
func (ctrl LoginController) IsUserExists(c *gin.Context){
	var request ApiRequest
	c.BindJSON(&request)
	results,err := LoginModel.IsUserExists(request.PANNO)

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"message": "Could not get data",
			"data" : "",
			"error": err,
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"response": response})
		return
	}

	if len(results) > 0 {
		var response = gin.H{
			"success": bool(true),
			"message": "Existing User",
			"data": "",
			"error": "",
		}
		c.PureJSON(http.StatusOK, gin.H{"response": response})
	}else{
		var response = gin.H{
			"success": bool(false),
			"message": "New User",
			"data": "",
			"error": "",
		}
		c.PureJSON(http.StatusOK, gin.H{"response": response})
	}
}

func (ctrl LoginController) GetUserData(c *gin.Context){
	var request ApiRequest
	c.BindJSON(&request)
	results,err := LoginModel.GetUserData(request.PANNO)

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"message": "Could not get data",
			"data": "",
			"error" : err,
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"response": response})
		return
	}

	if len(results) > 0 {
		var response = gin.H{
			"success": bool(true),
			"message": "Existing User",
			"data": results[0],
			"error" : "",
		}
		c.PureJSON(http.StatusOK, gin.H{"response": response})
	}else{
		var response = gin.H{
			"success": bool(false),
			"message": "Data Not Found",
			"data": "",
			"error" : "",
		}
		c.PureJSON(http.StatusOK, gin.H{"response": response})
	}
}