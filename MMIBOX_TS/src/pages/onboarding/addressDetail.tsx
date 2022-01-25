import React,{useState} from 'react';
import Container from '../../components/atom/container';
import AddressTemplate from '../../components/organism/onboarding/addess';
import OnboardInfo from '../../components/molecules/onboarding/info';
import OnboardStep from '../../components/molecules/onboarding/step';
import { useNavigate } from 'react-router';
interface InputStateData{

}

const Address:React.FC=()=>{
  let navigate = useNavigate();
  const submitbtn=()=>{
    // let fChecking=formValid();
    // if(fChecking){
      navigate('/BankDetail')
    //}
      
    }
 const backBtn=()=>{
   navigate('/Nominee')
 }   
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

export default Address