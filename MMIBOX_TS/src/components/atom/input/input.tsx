import React from 'react';
interface InputProps{
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    disabled?:boolean,
    changeHandler(data:any):any,
    onBlur(data:any):any

}

const InputView:React.FC<InputProps>=(props:InputProps)=>{
    return(
        <>
        <input 
        type="text"
        placeholder={props.placeholder}
        className={`text_input ${props.class}`}
        value={props.value}
        name={props.name}
        disabled={props.disabled}
        onChange={props.changeHandler}
        onBlur={props.onBlur}

        />
        </>
    )
}

export default InputView