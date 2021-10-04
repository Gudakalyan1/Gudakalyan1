import { LightningElement, api, wire } from 'lwc';
import getLocations from '@salesforce/apex/CourseDeliveryLocations.getLocations';

export default class DeliveryListMap extends LightningElement {
	mapMarkers;
	@api markersTitle = 'Deliveries Worldwide';
	@api listView='visible';

	@wire(getLocations)
	wired_getLocations({ error, data }) {
		this.mapMarkers = [];
		if (data) {
			this.mapMarkers = data.map(loc => ({
				location:
					{
						City: loc.City__c,
						Country: loc.Country__c,
					},
					description: `${loc.City__c}, ${loc.Country__c}, ${loc.numDeliveries} sessions`,
			}));

		} else if (error) {
			this.error = error;
		}
	}
}
