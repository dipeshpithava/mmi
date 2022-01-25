import React from 'react';
interface LayoutProps{
    children?:React.ReactNode
}
const Container:React.FC<LayoutProps>=({children}:LayoutProps)=>{
    return (
        <>
        <div className="container">
        {children}
        </div>
        </>
    )
}

export default Container

  