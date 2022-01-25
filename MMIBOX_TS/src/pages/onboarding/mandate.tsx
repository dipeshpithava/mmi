import React from 'react';
import Container from '../../components/atom/container';
import OnboardInfo from '../../components/molecules/onboarding/info';
import Image from '../../components/atom/images';



const MandateDetail:React.FC=()=>{
   
    return(
        <Container>
           <OnboardInfo/>
           
        <div className="row mt-2">
          <div className="formWrapper_onboard mandateform">
            <div className="row">
                <div className="col-md-12 text-center">
                    <Image image="greenSign.png" class=""/>
                    {/* <Image image="exSign.png"/> */}
                </div>
                <div className="col-md-12 text-center">
                    <p className="congra_text"><span>Congratulation</span> Vijayaragavan Ramachari!</p>
                    <p className="conSucc_text"><span>You have successfully created your investment</span> account and we have verified <br/>
the account. You can invest right away.  We would also need your bank mandate to automate your SIP.  </p>
                </div>
            </div>
            <div className="row mt-4">
                <div className="col-md-3">
                 <div className="madate_box text-center" style={{cursor:"pointer"}}>
                     <Image image="download_icon.png"/>
                     <p>Download 
the Mandate Form
& Sign</p>   
                 </div>
                </div>
                <div className="col-md-9">
                 <div className="madate_box text-center" style={{cursor:"pointer"}}>
                     <Image image="uploadSign.png"/>
                     <p>Drag and Drop to Upload your Signed Mandate Form Here</p> 
                     <span>Upload only JPEG,PNG & PDF File Size Should be less than 1 MB</span> 
                 </div>
                </div>
            </div>

            
          </div>
        </div>
        </Container>
    )
}

export default MandateDetail