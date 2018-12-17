import { LightningElement, wire } from 'lwc';
import getPermSetUserCount from '@salesforce/apex/PermSetController.getPermSetUserCount';

export default class LwcPermSetUserCount extends LightningElement {
    @wire(getPermSetUserCount) permissions;
}