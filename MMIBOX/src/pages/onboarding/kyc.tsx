import React from 'react';
import Container from '../../components/atom/container';
import KycTemplate from '../../components/organism/onboarding/kyc';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';


const KycPage:React.FC=()=>{
   
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
              <KycTemplate/>
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    {/* <button className="btn_proceed btn_back">Back</button> */}
                    <button className="btn_proceed">Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default KycPage