package models

import (
	"mmi.com/db"
)

type MFCommonModel struct{}

type commonmaster struct{
	Comnid int `json:"comnid"`
	Typedet string `json:"typedet"`
	Codedesc string `json:"codedesc"`
	Nsecode string `json:"nsecode"`
}

func (m MFCommonModel) GetCommonMFAll() (commonJson []commonmaster, err error){
	_, err = db.GetDB().Select(&commonJson, "SELECT comnid, typedet, codedesc, nsecode FROM mf.commonmaster")
	return commonJson,err;
}

