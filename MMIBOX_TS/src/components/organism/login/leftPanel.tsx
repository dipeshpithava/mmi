import React from 'react';
import Image from '../../atom/images/index';
const LeftPanel:React.FC=()=>{
    return(
        <>
        <h4 className="sing_head">Sign Up to reach your goals<span className="heading_line_left"></span>
        </h4>
        <p className="para_logi">India’s own Pension System to help you plan for a stress-free retirement. Get tax-free amount at maturity and a regular income after retirement, helping you sustain your current lifestyle.</p>
        <ul className="Block_circle_login">
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <Image image="loginBG.png" class="img-fluid"/>
        </>
        
    )
}

export default LeftPanel