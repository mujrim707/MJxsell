#!/bin/bash
echo "
#  MMMMMMMM               MMMMMMMM                   jjjj                      iiii                          
#  M:::::::M             M:::::::M                  j::::j                    i::::i                         
#  M::::::::M           M::::::::M                   jjjj                      iiii                          
#  M:::::::::M         M:::::::::M                                                                           
#  M::::::::::M       M::::::::::Muuuuuu    uuuuuu jjjjjjjrrrrr   rrrrrrrrr  iiiiiii    mmmmmmm    mmmmmmm   
#  M:::::::::::M     M:::::::::::Mu::::u    u::::u j:::::jr::::rrr:::::::::r i:::::i  mm:::::::m  m:::::::mm 
#  M:::::::M::::M   M::::M:::::::Mu::::u    u::::u  j::::jr:::::::::::::::::r i::::i m::::::::::mm::::::::::m
#  M::::::M M::::M M::::M M::::::Mu::::u    u::::u  j::::jrr::::::rrrrr::::::ri::::i m::::::::::::::::::::::m
#  M::::::M  M::::M::::M  M::::::Mu::::u    u::::u  j::::j r:::::r     r:::::ri::::i m:::::mmm::::::mmm:::::m
#  M::::::M   M:::::::M   M::::::Mu::::u    u::::u  j::::j r:::::r     rrrrrrri::::i m::::m   m::::m   m::::m
#  M::::::M    M:::::M    M::::::Mu::::u    u::::u  j::::j r:::::r            i::::i m::::m   m::::m   m::::m
#  M::::::M     MMMMM     M::::::Mu:::::uuuu:::::u  j::::j r:::::r            i::::i m::::m   m::::m   m::::m
#  M::::::M               M::::::Mu:::::::::::::::uuj::::j r:::::r           i::::::im::::m   m::::m   m::::m
#  M::::::M               M::::::M u:::::::::::::::uj::::j r:::::r           i::::::im::::m   m::::m   m::::m
#  M::::::M               M::::::M  uu::::::::uu:::uj::::j r:::::r           i::::::im::::m   m::::m   m::::m
#  MMMMMMMM               MMMMMMMM    uuuuuuuu  uuuuj::::j rrrrrrr           iiiiiiiimmmmmm   mmmmmm   mmmmmm shel
#                                                   j::::j                                                   
#                                         jjjj      j::::j                                                   
#                                        j::::jj   j:::::j                                                   
#                                        j::::::jjj::::::j                                                   
#                                         jj::::::::::::j                                                    
#                                           jjj::::::jjj                                                     
#  
                                                ";
echo "";
echo "[✔] You will install MJsell tool in the system [Y/N] :" ;
read baba
if [ $baba == "y" ] ; 
  then
    echo " "
  else
    exit
fi

echo "[✔] Where Do you want to install the tool? [Ex:/usr/share/doc]:";
read refdir
echo "[✔] Checking directories..."
if [ -d "$refdir/MJsell" ] ;
then
echo "[◉] A directory MJsell was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "$refdir/MJsell"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/mujrim707/    $refdir/MJsell;
 echo "#!/bin/bash 
 perl $refdir/MJsell/MJsell.pl" '${1+"$@"}' > MJsell;
 chmod +x MJsell;
 sudo cp MJsell /usr/bin/;
 rm MJsell;


if [ -d "$refdir/MJsell" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔                    MJsell   ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
