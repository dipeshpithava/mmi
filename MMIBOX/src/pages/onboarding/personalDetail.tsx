import React from 'react';
import Container from '../../components/atom/container';
import PersonalTemplate from '../../components/organism/onboarding/pesonal';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';


const Personal:React.FC=()=>{
    
     
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
              <PersonalTemplate/>
            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    <button className="btn_proceed btn_back">Back</button>
                    <button className="btn_proceed">Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </Container>
    )
}

export default Personal