# wlpntu
A small lightweight script for creating XML files for Ubuntu Wallpaper Slideshows.(Modified and expanded version of code from here http://bit.ly/1RT5XL1)

# How to Get it!
You can either [clone this repository](https://github.com/virte-c/wallpuntu) or go to the release section to download the most up to date stable [release](https://github.com/virte-c/wallpuntu/releases).

# How to use it!

## Copy It
Once you've gotten a copy of `wlpntu.sh` file, place it in the directory of the wallpapers you wish to create a slideshow out of.

![Imgur](http://i.imgur.com/vg3mRYf.png)

## Make It Executable
Next you need to have linux make the file executable. Open a terminal in the directory where `wlpntu,sh` and all of your wallpapers are and run the following command:

`chmod +x wlpntu.sh`

![Imgur](http://i.imgur.com/NLeNp2v.png)

## Run It

Now run the script using the command:

`./wlpntu.sh`

You can then enter the slideshow file name as well as how long you want each wallpaper to be shown for and how long for the transition to be. Note all units are in 'Seconds'.

![Imgur](http://i.imgur.com/n4IHLSR.png)


## Generate It

Once you've entered in all of your settings, click 'enter' to Generate the wallpaper slideshow XML file.

![Imgur](http://i.imgur.com/dy0UUBF.png)

## Add It

Now that we have our slideshow *.xml file, Now we can add it to Ubuntu. Open up 'Appearance Preferences' and click `Add`.
![img](http://imgur.com/c8ZEzpI.png)

Be sure to change the file filter too `All Files` to be able to see the *.xml file. Select your `*.xml` file and you're all done!

![Imgur](http://i.imgur.com/dJ0FeJK.png)

# License
wlpntu is a modified and expanded version of code from here http://bit.ly/1RT5XL1. It is released under the [MIT License](https://github.com/virte-c/wallpuntu/blob/master/LICENSE).
