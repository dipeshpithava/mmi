import React from 'react';
import InputD from '../../molecules/input/input';
const BankTemplate:React.FC=()=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'value')
    }
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Enter 11 Digit IFSC Code"
                      placeholder="Enter IFSC"
                      value="HDFC0000001"
                      name="ifsc"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Bank Name"
                      placeholder="Enter bank name"
                      value=""
                      name="bankName"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Branch Name"
                      placeholder="Enter Branch Name"
                      value="mumbai"
                      name="Branch Name"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Enter Bank Account Number"
                      placeholder=""
                      value="83833"
                      name="accountNumber"
                     
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Confirm Bank Account Number"
                      placeholder=""
                      value="83833"
                      name="ConfirmaccountNumber"
                     
                      ChangeHandler={ChangeHandler}

                    />
                    
                
                    
                  </div>
              
          </div> 
          <h3 className="formlbl">Mandate Details</h3> 
          <hr className="line_form"/>  

          <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Manadate Expiry Date"
                      placeholder="Enter expire Date"
                      value="31/09/2099"
                      name="mandateExpiry"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Maximum Amount per transaction*"
                      placeholder="Enter amount"
                      value="1,00,00,000"
                      name="mandateAmt"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                <div className="col-md-12 mt-2">
                    <div className="txtbankInfo">
                        <p className="bankInfo">
                          <label className="checkboxcontainer abso_BankCheck"> 
                            <input type="checkbox"/>
                            <span className="checkmark"></span>
                            </label>   
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt 
                        </p>
                    </div>    
                </div>  
                  </div>

        </>
    )
}

export default BankTemplate