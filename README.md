

This a the starter project for Firebase Login in iOS 10 found on youtube.

https://www.youtube.com/channel/UCkDH_a13ltiVPqJDXsbGrZw


// 1- Install CocoaPods (if not installed)
// COPY BETWEEN >COPY_HERE< and paste in the terminal

> sudo gem install cocoapods < hit RETRUN and then enter you computer password


> cd < and then drag and drop the folder of the project. hit RETURN

> pod init < and then edit the pod file with Sublime Text to avoid '' issues' and add the the firebase pods you want from the below list and then save the file

pod 'Firebase/Core'	Prerequisite libraries and Analytics
pod 'Firebase/AdMob'	AdMob
pod 'Firebase/Messaging'	Cloud Messaging / Notifications
pod 'Firebase/Database'	Realtime Database
pod 'Firebase/Invites'	Invites
pod 'Firebase/DynamicLinks'	Dynamic Links
pod 'Firebase/Crash'	Crash Reporting
pod 'Firebase/RemoteConfig'	Remote Config
pod 'Firebase/Auth'	Authentication
pod 'Firebase/Storage'	Storage

> pod install < hit Return


From now on you should only use .xcworkspace file for the project
