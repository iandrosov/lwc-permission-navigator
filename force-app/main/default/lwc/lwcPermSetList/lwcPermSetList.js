import { LightningElement, track } from 'lwc';
import getPermSetAssignmentList from '@salesforce/apex/PermSetController.getPermSetAssignmentList';

export default class LwcPermSetList extends LightningElement {
    @track psalist;
    @track error;

    handleLoad() {
        getPermSetAssignmentList()
            .then(result => {
                this.psalist = result;
            })
            .catch(error => {
                this.error = error;
            });
    }
}
