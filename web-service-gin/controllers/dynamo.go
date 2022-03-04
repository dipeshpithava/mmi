package controllers

import (
	"github.com/gin-gonic/gin"
	"log"
	ddb "mmi.com/db"
)

const tableName = "go-dynamodb-onboarding-data"

type DynamoController struct{}

func (ctrl DynamoController) TestDynamo(c *gin.Context) {
	log.Println("starting")
	d := ddb.CreateLocalClient()
	ddb.CreateTableIfNotExists(d, tableName)
}