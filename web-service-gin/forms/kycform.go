package forms

import (
	"encoding/json"
	"github.com/go-playground/validator/v10"
)

type KycForm struct {}

type GetKyc struct {
	PAN string `json:"pan" binding:"required,min=10,max=10"`
}

type RequestMaster struct {
	ApiName string `json:"api_name" binding:"required"`
	Request GetKyc `json:"request" binding:"required"` 
}

type GetSignIn struct {
	PAN string `json:"pan" binding:"required,min=10,max=10"`
	Password string `json:"password" binding:"required,min=10,max=20"`
}

type RequestMasterSignIn struct {
	ApiName string `json:"api_name" binding:"required"`
	Request GetSignIn `json:"request" binding:"required"` 
}

func (f KycForm) PAN(tag string, errMsg ...string) (message string) {
	switch tag {
	case "required":
		if len(errMsg) == 0 {
			return "Please enter pan"
		}
		return errMsg[0]
	case "min", "max":
		return "Please enter valid pan"
	default:
		return "Something went wrong, please try again later"
	}

}


func (f KycForm) GetCVLDataRequestValidate(err error) string {
	switch err.(type) {
	case validator.ValidationErrors:

		if _, ok := err.(*json.UnmarshalTypeError); ok {
			return "Something went wrong, please try again later"
		}

		for _, err := range err.(validator.ValidationErrors) {
			if err.Field() == "PAN" {
				return f.PAN(err.Tag())
			}
		}
	default:
		return "Invalid request"
	}

	return "Something went wrong, please try again later"
}

func (f KycForm) GetSignInDataRequestValidate(err error) string {
	switch err.(type) {
	case validator.ValidationErrors:

		if _, ok := err.(*json.UnmarshalTypeError); ok {
			return "Something went wrong, please try again later"
		}

		for _, err := range err.(validator.ValidationErrors) {
			if err.Field() == "PAN" {
				return f.PAN(err.Tag())
			}
		}
	default:
		return "Invalid request"
	}

	return "Something went wrong, please try again later"
}