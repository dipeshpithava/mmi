import React from 'react';

interface LabelProps{
    lbl:string,
    lblclass?:string
}
const Label:React.FC<LabelProps>=(props:LabelProps)=>{
    return (
        <>
         <label className={`lbl ${props.lblclass}`}>{props.lbl}</label>
        </>
    )
}

export default Label