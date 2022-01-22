import React,{useState} from 'react';
import Container from '../../components/atom/container';
import PersonalTemplate from '../../components/organism/onboarding/pesonal';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';
import { useNavigate } from 'react-router';

interface InputStateData{
  dob:string,
  gender:string,
  occupation:string,
  annualIncome:string,
  sourceIncome:string,
  exposed:string
}
const Personal:React.FC=()=>{
  let navigate = useNavigate();
    let [state,setState]=useState<InputStateData>({dob:"10/06/1991",gender:"Male",occupation:"male",annualIncome:"1000",sourceIncome:"50000",exposed:"true"})
    const [error,setError]=useState({})
    const ChangeHandler=(name:string,value:string)=>{
      let allState={...state};
      allState[name]=value;
      setState(prevState=>({
        ...prevState,
        ...allState
      }))
    } 

    const fromValid=()=>{
      let flag=false;
      let errorMsg={...error};
      let {dob,gender,occupation,annualIncome,sourceIncome,exposed}=state;
      if(dob===""){
        errorMsg['dob']="please enter DOB";
      }else if(gender===""){
        errorMsg['gender']="please select gender";
      }else if(occupation===""){
        errorMsg['occupation']="please select Occupation";
      }else if(annualIncome===""){
        errorMsg['annualIncome']="please select Occupation";
      }else if(sourceIncome===""){
        errorMsg['sourceIncome']="please select source of Income";
      }else if(exposed===""){
        errorMsg['exposed']="please select exposed";
      }else{
        errorMsg['dob']="";
        errorMsg['gender']="";
        errorMsg['occupation']="";
        errorMsg['annualIncome']="";
        errorMsg['sourceIncome']="";
        errorMsg['exposed']="";
        flag=true;
      }
      setError(prevError=>({
        ...prevError,
        ...errorMsg
      }))
      return flag

    }

    const submitbtn=()=>{
      let formCheck=fromValid();
      if(formCheck){
        navigate('/Nominee')
      }
      
    }
    const backbtn=()=>{
      navigate('/kyc')
    }
    //console.log(state,'state')

    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="personal_icon.png"
               page="Nomination Details"
               step="2/5"
               label="Personal Details"
               competion="20"
               />
            {/*  */}
            <div className="form_section">
              <PersonalTemplate
              stateData={state}
              error={error}
             
              changeHandler={ChangeHandler}
              />
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    <button className="btn_proceed btn_back" onClick={backbtn}>Back</button>
                    <button className="btn_proceed" onClick={submitbtn}>Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default Personal