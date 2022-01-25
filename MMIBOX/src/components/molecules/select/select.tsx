import React from 'react';
import Label from '../../atom/label/index';
import Select from '../../atom/select/index';

interface InputPropsData{
    lbl:string,
    lblclass?:string
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    option:{label:string,value:string}[],
    ChangeHandler(name:string,value:string):any
    
}
const InputView:React.FC<InputPropsData>=(props:InputPropsData)=>{

    const changeHandler=(e:any)=>{
        console.log(e,'dropDownselect')
        let getData={name:props.name,value:e.value}
        props.ChangeHandler(getData.name,getData.value)
       // console.log(getData,'sujeet')
    }
    return(
        <>
        <div className="formDiv">
        <Label lbl={props.lbl} lblclass={props.lblclass}  />
        <Select 
         placeholder={props.placeholder}
        class={props.class}
        value={props.value}
        name={props.name}
        option={props.option}
        changeHandler={changeHandler}
        />
        </div>
        </>
    )
}

export default InputView