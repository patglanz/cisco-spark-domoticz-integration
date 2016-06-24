#!/bin/bash
accesstoken="your_spark_access_token_here" 
roomId="the_room_id_of_the_room_you_want_domoticz_to_post_messages_to"
curl https://api.ciscospark.com/v1/messages -X POST -H "Authorization:Bearer $accesstoken" --data "roomId=$roomId" --data "text=$1"
