# invert-pdf
It makes the PDFs invert colours (dark mode to light mode and vice versa) and makes them readable and findable. 
## Installation (debian)
~~~
curl -O -L "https://raw.githubusercontent.com/Vaigyanik-Jinger/invert-pdf/main/install.sh" && bash install.sh && rm install.sh 
~~~
## Uninstall (linux)
~~~
rm -r ~/Scripts/invert-pdf && sed -i '/invertpdf/d' ~/.bashrc
~~~
IF you have some other shell, just chnage the config file name. for example, if you have a zsh shell, just replace .bashrc with .zshrc
