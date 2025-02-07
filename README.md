# SteamOS utilities

A collection for various utilities for the Steam Deck and Steam OS.

## Syncthing

Syncthing allows to sync files between two systems. This can be used to sync any folder inside the Steam Deck and another computer, for example a "saves" folder. The next steps will show how to enable this.

Important note: both the Steam Deck and the other PC, where the files will be synced up, must be online at the same time for the sync to ocurr.

### Installing Syncthing

1. In the Steam OS interface, go to Power->Exit to Desktop.

![image](https://github.com/user-attachments/assets/0d9c0e42-d651-4227-a7c7-733e3023e7c7)

![image](https://github.com/user-attachments/assets/39bc1830-fc2f-4144-88e6-1013bec3602b)

3. Go to the SteamOS menu, and under System, click Discover.

![image](https://github.com/user-attachments/assets/5beadbf4-eb13-4690-ad8a-ccecbe125c8f)

5. Search for "Syncthing" and you'll find the Syncthing GTK app. Click on Install.

![image](https://github.com/user-attachments/assets/527ca01f-802d-4ff1-ad7c-2a9a66fa431a)

### Configuring Syncthing

1. Once installed, go to the SteamOS menu, and click "Internet", and then click on Syncthing GTK.

![image](https://github.com/user-attachments/assets/d766d149-ed64-4de9-853e-e15f07bf1ba6)

2. The app will open, and you'll have something similar to this:

![image](https://github.com/user-attachments/assets/9c283b66-7f61-47fd-9dac-51a4cb304c55)

3. It's time to configure which folder will have its contents synced up. On the three lines button, click on "Add shared folder".

![image](https://github.com/user-attachments/assets/4acbb537-cfa2-4fdc-b66b-91d6732940e2)

4. Under "Folder label" write a name for the shared folder. In this example, we'll share a folder called "saves", so we'll leave that as a name. In the Browse button, navigate to the folder you wish to sync, and once you're there, click on Ok.

![image](https://github.com/user-attachments/assets/24a36c1a-db3e-4af6-8e7c-90da08646c93)

5. Under "Rescan interval", write in seconds how frequent will the files sync. In this example, we'll leave at "1" so they update immediately.

6. In the checks below, leave both "Send only folder" and "Receive only folder" unchecked, so this folder will both send and receive files.

![image](https://github.com/user-attachments/assets/29017ecb-5ee2-427d-9ab4-e53f7808a8d6)

7. Click Save.

### Sync with another computer

1. Install Syncthing in another computer, downloading the installer for the OS of that PC: https://syncthing.net/downloads/

2. Once installed, open it. You'll arrive to a web interface.

<img width="1281" alt="image" src="https://github.com/user-attachments/assets/5d783cb2-00ca-436a-812c-dc736106317b">

3. Under Remote devices, click "Add remote device".

<img width="643" alt="image" src="https://github.com/user-attachments/assets/5f56fb71-15f1-4078-9bf4-c1c2c49b4212">

4. You'll be asked for the device ID. To obtain it, go to SteamOS, and on the three lines menu, click Show ID. Write down the long text that appears on top of the QR code. That must be entered under the Device ID text input. However, if both are on the same network, the device ID will appear automatically, and you'll just have to click on it, and then click Save.

![image](https://github.com/user-attachments/assets/33f7d074-b792-4bfb-888d-86a701d2df42)

5. On SteamOS, a notification will appear on Syncthing GTK. Click Add and then Save in the next window.

![image](https://github.com/user-attachments/assets/666794f5-7769-42b4-b59f-8a6348ecc4a8)

6. On the three line menu, click on Restart Daemon, and the other PC will appear as active.

### Sync folder

1. On Steam OS, right clic the folder, and click Edit.

![image](https://github.com/user-attachments/assets/3405b578-2324-41ac-947e-6fc6ad2f16c0)

3. In the "Share with devices" tab, check the name of the other PC you just activated. Click Save.

![image](https://github.com/user-attachments/assets/7b270fd4-90d8-4a93-8002-a70af20955ae)

4. Return to the other PC, and it will have a notification that a folder wants to be shared. Click Add.

<img width="1160" alt="image" src="https://github.com/user-attachments/assets/9afcb001-e1e1-4d2f-a262-5b4a4e8e68a2">

5. In the folder path, paste the whole path of the folder where the synced up content will be.

<img width="911" alt="image" src="https://github.com/user-attachments/assets/9930bf8b-6b5b-4345-b47d-c1a788629ef5">

6. In the "Advanced" tab, on Full scan interval (s), write in seconds how much time has to pass to sync the folder. Similar as above, we can leave 1 to be automatic. Click Save.

<img width="930" alt="image" src="https://github.com/user-attachments/assets/e7e7919f-b807-4c2a-982f-fa41925b6aaa">

7. On SteamOS, in the three lines menu, restart the deamon once again, and in both SteamOS and the other PC, the folder will start to sync.

![image](https://github.com/user-attachments/assets/de8c2acb-ac1e-4e26-a283-74cfea67a006)

### Testing the synchronization

1. On either SteamOS or the other PC, add a file to the folder. For example, we'll add a "test.rtf" file.

<img width="1068" alt="image" src="https://github.com/user-attachments/assets/59aa7487-968f-4577-b639-3efc68d5553c">

2. The file should appear in the other PC.

![image](https://github.com/user-attachments/assets/a5dbe3bc-ee08-429e-b1d9-d7086e334991)

### Automatic start-up

Until this point, Syncthing will have to be opened in Desktop mode every time we want our files to be synced. However, Syncthing can be configured to launch in the background every time SteamOS boots up. To do this, follow the next steps:

1. On SteamOS, download the <a href="https://raw.githubusercontent.com/jamescastells/steamos-utilities/main/syncthing/enable_autostartup.sh">enable_autostartup file</a> (right click that link, choose Save link as..., and save it to your Downloads folder).

2. On the Downloads folder, right click the enable_autostartup file and select Properties.

3. On the Permissions tab, check "Is executable". Then click OK.

4. Double click the enable_autosartup file and click Execute.

This will enable Syncthing to start on every boot. To check its status, use the Syncthing GTK app described above.

If you want to disable the automatic start-up, follow these steps:

1. On SteamOS, download the <a href="https://raw.githubusercontent.com/jamescastells/steamos-utilities/main/syncthing/disable_autostartup.sh">disable_autostartup file</a> (right click that link, choose Save link as..., and save it to your Downloads folder).

2. On the Downloads folder, right click the disable_autostartup file and select Properties.

3. On the Permissions tab, check "Is executable". Then click OK.

4. Double click the disable_autostartup file and click Execute.


## Multiple directories with ES-DE

Not necesarily related to SteamOS, after some tinkering I found a way to enable multiple directories for ES-DE. This way, you can have ROMs in internal and external folders.

Important to note is that you can not have the same system in several folders. That means, for example, that the "NES" system will point to an internal folder, and the "Wii U" system will point to an external folder; but the "Wii U" system can't point both to an internal and external folder.

This guide assumes that ES-DE is already configured using a (probably?) internal folder, and the user wants to use it in conjuntion with an external folder of ROMs.

1. After ES-DE has populated your ROMs folder, exit ES-DE.

2. Go to the ROMs folder and rename it to "ROMs_backup". Now, create a new "ROMs" folder in the same level of "ROMs_backups" (side by side).

3. Open ES-DE and it will ask you to create the directories for your games. Do it.

4. Exit ES-DE and go to the new "ROMs" folder. Inside, there should be subfolders of systems. Move this "ROMs" folder to where you want the new ROMs to be (eg. the root of an external SD-CARD).

5. Rename the old "ROMs_backup" back to "ROMs". (Note: if you open ES-DE again, your previous games should be recognized again).

6. You need to obtain the full path of where the new "ROMs" folder is. If you're on Android and "ROMs" is in the SD-Card, you need the unique identifier of the SD-Card. Downloading and using the app Drives will get you that ID: https://play.google.com/store/apps/details?id=com.mobile_infographics_tools.mydrive&hl=en

After installing that app, use it and select your SD-CARD in the top-left icon. Write down the identifier (usually in the format XXXX-XXXX).

7. Go to https://gitlab.com/es-de/emulationstation-de/-/tree/master/resources/systems and open the folder of your system (eg. the "Android" folder if you are using Android). Open the es_systems.xml file.

8. Decide which system will have ROMs in the external folder. In this example, I have chosen that the "Wii U" system will point to newly created ROMs/wiiu in the SD-Card.

9. In the es_systems.xml file, go to the section of the system you chose. In my case, the Wii U section. Copy all of that section:

```html
    <system>
        <name>wiiu</name>
        <fullname>Nintendo Wii U</fullname>
        <path>%ROMPATH%/wiiu</path>
        <extension>.elf .ELF .rpx .RPX .tmd .TMD .wua .WUA .wud .WUD .wuhb .WUHB .wux .WUX</extension>
        <command label="Cemu (Standalone)">%EMULATOR_CEMU% %DATA%=%ROMSAF%</command>
        <platform>wiiu</platform>
        <theme>wiiu</theme>
    </system>
```


10. Go to the ES-DE folder (probably inside of your home folder). Inside, there's a custom_systems folder; open it. Create a file called es_systems.xml. Open it. (If there's already an es_systems.xml file, skip to step 12.)

11. Insert the following:

```html
<?xml version="1.0"?>
<systemList>
</systemList>
```

12. Before the ```</systemList>``` tag, paste the section you copied before. In my case, the es_systems.xml file is looking like this:

```html
<?xml version="1.0"?>
<systemList>
      <system>
        <name>wiiu</name>
        <fullname>Nintendo Wii U</fullname>
        <path>%ROMPATH%/wiiu</path>
        <extension>.elf .ELF .rpx .RPX .tmd .TMD .wua .WUA .wud .WUD .wuhb .WUHB .wux .WUX</extension>
        <command label="Cemu (Standalone)">%EMULATOR_CEMU% %DATA%=%ROMSAF%</command>
        <platform>wiiu</platform>
        <theme>wiiu</theme>
    </system>
</systemList>
```

13. Now, replace the line ```<path>%ROMPATH%/wiiu</path>``` with the path of where your wii ROMs are. If you're using an SD-Card on Android, this line would become: ```<path>/storage/XXXX-XXXX/ROMs/wiiu</path>```, where XXXX-XXXX is your SD-Card ID.

14. Save and exit the file. Copy some files to your folder inside the new location or SD-Card (in my case, inside the ROMs/wiiu/ folder) and ES-DE should pick them up. Remember that this means ES-DE will only look for Wii U Roms in the SD-Card, and will no longer look for them in the internal storage.

15. If you want to add another system to your new location or SD-Card, edit the es_systems.xml file to add another <system> section. For example, if I want both Wii U and Gamecube ROMs in my SD-Card:

```html
<?xml version="1.0"?>
<systemList>
      <system>
        <name>wiiu</name>
        <fullname>Nintendo Wii U</fullname>
        <path>/storage/XXXX-XXXX/ROMs/wiiu</path>
        <extension>.elf .ELF .rpx .RPX .tmd .TMD .wua .WUA .wud .WUD .wuhb .WUHB .wux .WUX</extension>
        <command label="Cemu (Standalone)">%EMULATOR_CEMU% %DATA%=%ROMSAF%</command>
        <platform>wiiu</platform>
        <theme>wiiu</theme>
    </system>
    <system>
        <name>gc</name>
        <fullname>Nintendo GameCube</fullname>
        <path>/storage/XXXX-XXXX/ROMs/gc</path>
        <extension>.ciso .CISO .dff .DFF .dol .DOL .elf .ELF .gcm .GCM .gcz .GCZ .iso .ISO .json .JSON .m3u .M3U .rvz .RVZ .tgc .TGC .wad .WAD .wbfs .WBFS .wia .WIA .7z .7Z .zip .ZIP</extension>
        <command label="Dolphin">%EMULATOR_RETROARCH% %EXTRA_CONFIGFILE%=/storage/emulated/0/Android/data/%ANDROIDPACKAGE%/files/retroarch.cfg %EXTRA_LIBRETRO%=/data/data/%ANDROIDPACKAGE%/cores/dolphin_libretro_android.so %EXTRA_ROM%=%ROM%</command>
        <command label="Dolphin (Standalone)">%EMULATOR_DOLPHIN% %ACTION%=android.intent.action.MAIN %CATEGORY%=android.intent.category.LEANBACK_LAUNCHER %EXTRA_AutoStartFile%=%ROMSAF%</command>
        <command label="Dolphin MMJR (Standalone)">%EMULATOR_DOLPHIN-MMJR% %ACTION%=android.intent.action.VIEW %EXTRA_AutoStartFile%=%ROMSAF%</command>
        <command label="Dolphin MMJR2 (Standalone)">%EMULATOR_DOLPHIN-MMJR2% %ACTION%=android.intent.action.VIEW %EXTRA_AutoStartFile%=%ROMSAF%</command>
        <platform>gc</platform>
        <theme>gc</theme>
    </system>
</systemList>
```
