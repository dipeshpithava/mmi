import React from 'react';
import Label from '../../atom/label/index';
import Input from '../../atom/input/input';

interface InputPropsData{
    lbl:string,
    lblclass?:string
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    disabled?:boolean,
    error?:any,
    ChangeHandler(name:string,value:string):any,
    onBlur?(name:string,value:string):any
    
}
const InputView:React.FC<InputPropsData>=(props:InputPropsData)=>{
    const changeHandler=(e:any)=>{
        let getData={name:e.target.name,value:e.target.value}
        props.ChangeHandler(getData.name,getData.value)
       // console.log(getData,'sujeet')
    }
    const onBlur=(name:string,value:string)=>{
        props.onBlur(name,value)    
    }
    return(
        <>
        <div className="formDiv">
        <Label lbl={props.lbl} lblclass={props.lblclass}  />
        <Input 
            placeholder={props.placeholder}
            class={props.class}
            value={props.value}
            name={props.name}
            disabled={props.disabled}
            changeHandler={changeHandler}
            onBlur={()=>onBlur(props.name,props.value)}
        />
        <span className="txtError">{props.error}</span>
        </div>
        </>
    )
}

export default InputView