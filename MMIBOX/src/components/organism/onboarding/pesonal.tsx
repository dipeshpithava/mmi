import React from 'react';
import InputD from '../../molecules/input/input';
import Select from '../../molecules/select/select';
import Radio from '../../molecules/radio/index';
const PersonalTemplate:React.FC=()=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'<==value')
    }
    let gender=[
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
    return (
        <>
        <div className="row">
                  <div className="col-md-4">
                    <InputD
                      lbl="Date of birth"
                      placeholder="Date of birth"
                      value="10/06/1991"
                      name="DOD"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Gender"
                      placeholder="Select Gender"
                      option={gender}
                      value="Female"
                      name="gender"
                      ChangeHandler={ChangeHandler}

                    />
                   </div> 
                    <div className="col-md-4">
                    <Select
                      lbl="Occupation"
                      placeholder="Select Occupation"
                      option={gender}
                      value="Female"
                      name="occupation"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Annual Income in ( INR )"
                      placeholder="Select annual income"
                      option={income}
                      value="1000 to 5000"
                      name="annualIncome"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Select
                      lbl="Source of income in ( INR )"
                      placeholder="Select source income"
                      option={source}
                      value="public"
                      name="SourceIncome"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-4">
                    <Radio
                      lbl="I am politically exposed"
                      placeholder="Select source income"
                      option={["YES","NO"]}
                      value="NO"
                      name="SourceIncome"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
          </div>        
        </>
    )
}

export default PersonalTemplate