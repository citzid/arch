> This is online install not offline. Thats mean you need INTERNET CONNECTION

<img src="https://github.com/citzid/arch/blob/main/bspwm/ksnip_20220822-103319.png"
     alt="citz arch"
     style="float: left; margin-right: 10px;" />
---------------------------------------------------------------------------------------------------------------------------------------------------------
### AUTO INSTALL PACKAGES
  1. kitty firefox thunar polybar sddm ufw 
  2. lxappearance zsh oh-my-zsh mpd ncmpcpp conky
  3. unzip ranger arandr xfce4-settings nitrogen
  
## You can install VSCODE,ALACRITTY,BRAVE BROWSER by editing /bspwm/sh/pkg.sh

---------------------------------------------------------------------------------------------------------------------------------------------------------
## I asume you have been installed ARCH base with no GUI.<br />

---------------------------------------------------------------------------------------------------------------------------------------------------------
### Lets Get started<br />
1. First install git
      ```bash
      sudo su
      pacman -S git
      ```

2. Clone repo <br />
      ```bash
      git clone https://github.com/citzid/arch.git && cd arch
      ```
   <br />
3. Choose your favorite Window Manager<br />
   **BSPWM**<br />
      ```bash
      sudo chmod +x bspwminstall.sh
      sudo ./bspwminstall.sh
      ```
   **I3-GAPS**<br />
      ```bash
      sudo chmod +x i3gapsinstall.sh
      sudo ./i3install.sh
      ```
      then ### **REBOOT**

--------------------------------------------------------------------------------------------------------------------------------------------------------
### key bind : 
1. super + enter = kitty <br />
2. super + b = firefox <br />
3. super + t = thunar <br />
4. super + q = kill (close app) <br />
5. super + space = rofi launcher <br />
6. ctrl + shift + r = restart WM <br />
7. ctrl + shift + c = reload config<br /><br /><br />





---------------------------------------------------------------------------------------------------------------------------------------------------------
# NOTE : 

 - if error "user is not in the sudoers file". <br /> 
   install git and   
   sudo<br /> 
     ```bash   sudo su   pacman -S sudo git   ```   <br /> 
   add your username below %sudo <br />  
         ```vim etc/sudoers```    <br />
         example : <br />   
         ```johndoe <tab>    ALL=(ALL) NOPASSWD:ALL```   
   save, exit  
         
 - fix screen resolution on virtualbox <br />   open terminal   <br /> 
   ```bash   xrandr   xrandr -s (your monitor resolution)   ```
   example:<br /> 	
   ```bash
   xrandr -s 1920x1080 	         
   xrandr -s 1366x768

    ```

     
### OR

install arandr <br />

```bash
   sudo pacman -S arandr
   arandr
   ```

Choose resolution of your monitor. apply.<br />
Then save your profile. <br /> 
1. click _layout_<br /> 
2. click _save As_ . 
3. write name whatever you want into _.screenlayout_ folder and save.
4. open terminal <br />
```sudo vim .profile```
5. write in last line <br />
```bash ~/.screenlayout/(your profilename).sh```

DONE... you can start build your own bspwm ARCH after this.<br />
---------------------------------------------------------------------------------------------------------------------------------------------------------
