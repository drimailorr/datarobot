#Vagrant
#Copy Vagrantfile and *.sh scripts from vagrant directory into the empty folder and run following
vagrant up --provider virtualbox

To test application I've intentionally created one record with wrong md5checksum and another one with correct md5checksum
To run insert, pls execute following command:
192.168.33.30:8080/run_post/insert

You sould see the following in your browser:
UID: 1 Write error: md5checksum mismatch
UID: 2 successfully persisted to DB 

To validate:
http://192.168.33.30:8080/run_get/1/2015-05-12

you should see the following, as record with UID 1 has wrong checksum:
Number of occurances 0

From the other hand if you execute:
http://192.168.33.30:8080/run_get/2/2015-05-13

you'll see the following:
{u'date': u'2015-05-13T14:36:00.451765', u'_id': ObjectId('56c4ba152a29b1249c6a5dd6'), u'uid': u'2', u'md5checksum': u'84d727f094712a56fed32a19a5db7578', u'name': u'Jane Doe'}
Number of occurances 1


Meaning the test is successful, we can confirm on MongoDB side directly by issuing following commands:
use users
db.users.find({'uid':'1'})
db.users.find({'uid':'2'})
