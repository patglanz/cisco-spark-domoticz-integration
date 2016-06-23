# cisco-spark-domoticz-integration

Receive Domoticz home automation system/Switch messages in Cisco Spark

1. If you haven't done so, create a Cisco Spark account for the Domoticz system to use here: https://www.ciscospark.com
This account should be different from your Spark account you use for use daily business. 
You will require a separate email account to sign up.

2. Make sure that you have curl installed on your Domoticz raspberry or Debian flavoured server:
log on to your domoticz server via ssh. If you're sitting in front of a windows computer, you want to use Putty. Check here to dowload: http://www.putty.org/.
Raspbian uses the user „pi“ as the default user, with the default password „raspberry“. Your milage may vary, check your distribution documentation for default/root logon credentials. The script we're going to create will need the curl package to be installed, which it isn't per default. For Debian flavoured distributions,  let's do this real quick on the command line: sudo apt-get install curl

3. Gather your Spark Access token here: https://developer.ciscospark.com/getting-started.html (log in with your spark account created in step one)

4. Replace the string "your_personal_access_token_here" in the command line below with your actual access token you gathered in step3. Replace your_primary_spark_account@acme.com with the email you signed up with for your primary spark account.

curl https://api.ciscospark.com/v1/messages -X POST -H "Authorization:Bearer your-personal_acces_token_here” --data toPersonEmail=your_primary_spark_account@acme.com --data “text=Domoticz was here”

If everything works out okay, you should see a message pop up in your primary spark account, once you issue the command above.



# cisco-spark-domoticz-integration
