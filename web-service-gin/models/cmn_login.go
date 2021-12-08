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
	_, err = db.GetDB().Select(&commonJson, "SELECT emailid, mobileno, panno, username FROM cmn.userprofilemaster a inner join cmn.userprofiledet b on a.uid = b.uid where a.panno = $1", panno)
	return commonJson,err;
}

func (m LoginModel) GetUserData(panno string) (commonJson []userprofilemaster, err error){
	_, err = db.GetDB().Select(&commonJson, "SELECT emailid, mobileno, panno, username FROM cmn.userprofilemaster a inner join cmn.userprofiledet b on a.uid = b.uid where a.panno = $1", panno)
	return commonJson,err;
}