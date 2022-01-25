import React from 'react';
import InputD from '../../molecules/input/input';
import Select from '../../molecules/select/select';
import Image from '../../atom/images/index';
const NomineeTemplate:React.FC=()=>{
    const ChangeHandler=(name:string,value:string)=>{
        console.log(name,'name',value,'value')
    }
    let relation=[
        {label:"Father",value:"Father"},
        {label:"Spouse",value:"Spouse"}
    ]
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
                      value="Sujeet"
                      name="namefirst"
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-3">
                    <InputD
                      lbl="Nominee Date of Birth"
                      placeholder="Enter DOB"
                      value="10/06/1991"
                      name="DOB"
                     ChangeHandler={ChangeHandler}

                    />
                    
                  </div>
                  <div className="col-md-3">
                    <InputD
                      lbl="Allocation"
                      placeholder="Enter allocation"
                      value="50"
                      name="allocation"
                     
                      ChangeHandler={ChangeHandler}

                    />
                    
                  </div>

                  <div className="col-md-3">
                  <Select
                      lbl="Relationship with the applicant"
                      placeholder="Select Gender"
                      option={relation}
                      value="Spouse"
                      name="relationship"
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