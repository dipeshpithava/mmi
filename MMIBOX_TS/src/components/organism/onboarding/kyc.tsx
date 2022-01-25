import React from 'react';
import InputD from '../../molecules/input/input';
interface InputProps{
  stateData:any,
  error:any,
  blurValidation(name:string,value:string):any,
  changeHandler(name:string,value:string):any
}
const KycTemplate:React.FC<InputProps>=(props:InputProps)=>{
    console.log(props.stateData,'stateData')
    let {pan,name}=props.stateData;
    let {blurValidation}=props
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Enter Your PAN to Verify KYC"
                      placeholder="Enter PAN number"
                      value={pan}
                      name="pan"
                      onBlur={blurValidation}
                      ChangeHandler={props.changeHandler}
                      error={props.error['pan']}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <InputD
                      lbl="Name As per PAN"
                      placeholder="Enter name as on PAN"
                      value={name}
                      name="name"
                      onBlur={blurValidation}
                      ChangeHandler={props.changeHandler}
                      error={props.error['name']}

                    />
                    
                  </div>
          </div>        
        </>
    )
}

export default KycTemplate