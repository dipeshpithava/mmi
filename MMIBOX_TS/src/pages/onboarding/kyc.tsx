import React,{useState,useEffect} from 'react';
import Container from '../../components/atom/container';
import KycTemplate from '../../components/organism/onboarding/kyc';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';
import {panValidation,panNameValidation} from '../../helper/validation';
import { useNavigate } from 'react-router';

interface InputStateData{
  pan:string,
  name:string,
}
interface InputError{

}
const KycPage:React.FC=(props)=>{
  let navigate = useNavigate();
  const [state,setState]=useState<InputStateData>({
    pan:"",
    name:""
  })
  const [error,setError]=useState({})
  const ChangeHandler=(name:string,value:string)=>{
    let allState={...state};
    allState[name]=value.toUpperCase();
    setState(prevState=>({
      ...prevState,
      ...allState
    }))
  }

  const blurValidation=(name:string,value:string)=>{
    let type=name;
    let errorMsg={...error}
    if(type==="pan"){
      let panCheck=panValidation(value);
      if(!panCheck.res){
        errorMsg[name]=panCheck.msg
      }else{
        errorMsg[name]=panCheck.msg
      }
     
    }
    if(type==="name"){
      let nameCheck=panNameValidation(value);
      if(nameCheck.res){
        errorMsg[name]=nameCheck.msg
      }else{
        errorMsg[name]=nameCheck.msg
      }
      console.log(nameCheck,'nameCheck')
    }
    setError(prevError=>({
      ...prevError,
      ...errorMsg
    }))
    
  }
  const validationCheck=()=>{
    let flagStatus=false;
    let {name,pan}=state;
    let errorMsg={...error}
    let panCheck=panValidation(pan);
    let nameCheck=panNameValidation(name);
    if(!panCheck.res){
        errorMsg["pan"]=panCheck.msg;
      }else if(!nameCheck.res){
        errorMsg["name"]=nameCheck.msg;
    }else{
      flagStatus=true
      errorMsg["pan"]="";
      errorMsg["name"]="";
      //errorMsg[name]=""
    }
    setError(prevError=>({
      ...prevError,
      ...errorMsg
    }))
    return flagStatus
  }
  const submitBtn=()=>{
    let checking=validationCheck();

   if(checking){
    navigate('/Personal')
   }
   
  }
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="kyc_icon.png"
               page="Personal Details"
               step="1/5"
               label="Provide Your KYC Details"
               competion="10"
               />
            {/*  */}
            <div className="form_section">
              <KycTemplate
                stateData={state}
                error={error}
                blurValidation={blurValidation}
               changeHandler={ChangeHandler}
              />
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    {/* <button className="btn_proceed btn_back">Back</button> */}
                    <button className="btn_proceed" onClick={submitBtn}>Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default KycPage