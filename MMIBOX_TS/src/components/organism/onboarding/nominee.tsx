import React from 'react';
import InputD from '../../molecules/input/input';
import Select from '../../molecules/select/select';
import Image from '../../atom/images/index';
interface InputProps{
  stateData:any,
  error:any,
  blurValidation?(name:string,value:string):any,
  changeHandler(name:string,value:string):any
}
const NomineeTemplate:React.FC<InputProps>=(props:InputProps)=>{

    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'value')
        props.changeHandler(name,value)
    }
    let relation=[
        {label:"Father",value:"Father"},
        {label:"Spouse",value:"Spouse"}
    ]
    let {name,dob,allocation,relationship}=props.stateData;
    return (
        <>
        <div className="row">
                  <div className="col-md-12">
                    <h3 className="formlbl">First Nominee</h3> 
                    <hr className="line_form"/> 
                 </div>  

                  <div className="col-md-3">
                    <InputD
                      lbl="Nominee Name"
                      placeholder="Enter Nominee Name"
                      value={name}
                      name="name"
                      ChangeHandler={ChangeHandler}
                      error={props.error['name']}

                    />
                    
                  </div>
                  <div className="col-md-3">
                    <InputD
                      lbl="Nominee Date of Birth"
                      placeholder="Enter DOB"
                      value={dob}
                      name="dob"
                     ChangeHandler={ChangeHandler}
                     error={props.error['dob']}
                    />
                    
                  </div>
                  <div className="col-md-3">
                    <InputD
                      lbl="Allocation"
                      placeholder="Enter allocation"
                      value={allocation}
                      name="allocation"
                      error={props.error['allocation']}
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>

                  <div className="col-md-3">
                  <Select
                      lbl="Relationship with the applicant"
                      placeholder="Select Gender"
                      option={relation}
                      value={relationship}
                      name="relationship"
                      error={props.error['relationship']}
                      ChangeHandler={ChangeHandler}

                    />
                   
                    
                  </div>

            <div className="col-md-12 text-right">
                <a href="*" className="addNominee">
                 Add Nominee  <Image image="plus_icons_grey.png"/>
                </a>
            </div>      
              
          </div> 
        

       

        </>
    )
}

export default NomineeTemplate