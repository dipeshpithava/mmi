import React from 'react';
import Container from '../../components/atom/container/index';
import SignUPTemplate from '../../components/organism/login/signUp';
import LeftP from '../../components/organism/login/leftPanel';

const SignUp:React.FC=(props)=>{
    return(
        <>
        <section className="whiteBg_color">
        <Container>
            <div className="row log_topBt">
                <div className="col-md-7">
                    <LeftP/>
                </div>
                <div className="col-md-5">
                    <SignUPTemplate/>

                </div>
            </div>
        </Container>
        </section>
       
        </>
    )
}

export default SignUp