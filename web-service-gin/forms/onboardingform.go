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


type NomineeData struct {
	Name string `json:"name"` 
	DOB string `json:"dOB"` 
	Allocation string `json:"allocation"` 
	Relationship string `json:"relationship"` 
}

type JsonRequestInheritNominee struct {
	FormStage string `json:"formStage" binding:"required"`
	First NomineeData `json:"first" binding:"required"`
	Second NomineeData `json:"second"`
	Third NomineeData `json:"third"`
}

type RequestNomineeMaster struct {
	ApiName string `json:"api_name" binding:"required"`
	Request JsonRequestInheritNominee `json:"request" binding:"required"` 
}


