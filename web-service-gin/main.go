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
		v1.GET("/getCommonMaster", common.GetCommonMaster)
		login := new(controllers.LoginController)
		v1.POST("/isUserExists", login.IsUserExists)
	}
	r.Run(":8080")
}



func CheckError(err error) {
    if err != nil {
        panic(err)
    }
}


