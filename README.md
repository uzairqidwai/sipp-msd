# sipp-msd
This tools allows MSD files to be transfered over SIP using SIPp. The primary application for this is to transfer the EmergencyCallData.eCall.msd file to simulate an eCall. The tool supports both IPv4 and IPv6 addresses. 


# How to Install


###### Ubuntu 22.04 
Run the following commands:
```
sudo apt-get update
git clone https://github.com/uzairqidwai/sipp-msd.git
cd sipp-msd/sipp-3.3.990
./configure
make
```


###### Ubuntu 20.04 
Run the following commands:
```
sudo apt-get update
sudo apt install autoconf
git clone https://github.com/uzairqidwai/sipp-msd.git
cd sipp-msd/sipp-3.3.990
./configure
make
```

# Usage

###### Starting the server
To start the server, use the following command:
```
./sipp -sn uas -i [serverip]
```

Examples:
```
./sipp -sn uas -i 192.168.31.12
./sipp -sn uas -i 2600:380:8e30:cd57:ed36:cf82:17b9:2fd8
```


###### Making a basic SIP call
Continuous calling:
```
./sipp -sn uac -i [clientip] [serverip]
```

Single Call:
```
./sipp -sf uac-msd.xml -i [clientip] [serverip] -s 100 -m 1 -l 1 -r 1 
```


###### Embeding MSD file in SIP invite
A default MSD file is included. This file may be edited to include the needed data. The only requirement is that the file must be named "EmergencyCallData.eCall.msd" to be recognized by the XML file.
```
./sipp -sf eCall.xml -i [clientip] [serverip] -s 100 -m 1 -l 1 -r 1
```

Examples:
```
./sipp -sf eCall.xml -i 192.168.31.12 192.168.31.15 -s 100 -m 1 -l 1 -r 1
./sipp -sf eCall.xml -i 2600:380:8e30:cd57:92e1:d740:e36b:127e 2600:380:8e30:cd57:ed36:cf82:17b9:2fd8 -s 100 -m 1 -l 1 -r 1 
```



###### Resources
https://datatracker.ietf.org/doc/html/rfc8147
https://docbox.etsi.org/Workshop/2021/202103NGeCall_webinar/Ralf_Weber_Next_Generation_eCall_vs_Legacy_eCall.pdf
https://www.itu.int/en/ITU-T/extcoop/cits/Documents/Workshop-201507-Beijing/Presentations/S1P5-Yan-Li.pdf
http://sipp.sourceforge.net/doc/reference.html


