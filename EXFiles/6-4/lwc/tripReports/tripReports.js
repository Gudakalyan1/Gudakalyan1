import { LightningElement } from 'lwc';

export default class TripReports extends LightningElement {
	mode = 'browse';

	get browseMode() {
		return (this.mode==='browse');
	}
	get addOrEditMode() {
		return (this.mode==='add' || this.mode==='edit');
	}

}