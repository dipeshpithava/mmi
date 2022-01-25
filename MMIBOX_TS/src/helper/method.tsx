let PanReg=/^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;
let nameReg = /^[a-z . A-Z-]+$/;

export const panCheck=(data:any)=>{
    return PanReg.test(data)
}
export const nameCheck=(data:any)=>{
    return nameReg.test(data)
}