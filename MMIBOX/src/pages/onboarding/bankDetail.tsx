import React from 'react';
import Container from '../../components/atom/container';
import BankTemplate from '../../components/organism/onboarding/bank';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';


const BankDetail:React.FC=()=>{
    // interface DropdownOption {
    //     value: string,
    //     label: string
    //   }
    //   const option_data :DropdownOption[]=[
    //     { value: "chocolate", label: "Chocolate" },
    //     { value: "strawberry", label: "Strawberry" },
    //     { value: "vanilla", label: "Vanilla" },
    //   ];
    //   const ChangeHandler=(data:DropdownOption)=>{
    //     console.log(data,'chageHandler')
    //   } 
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard">
              <OnboardStep
              image="bank_icon.png"
               page="Review"
               step="5/5"
               label="Bank Details"
               competion="90"
               />
            {/*  */}
            <div className="form_section">
              <BankTemplate/>
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

export default BankDetail