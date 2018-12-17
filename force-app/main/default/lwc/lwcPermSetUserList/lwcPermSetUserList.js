import { LightningElement, track } from 'lwc';
import findUsers from '@salesforce/apex/PermSetController.findUsers';

export default class LwcPermSetUserList extends LightningElement {
    @track permsetKey = '';
    @track psalist;
    @track error;

    handleKeyChange(event) {
        this.permsetKey = event.target.value;
    }

    handleSearch() {
        findUsers({ permsetKey: this.permsetKey })
            .then(result => {
                this.psalist = result;
                this.error = undefined;
            })
            .catch(error => {
                this.error = error;
                this.psalist = undefined;
            });
    }
 
}

