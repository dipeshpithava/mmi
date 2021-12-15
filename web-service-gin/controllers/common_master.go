package controllers

import (
	"mmi.com/models"
	"github.com/gin-gonic/gin"
	"net/http"
)

type ApiJsonResponose struct{
	Status string `json:"status"`
	ApiName string `json:"api_name"` 
	Data map[string][]JsonData `json:"data"` 
}

type CommonRequestMaster struct {
	ApiName string `json:"api_name" binding:"required"`
}

type JsonData struct{
	Label string `json:"label"`
	Value string `json:"value"`
}
type StructToJsonSliceMap map[string][]JsonData

type CommonController struct{}

var MFCommonModel = new(models.MFCommonModel)
func (ctrl CommonController) GetCommonMaster(c *gin.Context){
	var json CommonRequestMaster

	if err := c.ShouldBindJSON(&json); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if json.ApiName != "GET_COMMON_MASTER" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "API DETAILS INCORRECT"})
		return
	}

	results,err := MFCommonModel.GetCommonMFAll()

	catToItemSlice := StructToJsonSliceMap{}
	for _, value := range results{
		catToItemSlice[value.Typedet] = append(catToItemSlice[value.Typedet],JsonData{Label : value.Codedesc,Value : value.Nsecode})
	}

	if err != nil {
		var response = gin.H{
			"success": bool(false),
			"message": "Could not get data",
			"data" : catToItemSlice,
		}
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"api_response": response})
		return
	}

		var response = gin.H{
			"success": bool(true),
			"response": gin.H{
				"api_name" : "GetCommonMaster",
				"data" : catToItemSlice,
			},
		}

	// apiResponse := ApiJsonResponose{"Success","GetCommonMaster",catToItemSlice}
	c.PureJSON(http.StatusOK, gin.H{"api_response": response})
}
