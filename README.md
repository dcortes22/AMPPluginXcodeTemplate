# AMP SDK Plugin Template

This Xcode Template File will allow you create Plugins using AMP SDK iOS/tvOS.

## How to Install
1. Run the Install Script ./install.sh
2. Restart Xcode

The Script will install file templates on the path ~/Library/Developer/Xcode/Templates

## How to Use
Once you install correctly the Template Files, you can use it via Xcode.

Open Xcode and Select New Project
![Xcode New Project](https://image.ibb.co/bZW8S5/Screen_Shot_2017_08_02_at_1_05_25_PM.png)

Select iOS or tvOS Tab and scroll down to the new AMP Section
![Xcode Plugin](https://image.ibb.co/n7unn5/Screen_Shot_2017_08_02_at_1_07_58_PM.png)

Once the project is created it will be ready as an AMP-compatible template. You will see two targets: the plugin target (Framework) and the Aggregate Target (Universal Script to generate the final binary).

## Adding New File to the Project
The basic project will be empty by default, let's add a new file using our File Template.

On Xcode go to File -> New -> File..

Scroll Down to AMP Section and Select AMP Plugin Source
![AMP Plugin Source](https://image.ibb.co/eKCnLQ/Screen_Shot_2017_08_02_at_1_42_15_PM.png)

This will create a Basic Swift Template File with all you need to start and code your Plugin.

Make sure you have your AmpCore or AmpCoreTV Framework linked on your project to avoid compilation errors.

![AMP Plugin Error](https://image.ibb.co/na1sn5/Screen_Shot_2017_08_02_at_1_45_06_PM.png)
