import React,{useState} from 'react';
import Container from '../../components/atom/container';
import NomineeTemplate from '../../components/organism/onboarding/nominee';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';
import { useNavigate } from 'react-router';

interface InputStateData{
  name:string,
  dob:string,
  allocation:string,
  relationship:string
}

const Nominee:React.FC=()=>{
  let navigate = useNavigate();
  let [state,setState]=useState<InputStateData>({name:"sujeet",dob:"10/06/1991",allocation:"100",relationship:"Son"})
  const [error,setError]=useState({})
  const ChangeHandler=(name:string,value:string)=>{
    let allState={...state};
    allState[name]=value;
    setState(prevState=>({
      ...prevState,
      ...allState
    }))
  } 

  const formValid=()=>{
    let flag=false;
    let errorMsg={...error};
    let {name,dob,allocation,relationship}=state;
    if(name===""){
      errorMsg['name']="please enter name";
    }else if(dob===""){
      errorMsg['dob']="please enter DOB";
    }else if(allocation===""){
      errorMsg['allocation']="please enter allocation";
    }else if(relationship===""){
      errorMsg['relationship']="please select relationship";
    }else{
      errorMsg['name']="";
      errorMsg['dob']="";
      errorMsg['allocation']="";
      errorMsg['relationship']="";
      flag=true;
    }
    setError(prevError=>({
      ...prevError,
      ...errorMsg
    }))
    return flag;
  }

  const submitbtn=()=>{
    let fChecking=formValid();
    if(fChecking){
      navigate('/Address')
    }
      
    }
 const backBtn=()=>{
   navigate('/Personal')
 }   
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="nominee_icon.png"
               page="Correspondence Address"
               step="3/5"
               label="Nomination Details"
               competion="70"
               />
            {/*  */}
            <div className="form_section">
              <NomineeTemplate
               stateData={state}
               error={error}
              
               changeHandler={ChangeHandler}
              />
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    <button className="btn_proceed btn_back" onClick={backBtn}>Back</button>
                    <button className="btn_proceed" onClick={submitbtn}>Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default Nominee