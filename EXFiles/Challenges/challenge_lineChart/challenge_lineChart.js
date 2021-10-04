import { LightningElement, api } from 'lwc';
import { loadScript } from 'lightning/platformResourceLoader';
import chartjs from '@salesforce/resourceUrl/chart';
import { reduceErrors } from 'c/ldsUtils';

const CHART_CONFIG = {
	dom_selector: 'canvas.visitorsLineChart',
	label: 'Visitors',
	type: 'line',
	borderColor: "rgb(255,0,0)",
	fill: false,
	options: {
		responsive: true,
		legend: { display: false },
		title: { display: false },
		animation: {
			animateScale: true
		}
	}
}

export default class challenge_lineChart extends LightningElement {
    error;
    _chart;
	_chartjsInitialized = false;
	@api analyticsUrl;
	
    renderedCallback() {
		if (this._chartjsInitialized) {
            return;
        }
		this._chartjsInitialized = true;
		
		Promise.all([
			loadScript(this, chartjs),
			fetch(this.analyticsUrl).then(response => response.json())
		])
			.then(results => {
				let data = results[1];
				let monthLabels = [];
				let visitCounts = [];
				for (let i=0; i < data.visits.length; i++) {
					monthLabels.push(data.visits[i].month);
					visitCounts.push(data.visits[i].count);
				}
				
				const config= {
					type: CHART_CONFIG.type,
					data: {
						labels: monthLabels,
						datasets: [{
							label: CHART_CONFIG.label,
							data: visitCounts,
							borderColor: CHART_CONFIG.borderColor,
							fill: CHART_CONFIG.fill
						}]
					},
					options: CHART_CONFIG.options
				};
				const ctx = this.template
                    .querySelector(CHART_CONFIG.dom_selector)
					.getContext('2d');
				this._chart = new window.Chart(ctx, config);
				
			})
			.catch(error => {
				let errors = reduceErrors(error);
				console.error('Unable to fetch from URL ' + this.analyticsUrl);
				console.error('NOTE: if you see a CSP error, and you just added the domain to CSP trusted sites, come back and try again shortly.');
			});
			
			
    }
}
