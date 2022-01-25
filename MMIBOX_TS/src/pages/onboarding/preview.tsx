import React from 'react';
import Container from '../../components/atom/container';
import PreviewTemplate from '../../components/organism/onboarding/preview';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';
import { useNavigate } from 'react-router';

const Preview:React.FC=()=>{
  let navigate = useNavigate();
  const submitbtn=()=>{
    navigate('/Mandate')
 }
const backBtn=()=>{
  navigate('/BankDetail')
}  
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="kyc_icon.png"
               page="Submit Status"
               step="5/5"
               label="Summary"
               competion="100"
               />
            {/*  */}
            <div className="form_section">
              <PreviewTemplate/>
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    <button className="btn_proceed btn_back" onClick={backBtn}>Back</button>
                    <button className="btn_proceed" onClick={submitbtn}>Submit</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default Preview