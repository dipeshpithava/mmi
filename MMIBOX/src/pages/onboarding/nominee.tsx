import React from 'react';
import Container from '../../components/atom/container';
import NomineeTemplate from '../../components/organism/onboarding/nominee';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';


const Nominee:React.FC=()=>{
    
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
              <NomineeTemplate/>
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

export default Nominee