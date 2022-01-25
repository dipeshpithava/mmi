import React from 'react';
import Image from '../../atom/images';
import Input from '../../molecules/input/input';


const Signtemplate:React.FC=(props)=>{
    const ChangeHandler=(name:string,value:string)=>{

    }
    return(
        <>
        
                    <div className="login_Wrap"> 
                         <h3 className="lg_heading">Let’s Sign In</h3>   
                         <div className="row">
                             <div className="col-md-6 text-center">
                                <div className="col_login_with">
                                    <span>
                                        <Image image="google.png"/>
                                    </span>
                                    Sign In With
                                </div>
                             </div>
                             <div className="col-md-6 text-center">
                                <div className="col_login_with padd_otp">
                                   Sign In With OTP
                                </div>
                             </div>
                             <div className="col-md-12">
                                 <span className="or_sign">Or</span>
                             </div>
                         </div>
                         <div className="row">
                             <div className="col-md-12">
                             <Input
                             lbl="Email Address"
                             placeholder="Enter Email ID"
                             name="email"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>

                             <div className="col-md-12">
                             <Input
                             lbl="Enter Password"
                             placeholder="Enter Password"
                             name="password"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>
                            <div className="col-md-12">
                                <span className="forgot_link">Forgot Pasword?</span>
                            </div> 
                            <div className="col-md-12 text-center">
                                <button className="btn_proceed">Login</button>
                            </div>
                            <div className="col-md-12 text-center mt-4">
                                <p className="sign_redir">
                                If you don’t have account ? <span>Sign Up</span>
                                </p>
                            </div>
                         </div>
                    </div>

       
        </>
    )
}

export default Signtemplate