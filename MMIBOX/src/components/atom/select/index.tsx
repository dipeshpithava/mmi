import React from 'react';
import Select from 'react-select';
interface DropdownOption {
    label: string,
    value: string
}
interface SelectProps{
    placeholder?:string,
    class?:string,
    value?:string,
    name:string,
    option:DropdownOption[],
    changeHandler(data:DropdownOption):any

}


const InputView:React.FC<SelectProps>=(props:SelectProps)=>{
    
      
    //   const ChangeHandler=(data:DropdownOption)=>{
    //     console.log(data,'chageHandler')
    //   } 
    return(
        <>
         <div className="select_height">
        <Select<DropdownOption>
        value={props.option.filter((curr,index)=>{
            console.log(curr,'sujeet')
            return curr.value===props.value?curr.value:""
        })}
        onChange={props.changeHandler}
        
        options={props.option}
        />
        </div>
        </>
    )
}

export default InputView