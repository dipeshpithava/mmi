import React from 'react';
import Container from '../../components/atom/container/index';
import SignTemplate from '../../components/organism/login/signIn';
import LeftP from '../../components/organism/login/leftPanel';

const SignIn:React.FC=(props)=>{
    return(
        <>
        <section className="whiteBg_color">
        <Container>
            <div className="row log_topBt">
                <div className="col-md-7">
                    <LeftP/>
                </div>
                <div className="col-md-5">
                    <SignTemplate/>

                </div>
            </div>
        </Container>
        </section>
       
        </>
    )
}

export default SignIn