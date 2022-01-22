import React from 'react';
interface ImageProps{
    image:string,
    class?:string,
    alt?:string

}

const ImageView:React.FC<ImageProps>=(props:ImageProps)=>{
    return(
        <>
         <img alt={props.alt} className={props.class} src={require(`../../../assets/images/${props.image}`).default}/>
        </>
    )
}

export default ImageView