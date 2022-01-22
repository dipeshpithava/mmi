import React from 'react';
import InputD from '../../molecules/input/input';
import Select from '../../molecules/select/select';
import Radio from '../../molecules/radio/index';
interface InputProps{
  stateData:any,
  error:any,
  blurValidation?(name:string,value:string):any,
  changeHandler(name:string,value:string):any
}
const PersonalTemplate:React.FC<InputProps>=(props:InputProps)=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'<==value')
        props.changeHandler(name,value)
    }
    let genderData=[
        {label:"Male",value:"Male"},
        {label:"Female",value:"Female"}
    ]
    let income=[
        {label:"1000 to 5000",value:"1000 to 5000"},
        {label:"1000 to 5000",value:"1000 to 5000"},
    ]
    let source=[
        {label:"Privet",value:"Privet"},
        {label:"public",value:"public"},
    ]
    let {dob,gender,occupation,annualIncome,sourceIncome,exposed} =props.stateData
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Date of birth"
                      placeholder="Date of birth"
                      value={dob}
                      name="dob"
                      ChangeHandler={ChangeHandler}
                      error={props.error['dob']}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Gender"
                      placeholder="Select Gender"
                      option={genderData}
                      value={gender}
                      name="gender"
                      ChangeHandler={ChangeHandler}
                      error={props.error['gender']}

                    />
                   </div> 
                    <div className="col-md-4">
                    <Select
                      lbl="Occupation"
                      placeholder="Select Occupation"
                      option={genderData}
                      value={occupation}
                      name="occupation"
                      ChangeHandler={ChangeHandler}
                      error={props.error['occupation']}
                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Annual Income in ( INR )"
                      placeholder="Select annual income"
                      option={income}
                      value={annualIncome}
                      name="annualIncome"
                      ChangeHandler={ChangeHandler}
                      error={props.error['annualIncome']}
                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Source of income in ( INR )"
                      placeholder="Select source income"
                      option={source}
                      value={sourceIncome}
                      name="sourceIncome"
                      ChangeHandler={ChangeHandler}
                      error={props.error['sourceIncome']}
                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Radio
                      lbl="I am politically exposed"
                      placeholder="Select source income"
                      option={["YES","NO"]}
                      value={exposed}
                      name="exposed"
                      ChangeHandler={ChangeHandler}
                      error={props.error['exposed']}

                    />
                    
                  </div>
          </div>        
        </>
    )
}

export default PersonalTemplate