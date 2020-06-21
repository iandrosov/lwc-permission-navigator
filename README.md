# Lightning Web Components Permission Navigator App 

This app makes it simple to view user permission set assignments in Salesforce ORG. The app is built with SalesforceDX using Lightning Web Components that only available startinf from Spring 19 release developer or Scratch org with API version 45.00 or greater. This package can be installed on any org to view/report on user permission sets.

## Installation Instructions

There are two ways to install LWC Permission Navigator App:

-   [Using Salesforce DX](#installing-permission-navigator-using-salesforce-dx): This is the recommended installation option. Use this option if you are a developer who may want to customize the app and may be contribute to this project code.
-   [Using an Unlocked Package](#installing-permission-navigator-using-an-unlocked-package): This option allows anybody to install and use the Permission Navigator App without installing a local development environment.

## Installing Permission Navigator using Salesforce DX

1. Set up your environment. Follow the steps in the [Quick Start: Lightning Web Components](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/) Trailhead project. The steps include:

    - Sign up for a Developer org and enable Dev Hub
    - Install the current version of the Salesforce CLI
    - Install Visual Studio Code
    - Install the Visual Studio Code Salesforce extensions, including the Lightning Web Components extension

1. If you haven't already done so, authenticate with your Dev Hub org and provide it with an alias (MyDevHub):

    ```
    sfdx force:auth:web:login -d -a MyDevHub
    ```

1. Clone the lwc-permission-navigator repository:

    ```
    git clone https://github.com/iandrosov/lwc-permission-navigator
    cd lwc-permission-navigator
    ```

1. Create a scratch org and provide it with an alias (**lwc-permission-navigator** in the command below):

    ```
    sfdx force:org:create -s -f config/project-scratch-def.json -a lwc-permission-navigator
    ```

1. Push the app to your scratch org:

    ```
    sfdx force:source:push
    ```

1. Open the scratch org:

    ```
    sfdx force:org:open
    ```
1. In the new scratch org permission setts assign LWC Permission Navi to your system admin user account that grants access to the app and tabs.
`sfdx force:user:permset:assign -n LWC_Permission_Navi`


1. In App Launcher, select the **LWC Permission Navigator** app.


## Installing Permission Navigator using an Unlocked Package

1. [Sign up](https://www.salesforce.com/form/signup/prerelease-spring19/) for the org, enable My Domain, and deploy it to all users.

1. Click [this link](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tB00000006l4xIAA) to install the unlocked package in your org.

1. Select **Install for All Users**

1. Assign your user a permission set `LWC_Permission_Navi`

1. In App Launcher, select the **LWC Permission Navigator** app.

## Resources






