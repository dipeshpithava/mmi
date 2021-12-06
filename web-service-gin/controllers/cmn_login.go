package controllers

import (
	"mmi.com/models"
	"github.com/gin-gonic/gin"
	"net/http"
)

type LoginController struct{}

var LoginModel = new(models.LoginModel)
func (ctrl LoginController) IsUserExists(c *gin.Context){
	results,err := LoginModel.IsUserExists()

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"message": "Could not get data",
			"data" : err,
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"api_response": response})
		return
	}

		var response = gin.H{
			"success": bool(true),
			"response": gin.H{
				"api_name" : "GetCommonMaster",
				"data" : results,
			},
		}

	c.PureJSON(http.StatusOK, gin.H{"api_response": response})
}
