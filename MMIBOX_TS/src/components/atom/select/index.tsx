import React from 'react';
import Select from 'react-select';
interface DropdownOption {
    label?: string,
    value?: string
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
  console.log(props.option,'props.option')  
    return(
        <>
         <div className="select_height sujeet">
        <Select<DropdownOption>
         value={props.option.find((curr,index)=>{
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