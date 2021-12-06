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

func (m LoginModel) IsUserExists(panno string) (commonJson []userprofilemaster, err error){
	print(panno)
	_, err = db.GetDB().Select(&commonJson, "SELECT emailid, mobileno, panno, username FROM cmn.userprofilemaster where panno = $1", panno)
	return commonJson,err;
}

