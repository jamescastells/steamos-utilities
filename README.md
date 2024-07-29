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

