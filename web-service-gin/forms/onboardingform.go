package forms


type OboardingForm struct {}

type PersonalData struct {
	DOB string `json:"DOB" binding:"required"` 
	Gender string `json:"gender" binding:"required"` 
	Occupation string `json:"Occupation" binding:"required"` 
	AnnualIncome string `json:"annualIncome" binding:"required"` 
	SourseofIncome string `json:"sourseofIncome" binding:"required"` 
	PoliticallyExposed bool `json:"politicallyExposed" binding:"required"` 
}

type JsonRequestInherit struct {
	FormStage string `json:"formStage" binding:"required"`
	First PersonalData `json:"first" binding:"required"`
}

type RequestPersonalMaster struct {
	ApiName string `json:"api_name" binding:"required"`
	Request JsonRequestInherit `json:"request" binding:"required"` 
}


