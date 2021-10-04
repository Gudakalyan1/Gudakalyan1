import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/Contacts.getContacts';


export default class Challenge_contactList extends LightningElement {

	firstLetter = ''; 
	@wire(getContacts, {firstLetter: '$firstLetter'}) contacts;
	letters = ('a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z').toUpperCase().split(',');	

	//this same task could be accomplished using imperative Apex in the constructor.

	columnConfig = [
		{
			label: 'Name',
			fieldName: 'Name',
			type: 'text'
		},
		{
			label: 'Email',
			fieldName: 'Email',
			type: 'email'
		},
		{
			label: 'Phone',
			fieldName: 'Phone',
			type: 'phone'
		}
	];

	onLetterSelect(event) { 
		this.firstLetter = event.detail.value;
	}

	
}