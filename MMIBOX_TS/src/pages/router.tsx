import * as React from 'react'
import Container from '../components/atom/container';
import Select from 'react-select';
//import { ValueType } from "react-select/lib/types";
import Home from './index';



const AppRouter: React.FC = (props) => {
  interface DropdownOption {
    value: string,
    label: string
  }
  const option_data :DropdownOption[]=[
    { value: "chocolate", label: "Chocolate" },
    { value: "strawberry", label: "Strawberry" },
    { value: "vanilla", label: "Vanilla" },
  ];
  const ChangeHandler=(data:DropdownOption)=>{
    console.log(data,'chageHandler')
  } 
  console.log(option_data,'option_data')
    return (
        <Container>
        <div className="row">
            <div className="col-md-12 text-center mt-4 mb-3">
               <h1 className="h1Heading ">Start your investing today</h1>
               <span className="h1headingline"></span>
            </div>
           <div className="col-md-12 text-center">
             <p className="small_para">Create the investment account in 5 minutes & put your money to work </p>
             </div> 
         
        </div>
        <div className="row mt-2">
          <div className="formWrapper_onboard">
            <div className="top_formHeight">
              <div className="row">
                  <div className="col-md-6">
                    <p className="heading_name">
                      <span>
                        <img src={require('../assets/images/kyc_icon.png').default}/>
                      </span>
                      Provide Your KYC Details
                    </p>
                  </div>
                  <div className="col-md-6">
                      <ul className="ul_step">
                        <li><span>Next:</span> Personal Details</li>
                        <li><span>Steps :</span> 1/5</li>
                        <li className="per_score"><span>Completion :</span> 10%</li>
                      </ul>
                  </div>
              </div>
            </div>
            <div className="progress custProgress" style={{height:"5px"}}>
                <div className="progress-bar" role="progressbar" style={{width:"25%"}}></div>
              </div>
            {/* top_formHeight */}
            <div className="form_section">
               <div className="row">
                  <div className="col-md-4">
                      <div className="formDiv">
                         <label className="lbl">Enter Your PAN to Verify KYC</label> 
                         <input 
                         type="text"
                          placeholder="Enter PAN number"
                         className="text_input"
                          />
                      </div>
                  </div>
                  <div className="col-md-4">
                      <div className="formDiv">
                         <label className="lbl">Name As per PAN</label> 
                         <input type="text"
                         placeholder="Enter name as on PAN"
                         className="text_input"
                          />
                      </div>
                  </div>
                  <div className="col-md-4">
                  <div className="formDiv">
                      <label className="lbl">Name As per PAN</label>
                      <div className="select_height">
                      <Select<DropdownOption>
                        value={option_data.filter((curr,index)=>{
                          console.log(curr,'sujeet')
                          return curr.value==="chocolate"?curr.value:""
                        })}
                        onChange={ChangeHandler}
                        //className="text_input"
                        options={option_data}
                      />
                      </div>
                    </div>
                  
                  
                  
                  </div>

                  {/*  */}
                  <div className="col-md-4">
                    <div className="formDiv">
                       <label className="lbl">I am politically exposed</label>
                       <div className="radio_con">
                       <p className="radio_inline radio_marg radioForm">
                          <input type="radio" id="yes" name="radio-group" checked/>
                          <label htmlFor="yes" className="radioForm_label">Yes</label>
                        </p>
                        <p className="radio_inline radio_marg radioForm">
                          <input type="radio" id="no" name="radio-group" checked/>
                          <label htmlFor="no" className="radioForm_label"> No</label>
                        </p>
                       </div>
                    </div>
                  </div>  
                  {/*  */}
               </div>

            </div>
            {/* form section */}
            <div className="btn_section">
              <div className="row">
                <div className="col-lg-12 text-right">
                    <button className="btn_proceed btn_back">Proceed</button>
                    <button className="btn_proceed">Proceed</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </Container>
    )
  };


export default AppRouter