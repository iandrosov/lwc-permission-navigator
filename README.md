# Lightning Web Components Permission Navigator App 

This app makes it simple to view user permission set assignments in Salesforce ORG. The app is built with SalesforceDX using Lightining Web Components that only available in Spring 19 release. can be used on Spring 19 pre-release developer or Scratch orgs. Once teh Spring 19 will go GA thsi package can be installed on any org to view/report on user permission sets.

## Installation Instructions

There are two ways to install LWC Permission Navigator App:

-   [Using Salesforce DX](#installing-permission-navigator-using-salesforce-dx): This is the recommended installation option. Use this option if you are a developer who may want to customize the app and may be contribute to this project code.
-   [Using an Unlocked Package](#installing-permission-navigator-using-an-unlocked-package): This option allows anybody to install and use the Permission Navigator App without installing a local development environment.

## Installing Permission Navigator using Salesforce DX

> **IMPORTANT**: Because of a current issue in pre-release, make sure your project path doesn't include any of the following folder names: **lwc**, **aura**, **wave**. For example, DO NOT clone this repository in a folder called **/Projects/lwc**.

1. Set up your environment. Follow the steps in the [Quick Start: Lightning Web Components](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/) Trailhead project. The steps include:

    - Sign up for a Spring '19 pre-release org and enable Dev Hub
    - Install the pre-release version of the Salesforce CLI
    - Install Visual Studio Code
    - Install the Visual Studio Code Salesforce extensions, including the Lightning Web Components extension

1. If you haven't already done so, authenticate with your Spring '19 hub org and provide it with an alias (spring19hub):

    ```
    sfdx force:auth:web:login -d -a spring19hub
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

1. In App Launcher, select the **LWC Permission Navigator** app.


## Installing Permission Navigator using an Unlocked Package

1. [Sign up](https://www.salesforce.com/form/signup/prerelease-spring19/) for a Spring '19 pre-release org, enable My Domain, and deploy it to all users.

1. Click [this link](https://login.salesforce.com/packaging/installPackage.apexp?p0=0HoB0000000TN31KAG) to install the  unlocked package in your Spring '19 org.

1. Select **Install for All Users**

1. In App Launcher, select the **LWC Permission Navigator** app.

## Resources






