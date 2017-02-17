# AppKeepAlive
Simple script and launch agent to keep applications alive during your work day.

Copy the AppKeepAlive.sh to /usr/local/bin/

Add one copy of the plist for each application. edu.umn.oit.keepalive.hipchat.plist is provided as an example. Fields in this plist are easily editable to quickly add mutiple applications.

Fill in the Environment Variables section and remember to change the app name in the label to match your plist file name.

ProcessName is included for applications who's running proccess does not match the applicaiton name. This is the variable used to detect running applications. If left blank the script will use the AppName field. The Application does not need to reside in /Applications.

Start & Stop times are on a 24 Hour clock. Default is 9 a.m. to 5 p.m. (9-17).

Default is set to sech every 5 minutes. If the application is not running inside the time window it will launch the application. If the application allows, it will be launched in the background. Unfortunitely some applications such as HipChat will only open into the forground.

After you have copied both files to they're locations. you can activate the launch agent with the following command. sudo launchctl load ~/Library/edu.umn.oit.keepalive.hipchat.plist

Yes this was designed entirely because i can not remember to keep HipChat open during the day...
