import React from 'react';
import Image from '../../atom/images';
import Input from '../../molecules/input/input';


const SignUptemplate:React.FC=(props)=>{
    const ChangeHandler=(name:string,value:string)=>{

    }
    return(
        <>
        
                    <div className="login_Wrap"> 
                         <h3 className="lg_heading">Let’s Sign Up</h3>   
                         <div className="row">
                             <div className="col-md-12 text-center">
                                <div className="col_login_with">
                                    <span>
                                        <Image image="google.png"/>
                                    </span>
                                    Sign Up With Google
                                </div>
                             </div>
                             
                             <div className="col-md-12">
                                 <span className="or_sign">Or</span>
                             </div>
                         </div>
                         <div className="row">
                             <div className="col-md-12">
                             <Input
                             lbl="Enater Full Name"
                             placeholder="Enter full name"
                             name="name"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>

                             <div className="col-md-12">
                             <Input
                             lbl="Email Address"
                             placeholder="Enter email address"
                             name="email"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>
                             <div className="col-md-12">
                             <Input
                             lbl="Password"
                             placeholder="Enter password"
                             name="password"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>
                             <div className="col-md-12">
                             <Input
                             lbl="Mobile Number"
                             placeholder="Enter Mobile number"
                             name="password"
                             value=""
                             ChangeHandler={ChangeHandler}

                            />
                             </div>
                            
                            <div className="col-md-12 text-center">
                                <button className="btn_proceed">Sign Up</button>
                            </div>
                            <div className="col-md-12 text-center mt-4">
                                <p className="sign_redir">
                                Already signed up? <span>Login Now</span>
                                </p>
                            </div>
                         </div>
                    </div>

       
        </>
    )
}

export default SignUptemplate