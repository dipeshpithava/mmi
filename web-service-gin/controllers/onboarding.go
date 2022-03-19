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
	"encoding/json"
)

type OnboardingController struct{}

var OboardingForm = new(forms.OboardingForm)
type DynamoStructOnboarding struct {
	PK          string `dynamodbav:"PK"`
	SK          string `dynamodbav:"SK"`
	Filler      string `dynamodbav:"Filler"`
}

func (ctrl OnboardingController) StorePersonalData(c *gin.Context) {
	var form forms.RequestPersonalMaster
	d := ddb.CreateLocalClient()
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": validationErr.Error()})
		return
	}

	if form.ApiName != "STORE_PERSONAL_DATA" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "API DETAILS INCORRECT"})
		return
	}

	out, err := json.Marshal(form.Request)
	if err != nil {
		// panic(err)
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": err})
	}

	item := DynamoStructOnboarding{
		"AJCPT7078O",
		"11",
		string(out),
	}


	// Testing PUTITEM CODE
	// item := map[string]types.AttributeValue{
	// 	"PK":     &types.AttributeValueMemberS{Value: "AJCPT7078Z"},
	// 	"SK":     &types.AttributeValueMemberS{Value: "10"},
	// 	"Filler": &types.AttributeValueMemberS{Value: string(out)},
	// }

	// fmt.Print(item)
	// fmt.Print(d)

	errL := UpdateItem(d, tableName, item)
	if errL != nil {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": errL})
	}
	var response = gin.H{
		"success": bool(true),
		"response": gin.H{
			"api_name" : form.ApiName,
			"msg" : "data saved Successfully",
		},
	}

	c.PureJSON(http.StatusOK, gin.H{"api_response": response})
}

func (ctrl OnboardingController) StoreNomineeData(c *gin.Context) {
	var form forms.RequestNomineeMaster
	d := ddb.CreateLocalClient()
	if validationErr := c.ShouldBindJSON(&form); validationErr != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": validationErr.Error()})
		return
	}

	if form.ApiName != "STORE_NOMINEE_DATA" {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": "API DETAILS INCORRECT"})
		return
	}

	out, err := json.Marshal(form.Request)
	if err != nil {
		// panic(err)
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": err})
	}

	item := DynamoStructOnboarding{
		"AJCPT7078O",
		"11",
		string(out),
	}


	// Testing PUTITEM CODE
	// item := map[string]types.AttributeValue{
	// 	"PK":     &types.AttributeValueMemberS{Value: "AJCPT7078Z"},
	// 	"SK":     &types.AttributeValueMemberS{Value: "10"},
	// 	"Filler": &types.AttributeValueMemberS{Value: string(out)},
	// }

	// fmt.Print(item)
	// fmt.Print(d)

	errL := UpdateItem(d, tableName, item)
	if errL != nil {
		c.AbortWithStatusJSON(http.StatusNotAcceptable, gin.H{"err": errL})
	}
	var response = gin.H{
		"success": bool(true),
		"response": gin.H{
			"api_name" : form.ApiName,
			"msg" : "data saved Successfully",
		},
	}

	c.PureJSON(http.StatusOK, gin.H{"api_response": response})
}




func putItem(d *dynamodb.Client, tableName string, item map[string]types.AttributeValue) error {
	_, err := d.PutItem(context.TODO(), &dynamodb.PutItemInput{
		TableName:           aws.String(tableName),
		Item:                item,
		ConditionExpression: aws.String("attribute_not_exists(PK)"),
	})
	return err
}

func UpdateItem(d *dynamodb.Client, tableName string, item DynamoStructOnboarding) error {
	_, err := d.UpdateItem(context.TODO(), &dynamodb.UpdateItemInput{
		TableName: aws.String(tableName),
		Key: map[string]types.AttributeValue{
			"PK": &types.AttributeValueMemberS{Value: item.PK},
			"SK": &types.AttributeValueMemberS{Value: item.SK},
		},
		UpdateExpression: aws.String("set Filler = :Filler"),
		ExpressionAttributeValues: map[string]types.AttributeValue{
			":Filler":        &types.AttributeValueMemberS{Value: item.Filler},
		},
	})

	return err
}