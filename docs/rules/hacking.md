## Hacking

### Types of Networks

#### SIGNET

The Solar Interplanetary Gateway Network, or SIGNET is a data network that provides FTL communication via quantum broadband network hubs. These hubs are highly secured by the system government. Hackers avoid going through SIGNET and prefer on site hacking. An intruder breaking into a system through SIGNET is easily tracked.

SIGNET hubs are accessible wherever system government can be found-- government controlled worlds, and space stations. Many large corporations and factions that are in the good graces of the government and have their own SIGNET hubs.

#### VPN

A Virtual Private Network is a network of datapads that can exchange encrypted communications. Only datapads that have been added by the system administrator can decrypt any information passed over that network. A VPN is a common security protocol used by corporations and is considered legal. Due to the nature of Virtual Private Networks, the data and identity of its users are anonymous to outside observers. This makes it possible for criminal organizations to use a VPN to communicate secretly over SIGNET. The only downside is, that if you want to add someone to a VPN, the safest way to do so is in person.

##### Setting up a VPN

Setting up a VPN takes a full day of hacking. You must acquire server space, and secure the system. Server space is a one time fee of 2,500 credits for 1 zettabyte of data, and an additional 500 credits per zettabyte. One zettabyte is enough for your crew to store a communications database, and a file server with enough space for a relatively small amount of data.

After purchasing your server and spending a day setting up your server. At the end of the day you must make a DC 12 intelligence (hacking) check. If you succeed, the network is set up, and you can proceed to securing the network (see below). If you fail, you can attempt to spend another day of hacking and make the check again. Since you have already paid to allocate the server, you do not have to pay for server space again unless you wish to set up a different network. There is no limit on how many networks you set up, as long as you pay a separate server setup fee for each.  

Each VPN will have an automatically generated base64 encoded random string identifier, but you can come up with an alias to make it easier to know what network you are connected to.

<br>
<br>

>### Network Monitoring
>Having a hacker actively monitoring a network for intruders allows you to add their intelligence (hacking) modifier to the network's security protocol DC.

### Breaking Into a System

Breaking into a system is a three step process.

#### Step 1: Secure a Connection
First you must have a connection to the network. If the network is connected to SIGNET, this is easy if the network has a public front. If it doesn't you must find a lead. You can discover a point of entry by either monitoring the traffic of someones datapad via packet sniffing, or analyze a stolen datapad. Hacking through DARKNET is not viable due to the slow response time. If the network is not connected to SIGNET, you must hack in person. A direct connection to the network can be made through any of its connected devices. A security network can be connected to through a security camera, door access panel, a disabled defense turret, engineering access panel, or any device connected to the network.

##### Packet Sniffing
A hacker's datapad can scan for packets being transmitted to and from a target device. You must be within 30 feet of the device. Due to encryption, you cannot see the contents of the data, but you can trace the destination of packets to determine the network they are connected to. Make a hacker check with the DC = 10 + the user's hacking modifier. On a success, while monitoring them you can determine the network they are connecting to. On a failure, make a dexterity (stealth) check to see if you were noticed.

#### Step 2: Bypass Security Protocol
Breaking security protocol requires 1 minute, and a successful intelligence (hacking) check against the network's security protocol DC. The level of access you gain depends on the result of the roll.

##### Intrusion Level
The level of access you gain is equal to the intrusion level.

**Intrusion Level = result of the hacking check - security protocol DC**

Once the intrusion level is calculated, you compare it to the security protocol table of the network to determine what systems you have access to. See example security protocol tables below.

#### Step 3: Hide You Tracks
Once you have broken in, make a (dexterity) stealth check to avoid being detected for every minute you are connected. The longer you are connected, the higher chance of detection. If the network is being monitored, system administrators may be alerted to your presence if you are not careful. Also, if you leave any traces behind, system administrators might find evidence the were hacked. If you're careful enough, you can get in and get out, leaving them none the wiser.


### Taking Control
If you gain intrusion level 5 (administrator) access to a network, and have a security protocol script available (see below), you can spend 10 minutes to take control of the system, and lock out any other users. This automatically alerts system administrators to your presence.

\page


#### Adding a datapad to a VPN

All you need to do to add a datapad to a VPN is give them the access codes, and add their public key to the VPN authorized user registry. You can set up a handshake script when setting up the VPN, so all you need to do is link the datapad to yours, and run the connection script. Once the owner confirms the connection, they will have access to the VPN. You can deny them access at any point by removing them from the authorized user registry.

### DARKNET

DARKNET is a broadband mesh network that, unlike SIGNET, is limited by the speed of light. One downside is DARKNET has a response time ranging between 10 minutes and 3 hours (depending on the time of year and the client/host locations). DARKNET is primarily viable for transferring illegal information, or things you want to keep from the prying eyes of the government.

Those who know how to access to DARKNET include Scoundrels and Cybernetics, or anyone with the Criminal/Spy, Smuggler, or Hacker background.

### Security Network

Security networks control doors, cameras, defense systems for a building, space station, or base. Below is a general security scheme. However, some sysadmins may put certain network functions on higher access levels.

<div style="text-align:center">
** Security Protocol Table (security network)**

| Intrusion Level | Access                             |
|-----------------|------------------------------------|
| 0               | View Network Functions             |
| 1               | View Security Cameras              |
| 2               | Door and Lighting Control          |
| 3               | Disable Cameras or Defense Systems |
| 4               | Control Defense Systems            |
| 5               | Administrator Access               |

</div>

### Data Network

A data network is just a file server that may contain anything from emails, documents, plans, blueprints, or faction intel. Once you gain access to a data network, you can download any file that your level of access permits. Data networks have user based permission schemas. When you break in, level 1 intrusion will allow you to impersonate a specific user on that network, and have access to everything they have access to. Admin intrusion gives you access to all the data on the network.

<div style="text-align:center">
** Security Protocol Table (data network)**

| Intrusion Level | Access
|-----------------|--------
| 0               | View Network Users           |
| 1               | Level 1 Users Impersonation  |
| 2               | Level 2 Users Impersonation  |
| 3               | Level 3 Users Impersonation  |
| 4               | Level 4 Users Impersonation  |
| 5               | Administrator Access         |

</div>

## Securing a System

The security of a network or system is only as good as its system administrator. Basic security protocol gives a system a DC of 12. A network that you use your own security protocol on has a DC = 10 + your hacking modifier. All networks come with default security protocol, but you can spend a day implementing your own security protocol.

#### Security Protocol Script
You can also generate a security protocol script on your databad. Spend a day hacking, and at the end of the day succeed a DC 12 intelligence (hacking) check, and your script is created. From then on, you can spend 10 minutes running the script on a system you control, and your security protocol will be implemented with you as the sysadmin. If at any point your hacking modifier increases, you must rewrite the script using the same process.

## Large Data Files
Unless you are storing the large files below, generally a file server that is 1zb is large enough to last a typical frelancer group a year before needing to be expanded.

<div style="text-align:center">
| Data Type          | Data Size     |
|--------------------|---------------|
| VR Quality Video   | .1zb per hour |
| 1000 Intel         | 1zb           |
| Stack Backup       | 10zb          |
|
  </div>

##### Stack Backup
A stack backup is the largest single data item. A single stack backup takes up 10zb of data. Backups must be processed through SIGNET to avoid packet loss which could lead to corrupted backups. Backing up also requires the highest speed SIGNET connection, and takes 10 minutes.

##### VR Video File
VR video not only contains visual and audio, but all the components required to recreate a completely immersive VR experience. VR might either be captured directly from Stack memory, or a specialized VR capture device. Either way, the files created are quite large.

>## Faction Intel
>Faction Intel is encrypted data about the organization that you hacked. This can be sold annonymously on DARKNET for credits at a 1:1 ratio. You can also spend 1 day per 100 intel with a successsful DC 12 intelligence (hacking) check to decrypt the data. Decrypted intel will give you valuable information about the organization that you can leverage for a mission. The larger the amount of intel decrypted, the better the information is yielded. Alternatively you can trade intel with an opposing faction to make a point of contact within that faction, or increase your reputation within that faction.
