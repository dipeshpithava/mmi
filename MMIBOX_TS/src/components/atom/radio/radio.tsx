import React from 'react';
interface InputProps{
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    checked?:boolean,
    changeHandler(data:any):any

}

const InputView:React.FC<InputProps>=(props:InputProps)=>{
    
    return(
        <>
        <p className={`radio_inline radio_marg radioForm ${props.class}`} >
          <input type="radio" id={props.name} name="radio-group" checked={props.checked} value={props.value} />
          <label htmlFor={props.name} className="radioForm_label" onClick={props.changeHandler}>{props.name}</label>
        </p>
        </>
    )
}

export default InputView