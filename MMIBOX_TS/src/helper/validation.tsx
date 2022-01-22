import Messages from './message';
import {panCheck,nameCheck} from './method';
export const panValidation=(data:string)=>{
    let isValid = true;
    let msg = "";
    if (!data) {
        msg = Messages.PERSONAL_PAGE.BLANK_PAN;
        isValid = false
    } else if (panCheck(data) === false) {
        msg = Messages.PERSONAL_PAGE.VALID_PAN
        isValid = false
    } else {
        msg = "";
        isValid = true
    }
    return {
        res: isValid,
        msg: msg
    }
}

export const panNameValidation = (panName:string) => {

    let panNameVal = "";
    if (panName === undefined) {
        panNameVal = ""
    } else {
        panNameVal = panName;
    }

    let isValid = true;
    let msg = "";
    let nameReg = /^[a-z . A-Z-]+$/;
    if (!panNameVal) {
        msg = Messages.PERSONAL_PAGE.BLANK_PAN_NAME;
        isValid = false
    }else if(panNameVal.trim() == ""){
        msg = Messages.PERSONAL_PAGE.VALID_PAN_NAME
        isValid = false
    } else if (!nameCheck(panNameVal)) {
        msg = Messages.PERSONAL_PAGE.VALID_PAN_NAME
        isValid = false
    } else if (panNameVal.length < 2) {
        msg = Messages.PERSONAL_PAGE.MIN_PAN_NAME;
        isValid = false
    } else {
        msg = "";
        isValid = true
    }
    return {
        res: isValid,
        msg: msg
    }
}