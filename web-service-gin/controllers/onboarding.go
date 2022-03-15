package controllers

import (
	"mmi.com/forms"
	"github.com/gin-gonic/gin"
	"net/http"
	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/service/dynamodb"
	"github.com/aws/aws-sdk-go-v2/service/dynamodb/types"
	ddb "mmi.com/db"
	"context"
	"log"
)

type OnboardingController struct{}

var OboardingForm = new(forms.OboardingForm)

func (ctrl OnboardingController) StorePersonalData(c *gin.Context) {
	var form forms.RequestPersonalMaster
	d := ddb.CreateLocalClient()
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": validationErr.Error()})
		return
	}

	if form.ApiName != "POST_PERSONAL_DATA" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "API DETAILS INCORRECT"})
		return
	}


	item := map[string]types.AttributeValue{
		"PK":     &types.AttributeValueMemberS{Value: "AJCPT7078K"},
		"SK":     &types.AttributeValueMemberS{Value: "3"},
		"Filler": &types.AttributeValueMemberS{Value: form.Request},
	}
	err := putItem(d, tableName, item)
	if err != nil {
		log.Fatal("failed to put item", err)
	}

	// var data = gin.H{
	// 	"kyc_name": "Test Yadav",
	// 	"pan": form.Request.PAN,
	// 	"kyc_status": "Y",
	// 	"msg" : "",
	// }

	// var response = gin.H{
	// 	"success": bool(true),
	// 	"response": gin.H{
	// 		"api_name" : form.ApiName,
	// 		"data" : data,
	// 	},
	// }

	c.PureJSON(http.StatusOK, gin.H{"api_response": form.Request})
}

func putItem(d *dynamodb.Client, tableName string, item map[string]types.AttributeValue) error {
	_, err := d.PutItem(context.TODO(), &dynamodb.PutItemInput{
		TableName:           aws.String(tableName),
		Item:                item,
		ConditionExpression: aws.String("attribute_not_exists(PK)"),
	})
	return err
}