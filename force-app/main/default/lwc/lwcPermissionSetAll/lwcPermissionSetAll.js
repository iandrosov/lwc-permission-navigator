import { LightningElement, wire } from 'lwc';
import getPermSetList from '@salesforce/apex/PermSetController.getPermSetList';

export default class LwcPermissionSetAll extends LightningElement {
    @wire(getPermSetList) permissions;
}