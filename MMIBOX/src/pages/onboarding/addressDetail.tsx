import React from 'react';
import Container from '../../components/atom/container';
import AddressTemplate from '../../components/organism/onboarding/addess';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';


const Address:React.FC=()=>{
    
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="address_icon.png"
               page="Bank Details"
               step="4/5"
               label="Correspondence Details"
               competion="60"
               />
            {/*  */}
            <div className="form_section">
              <AddressTemplate/>
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

export default Address