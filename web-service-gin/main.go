package main

import (
	"mmi.com/controllers"
	"github.com/gin-gonic/gin"
	"mmi.com/db"
)



func main() {
    
    db.Init()
    
    r := gin.Default()
    v1 := r.Group("/v1")
	{
		common := new(controllers.CommonController)
		login := new(controllers.LoginController)
		kyc := new(controllers.KycController)
		dynamo := new(controllers.DynamoController)
		v1.POST("/getCommonMaster", common.GetCommonMaster)
		v1.POST("/isUserExists", login.IsUserExists)
		v1.POST("/getUserData", login.GetUserData)
		v1.POST("/getCVLData", kyc.CVLApi)
		v1.GET("/CreateTable", dynamo.TestDynamo)
	}
	r.Run(":8080")
}







