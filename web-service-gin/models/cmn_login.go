package models

import (
	"mmi.com/db"
)

type LoginModel struct{}

type userprofilemaster struct{
	Emailid string `json:"emailid"`
	Mobileno string `json:"mobileno"`
	Panno string `json:"panno"`
	Username string `json:"username"`
}

func (m LoginModel) IsUserExists() (commonJson []userprofilemaster, err error){
	_, err = db.GetDB().Select(&commonJson, "SELECT emailid, mobileno, panno, username FROM cmn.userprofilemaster")
	return commonJson,err;
}

