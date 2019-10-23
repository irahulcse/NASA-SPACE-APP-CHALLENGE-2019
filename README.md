# FIERY_OK V2.0
It is a project made in International NASA Space Apps Hackathon.under this project task was to Spot The Fire.So,what it does was that in case of any emergency situation User just click the picture of that incident and upload it.His location is automatically tracked and Admin can see that Uploaded picture in his panel with all the details.So,he will just click a button and Email will be sent to all the Users of the city,Police Station and Fire Brigade.Further on now actions depend on them. 

#### Website's Home Page:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Screenshot%20(532).png)
### Advanced Features Implemented :
#### Reporting Incidents:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Screenshot%20(93).png)
#### Email Sent To Users: 
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Picture2.jpg)
#### NASA DataSet Used
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Picture1.jpg)
#### Database Backup in Microsoft Azure:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Picture3.jpg)
#### Telegram Bot for help:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Picture4.jpg)

+ [Development](#development)
+ [Contribute](#contribute)
+ [Setup](#setup)
+ [Features](#features)
+ [Screenshots](#screenshots)



## Development
The backend of the system is developed on *[MSSQL SERVER](https://www.microsoft.com/en-au/sql-server/sql-server-downloads)* and it is free and open source. You just need to download this and installed it on your pc and it will be integrated with the Frontend in the Visual Studio 2017.
The front end is built on *[ASP.NET C#]*, you can use that in Visual Studio an OpenSource Platform Developed By Microsoft.Bootstrap Files are used too[Bootstrap v2.2.2](http://bootstrapdocs.com/v2.2.2/docs/) using [jQuery](https://blog.jquery.com/2013/02/04/jquery-1-9-1-released/) and [Ajax](https://www.w3schools.com/xml/ajax_intro.asp) and basic HTML/CSS/Javascript are used.

## Contribute
+ For reporting bug about an incorrect file not being processed, open a new issue.
+ PRs are always welcome to improve exisiting system and documentation too.:thumbsup:

### Default Login Credentials For Admin
| Username      | Password |
| ------------- | ------------- |
|    ADMIN      | ADMIN |

### Default Login Credentials For User
| Username | Password |
| ------------- | ------------- |
| dk | 12345|


### Technology Used
* [ASP.NET C#](https://www.tutorialspoint.com/asp.net/) - ASP.NET C# For Learning Basics
* [Ajax](https://www.w3schools.com/xml/ajax_intro.asp) - Introducing with Ajax
* [JQuery](https://www.w3schools.com/jquery/) - Jquery for creating Validations
* [CSS](https://www.quackit.com/css/tutorial/implementing_css.cfm) -For Adding CSS in Design

## Setup

### Prerequisite: Install MSSQL 

If you don't already have the MSSQL Database Server(MSSQL Server Version 2012) installed, you will need to install it to use this project. If it is installed, you can skip to step 4.

1. Connect to your Windows server with Remote Desktop Connection.
2. From the Start Menu, open Internet Explorer.
3. Paste one of the following URLs into the address bar for the version you want to use, then press Enter. All versions are compatible with Windows Server 2008 and 2012.<br/>
[SQL Server 2008](http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe)<br/>
[SQL Server 2012](http://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPRWT_x64_ENU.exe)<br/>
[SQL Server 2014](http://download.microsoft.com/download/E/A/E/EAE6F7FC-767A-4038-A954-49B8B05D04EB/ExpressAndTools%2064BIT/SQLEXPRWT_x64_ENU.exe)
4. Scroll down and click Run to begin the download of SQL Server.
5. Click Yes to begin the install.
6. Click New installation or add features to an existing installation.
7. Agree to the terms for SQL Server, and proceed with the rest of the steps in the install wizard. During the wizard, make sure you perform the following steps:
When you get to the section for Server Configuration, make sure to toggle SQL Server Browser to Automatic.
When you get to the section for Database Engine Configuration, select Mixed Mode for authentication, a0nd enter a master password for your SQL Server install.

### Install Visual Studio 2017
Step 1: Before you begin installing Visual Studio:
1. Check the system requirements. These requirements help you know whether your computer supports Visual Studio 2017.
2. Apply the latest Windows updates. These updates ensure that your computer has both the latest security updates and the required system components for Visual Studio.
3. Reboot. The reboot ensures that any pending installs or updates don't hinder the Visual Studio install.
4. Free up space. Remove unneeded files and applications from your %SystemDrive% by, for example, running the Disk Cleanup app.

For questions about running previous versions of Visual Studio side by side with Visual Studio 2017<br/>See the [Visual Studio Compatibility Details](https://docs.microsoft.com/en-us/visualstudio/productinfo/vs2017-compatibility-vs#compatibility-with-previous-releases)<br/>
Step 2: Download Visual Studio
Next, download the Visual Studio bootstrapper file. To do so, choose the following button, choose the edition of Visual Studio that you want, choose Save, and then choose Open folder.<br/>
[Download Visual Studio](https://visualstudio.microsoft.com/vs/older-downloads/?utm_medium=microsoft&utm_source=docs.microsoft.com&utm_campaign=vs+2017+download
)<br/>
Step 3 - Install the Visual Studio installer<br/>
Run the bootstrapper file to install the Visual Studio Installer. This new lightweight installer includes everything you need to both install and customize Visual Studio.<br/>
1. From your Downloads folder, double-click the bootstrapper that matches or is similar to one of the following files:
  * vs_community.exe for Visual Studio Community
  * vs_professional.exe for Visual Studio Professional
  * vs_enterprise.exe for Visual Studio Enterprise
If you receive a User Account Control notice, choose Yes.
2. We'll ask you to acknowledge the Microsoft [License Terms](https://visualstudio.microsoft.com/license-terms/) and the Microsoft [Privacy Statement](https://privacy.microsoft.com/en-GB/privacystatement).<br/>Choose Continue.<br/><br/>
![](https://docs.microsoft.com/en-us/visualstudio/install/media/privacy-and-license-terms.png?view=vs-2019)<br/>
<br/>Step 4 - Choose workloads
   After the installer is installed, you can use it to customize your installation by selecting the feature sets—or workloads—that you      want. Here's how.<br/>
    <br/>1. Find the workload you want in the Installing Visual Studio screen.<br/>
 <br/>![](https://docs.microsoft.com/en-us/visualstudio/install/media/vs-installer-installing-workloads.png?view=vs-2019)<br/>
 <br/>For example, choose the ".NET desktop development" workload. It comes with the default core editor, which includes basic code        editing support for over 20 languages, the ability to open and edit code from any folder without requiring a project, and integrated    source code control.<br/>
       <br/> 2. After you choose the workload(s) you want, choose Install.
    Next, status screens appear that show the progress of your Visual Studio installation.

## Features
+ Admin can see all the Uploaded Fire Incidents claimed by the Users.
+ Admin is more of the supreme or you can say a Senior Vice President Person who commands and monitors the progress.
+ User can take a snapshot and upload the Photograph of the Incident.
+ Location of User is Automatically tracked and is sent to the Admin with all other details User Uploads.
+ Admin just click one button and All the People of that city who are registerd with City are awared by a Email.
+ Email is sent to the Police Station,Fire Station and Local Hospitals too of the City.
+ Google Assistant devloped for the website and Integrated with the website which worked as a chatbot for the website.
+ Made a telegram bot for the same Web App.
+Implemented Google Maps in it in order to show the Fire hazards places according to the Nasa Dataset.

## Screenshots
#### Chatbot Integrated in the Website:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Picture5.jpg)

#### Registration Form For User:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Screenshot%20(95).png)
#### Contact Us :
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Screenshot%20(637).png)
#### About Us:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Screenshot%20(636).png)
#### Used Dataset:
![](https://github.com/DhruvKinger/hackathon/blob/master/Forgithub/Capture.JPG)
#### Password Changing Panel:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(611).png)


## Furture Scope:
* Cross Platform Apps for the Project, so that the Fiery_Ok is easily accessible to user easily anywhere and can update any fire event to aware people and to Secure less damage.
*	We can check location from GPS that from which location the new user has registered the incident.So,we can verify that.
* The system could also be enhanced by adding the IBM Cloud to detect the intensity of the fire by Vision API in order to give accurate results.
* If Govt Approves it can be enhanced and made a global App.
