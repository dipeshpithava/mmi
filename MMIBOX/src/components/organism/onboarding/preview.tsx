import React from 'react';
import Image from '../../atom/images/index';
const PreviewTemplate:React.FC=()=>{
   
    return (
        <>
        <div className="row">
            <div className="col-md-12">
             <h3 className="previewInfo">Please Confirm your entered details before proceeding</h3> 

            </div> 
        </div>
				<div className="row">
					<Heading 
					name="Provide Your KYC Details"
					 image="personal_icon.png"/>
					{/* Heading */}
				<div className="col-md-3">
					<LabelPreview label="Applicant Name" value="Vijayaragavan Ramachri"/>
					</div>
				<div className="col-md-3">
					<LabelPreview label="Date of birth" value="18/07/1987"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="PAN Number" value="AKBHG1675E"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Applicant Gender" value="Male"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Occupation Details" value="Service"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Annual Income" value="5-10 Lacs"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Source of income" value="Service"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Politically Exposed" value="yes"/>
				</div>
				<div className="col-md-3">
					<LabelPreview label="Nationality" value="Indian"/>
				</div>
				</div> 
				{/* end row */}

				<div className="row">
					<Heading 
					name="Contact Details"
					 image="contact_icon.png"/>
				
					<div className="col-md-3">
						<LabelPreview 
						label="Email ID"
						value="Vijayaragavan@gmail.com"/>
						</div>
					<div className="col-md-3">
						<LabelPreview label="Mobile Number" value="9000000000"/>
					</div>
					
				</div> 
{/* end row */}
				<div className="row">
					<Heading 
					name="Communication Address"
					 image="address_icon.png"/>
				
					<div className="col-md-4">
						<LabelPreview 
						label="Correspondence Address"
						value="No/675, First Cross Street, Sri Perumal Street"/>
						</div>
					<div className="col-md-2">
						<LabelPreview label="Pincode" value="400104"/>
					</div>
					<div className="col-md-2">
						<LabelPreview label="City" value="Mumbai"/>
					</div>
					<div className="col-md-2">
						<LabelPreview label="State" value="Tamil Nadu"/>
					</div>
					<div className="col-md-2">
						<LabelPreview label="Country" value="India"/>
					</div>
					
				</div> 
        
				{/*  */}

				<div className="row">
					<Heading 
					name="Nominee Details"
					 image="nominee_icon.png"/>
				
					<div className="col-md-3">
						<LabelPreview 
							label="Nominee Name"
							value="Ganga Devi"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Nominee Date of birth"
							value="10/07/1991"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Relationship to the nominee"
							value="Spouse"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Allocation"
							value="50%"/>
					</div>

					<div className="col-md-3">
						<LabelPreview 
							label="Nominee Name"
							value="Ganga Devi"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Nominee Date of birth"
							value="10/07/1991"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Relationship to the nominee"
							value="Spouse"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Allocation"
							value="50%"/>
					</div>
				
					
				</div> 
{/* bank Detail */}
<div className="row">
					<Heading 
					name="Bank Details"
					 image="bank_icon.png"/>
				
					<div className="col-md-3">
						<LabelPreview 
							label="Bank Name"
							value="ICICI Bank Ltd"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Account Holder Name"
							value="Sujeet kumar"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Account Number"
							value="123456789012"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Account Type"
							value="Savings"/>
					</div>

					<div className="col-md-3">
						<LabelPreview 
							label="Branch Name"
							value="Thambaram"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="IFSC Code"
							value="ICICI23453466"/>
					</div>
					<div className="col-md-5">
						<LabelPreview 
							label="Bank Address"
							value="No/675, First Cross Street, Sri Perumal Street, Chennai 600100"/>
					</div>
					<div className="col-md-12">
						<h3 className="formlbl">Mandate Details</h3> 
						<hr className="line_form"/>  
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Mandate Start Date"
							value="17/08/2020"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Mandate End Date"
							value="17/08/2020"/>
					</div>
					<div className="col-md-3">
						<LabelPreview 
							label="Maximum Amount Per Transaction"
							value="1,00,00,000"/>
					</div>
					<div className="col-md-12 mt-2">
                    <div className="txtbankInfo">
                        <p className="bankInfo">
                          <label className="checkboxcontainer abso_BankCheck"> 
                            <input type="checkbox"/>
                            <span className="checkmark"></span>
                            </label>   
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt 
                        </p>
                    </div>    
                </div>
					
				</div> 
        </>
    )
}

export default PreviewTemplate

interface LabelProps{
	label:string,
	value?:string
}
const LabelPreview:React.FC<LabelProps>=(props:LabelProps)=>{
	console.log(props,'labelProps')
	return(
		<div className="prevSec">
					<p className="prelbl">{props.label}</p>
					<p className="prevValue">{props.value}</p>
			</div>
	)
}

interface HeadingProps{
	name:string,
	image:string,

}
const Heading:React.FC<HeadingProps>=(props:HeadingProps)=>{
	return(
		<div className="col-md-12">
						<div className="headlinePrev">
						<p className="heading_name head_prev">
							<span>
								<Image image={props.image}/>
							</span>{props.name}</p>
						</div>
			</div>
	)
}