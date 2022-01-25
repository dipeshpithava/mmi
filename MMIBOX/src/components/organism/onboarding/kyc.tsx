import React from 'react';
import InputD from '../../molecules/input/input';
const KycTemplate:React.FC=()=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'value')
    }
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Enter Your PAN to Verify KYC"
                      placeholder="Enter PAN number"
                      value="sujeet"
                      name="panNo"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Name As per PAN"
                      placeholder="Enter name as on PAN"
                      value="sujeet"
                      name="panName"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
          </div>        
        </>
    )
}

export default KycTemplate