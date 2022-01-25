import React from 'react';
import Image from '../../atom/images/index';
interface LayoutProps{
    label:string,
    image:string,
    page:string,
    step:string,
    competion?:string
}
const OnboardStep:React.FC<LayoutProps>=(props:LayoutProps)=>{
    console.log(props,'step')
    return(
        <>
        <div className="top_formHeight">
        <div className="row">
            <div className="col-md-6">
              <p className="heading_name">
                <span>
                    <Image image={props.image}/>
                  {/* <img src={require(`../../../assets/images/${props.image}`).default}/> */}
                </span>
               {props.label}
              </p>
            </div>
            <div className="col-md-6">
                <ul className="ul_step">
                  <li><span>Next:</span> {props.page}</li>
                  <li><span>Steps :</span>{props.step}</li>
                  <li className="per_score"><span>Completion :</span> {props.competion}%</li>
                </ul>
            </div>
        </div>
      </div>
      <div className="progress custProgress" style={{height:"5px"}}>
          <div className="progress-bar" role="progressbar" style={{width:`${props.competion}%`}}></div>
        </div>
      {/* top_formHeight */}
        </>
    )
}
export default OnboardStep
