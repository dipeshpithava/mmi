import React from 'react';
import Label from '../../atom/label/index';
import Radio from '../../atom/radio/radio';

interface InputPropsData{
    lbl:string,
    lblclass?:string
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    option:string[],
    ChangeHandler(name:string,value:string):any
    
}
const InputView:React.FC<InputPropsData>=(props:InputPropsData)=>{
    const changeHandler=(e:any)=>{
       // alert(e)
       let getData={name:props.name,value:e};
        //console.log(getData,'getDataRADIO')
       props.ChangeHandler(getData.name,getData.value)
       // console.log(getData,'sujeet')
    }
    console.log(props.option,'RADIO')
    return(
        <>
        <div className="formDiv">
        <Label lbl={props.lbl} lblclass={props.lblclass}  />
        <div className="radio_con"> 
        {props.option.map((curr,index)=>{
            return(
                <Radio 
                checked={props.value===curr?true:false}
                placeholder={props.placeholder}
                class={props.class}
                value={curr}
                name={curr}
                //checked={true}
                changeHandler={(e)=>changeHandler(curr)}
        />
            )
        })}
        
        </div>
        </div>
        </>
    )
}

export default InputView