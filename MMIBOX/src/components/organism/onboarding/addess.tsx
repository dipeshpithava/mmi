import React from 'react';
import InputD from '../../molecules/input/input';
const AddressTemplate:React.FC=()=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'value')
    }
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Enter Pincode"
                      placeholder="Enter pincode"
                      value=""
                      name="pincode"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="City"
                      placeholder="Enter City"
                      value=""
                      name="city"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="State"
                      placeholder="Enter State"
                      value=""
                      name="state"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Country"
                      placeholder=""
                      value="Country"
                      name="country"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-8">
                    <InputD
                      lbl="Address Line"
                      placeholder="Enter Address"
                      value="Virar west"
                      name="address"
                      disabled={true}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
          </div>        
        </>
    )
}

export default AddressTemplate