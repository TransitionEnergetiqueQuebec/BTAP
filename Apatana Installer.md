Here is a list of steps to mount your PC.

*list made in january 2019* 

*Assuming the PC is Windows 10 - 64bit* 

## 1. Create an Admin user with these apps:
  1) Sketchup make 2017
  2) Openstudio 2.6.0
  3) NotePad++
  4) Chrome
  5) Acrobat Reader

## 2. Install the Aptana/Git/Ruby environement 
  1) Install [RailsInstaller](http://railsinstaller.org/en)  
  (version called "Ruby Installer Windows Ruby 2.3"  - Ruby 2.3.3 -  Rails 5.1)

  2) Install [Windows Git](http://go.appcelerator.com/installer_git_windows.exe)
  note: use notepad++ as git defaut editor

  3) Install [JAVA SE 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) 
  note: choose this version : 32 bit (X86) JDK 
  
  4) Install [Aptana_Studio_3_Setup.exe](https://github.com/aptana/studio3/releases)
  version 3.7.2.201807301111 (july 30 2018)
  
  5) Install debugger from the Aptana's Terminal with this command
  	`gem install ruby-debug-ide`

## 3. Create a specific account for each developper:
  1) On the first Admin session, create the account via Settings>Accounts>Familly & other people

  2) Log into the created developper session (with key Win + L) 
  
  3) Install Aptana (à revalider)
	
  4) In user environement variables add the first two folling lines (if not Aptana will not find any ruby and git executable:)

		`C:\RailsInstaller\Git\cmd`
		
		`C:\RailsInstaller\Ruby2.3.3\bin`
		
		`%USERPROFILE%\AppData\Local\Microsoft\WindowsApps`

## 4. Import the remote repository in Aptana and Commit + Push your changes
  ### Option 1: using [https protocol](https://books.google.ca/books?id=yFPc1ashInkC&pg=PT254&lpg=PT254&dq=Aptana+Studio+is+pre-packaged+with+portable+Git+and+so+you+can+start+using+Git+with+Aptana+Studio+immediately&source=bl&ots=90fjmnGtlp&sig=ACfU3U08FAsz7Rd407Kn684lOc5MMq2mbA&hl=en&sa=X&ved=2ahUKEwjyhbmqrf_fAhVug-AKHcL7DpYQ6AEwAnoECAAQAQ#v=onepage&q=Aptana%20Studio%20is%20pre-packaged%20with%20portable%20Git%20and%20so%20you%20can%20start%20using%20Git%20with%20Aptana%20Studio%20immediately&f=false)
	It's been tested and connectivity verified via Apatana by:
1. Import the [remote repository](https://github.com/TransitionEnergetiqueQuebec/BTAP) via Git > Git Repository as a new Project
2. enter your credentials
3. enter the URI (https://github.com/TransitionEnergetiqueQuebec/BTAP) 
4. the project shoul be import locally on the computer
5. after the change on a file  make a **_commit_** (right click on the file > Team > commit) note: commit is  local command only
6. To save the change on the [remote repository](https://github.com/TransitionEnergetiqueQuebec/BTAP) make a **_push_** (right  
		

or 

  ### Option 2 : Using ssh protocol 
  adapt Git user/password ssh session (solution not fully tested)
  
	https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
	https://help.github.com/articles/error-permission-denied-publickey/
	https://guides.github.com/features/mastering-markdown/
