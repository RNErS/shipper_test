# shipper_test
Create automation authentication shipper using robot framework

1. First Edit ${email data} and ${nomor handphone data} in file Resource_Registration.robot. You can change last digit on each variable
ex: ${email data}    test1008@test.com
    ${nomor handphone data}    08121002318
change number to any number that you want, just make sure the data that you edit is not exist in db.

2. Then, run file Authentication_Shipper.robot in terminal
ex: D:\other\shipper> robot Authentication_Shipper.robot
