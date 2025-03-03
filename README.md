# Lightning Web Components Permission Navigator App 

This app makes it simple to view user permission set assignments in Salesforce ORG. The app is built with SalesforceDX using Lightning Web Components that only available starting from Spring 19 release developer or Scratch org with API version 45.00 or greater. This package can be installed on any org to view/report on user permission sets.

## Installation Instructions

There are two ways to install LWC Permission Navigator App:

-   [Using Salesforce DX](#installing-permission-navigator-using-salesforce-dx): This is the recommended installation option. Use this option if you are a developer who may want to customize the app and may be contribute to this project code. This project is using sfdx commands that are currently replaced by Salseforce CLI and there are corresponding commands can be found in [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_org_commands_unified.htm#cli_reference_org_create_scratch_unified)
-   [Using an Unlocked Package](#installing-permission-navigator-using-an-unlocked-package): This option allows anybody to install and use the Permission Navigator App without installing a local development environment.

## Installing Permission Navigator using Salesforce DX

1. Set up your environment. Follow the steps in the [Quick Start: Lightning Web Components](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/) Trailhead project. The steps include:

    - Sign up for a Developer org and enable Dev Hub
    - Install the current version of the Salesforce CLI
    - Install Visual Studio Code
    - Install the Visual Studio Code Salesforce extensions, including the Lightning Web Components extension

1. If you haven't already done so, authenticate with your Dev Hub org and provide it with an alias, example (MyDevHub):

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
1. In the new scratch org permission sets assign LWC Permission Navi to your system admin user account that grants access to the app and tabs.
`sfdx force:user:permset:assign -n LWC_Permission_Navi`


1. In App Launcher, select the **LWC Permission Navigator** app.


## Installing Permission Navigator using an Unlocked Package

1. [Sign up](https://www.salesforce.com/form/signup/prerelease-spring19/) for the org, enable My Domain, and deploy it to admin users.

1. Click [this link](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tWs000000RhNRIA0) to install the unlocked package in your org.

1. Select **Install for All Users**

1. Assign your user a permission set `LWC_Permission_Navi`

1. In App Launcher, select the **LWC Permission Navigator** app.

## Create new Package Version
As a developer you can create your own package and make new package version for Unlocked or Manage package.
These CLI commands can be used to create new package version using DevHub.

1. Create new package in your own DevHub org
2. Create a package version
3. Version creation is async process may need to check status
4. Once package version is ready, install new PKG in target org

```
sf package create --name <PackageNameAlias> --package-type Unlocked --path force-app --target-dev-hub <mydevHub alias>

sf package version create --package <Package ID or Name> --installation-key-bypass --target-dev-hub <mydevHub alias> --skip-validation
```

Once version creation starts the output will display a CLI command to check status similar to the one below.

```
sf package:version:create:report -i 08cWs000000214rIAA
```
CLI always run from default DevHub. If you are using different DevHub need to provide the alias as example:

```
sf package:version:create:report -i 08cWs000000214rIAA -v <mydevHub alias>
```
We bypass recommended pass key here for simple demo and skip validation of unit tests. As a result the package version will be BETA that can install in sandbox, Developer or Scratch org editions. To make a package available to  production installation requires to make a package release using recommended CLI options `--code-coverage` as example command below

```
sf package version create --package <Package ID or Name> --installation-key-bypass --target-dev-hub <mydevHub alias> --code-coverage
```

## Resources

[Salesforce CLI Release Notes](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_release_notes.htm)




