import * as React from 'react'
import {Route, Routes} from 'react-router-dom'

import Home from './index';
import PersonalPage from './personalPage';
import Kyc from './onboarding/kyc';
import Personal from './onboarding/personalDetail';
import Nominee from './onboarding/nominee';
import BankDetail from './onboarding/bankDetail';
import Address from './onboarding/addressDetail';
import Preview from './onboarding/preview';
import Mandate from './onboarding/mandate';
import Login from './login/sign';
import SignUp from './login/signUp';



const PageRoute:  React.FC = (): JSX.Element => {
  
    return (
        <>
          <Routes>
                    <Route  path="/" element={<Home/>} />
                    <Route  path="/sign-up" element={<SignUp/>} />
                    <Route  path="/sign-in" element={<Login/>} />
                    <Route  path="/kyc" element={<Kyc/>} />
                    <Route  path="/Personal" element={<Personal/>} />
                    <Route  path="/Nominee" element={<Nominee/>} />
                    <Route  path="/Address" element={<Address/>} />
                    <Route  path="/BankDetail" element={<BankDetail/>} />
                    <Route  path="/Preview" element={<Preview/>} />
                    <Route  path="/Mandate" element={<Mandate/>} />
                    <Route   path="/Personaldetail" element={<PersonalPage/>} />
                   
                    
                </Routes>
        
      </>
    )
  };


export default PageRoute
