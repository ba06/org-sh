#!/bin/sh
#ORG) creates alphanumeric folders and takes the directories root files and moves them there
#ORIENT) For orientation/mouse; $mouse defined in .bash_profile
#TTY) For tty commands/keybindings, especially tmux
case $1 in
	#ORG
	"a")
		mkdir 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z;
		mv 0* 0/;
		mv 1* 1/;
		mv 2* 2/;
		mv 3* 3/;
		mv 4* 4/;
		mv 5* 5/;
		mv 6* 6/;
		mv 7* 7/;
		mv 8* 8/;
		mv 9* 9/;
		mv [aA]*.* a/;
		mv [bB]*.* b/;
		mv [cC]*.* c/;
		mv [dD]*.* d/;
		mv [eE]*.* e/;
		mv [fF]*.* f/;
		mv [gG]*.* g/;
		mv [hH]*.* h/;
		mv [iI]*.* i/;
		mv [jJ]*.* j/;
		mv [kK]*.* k/;
		mv [lL]*.* l/;
		mv [mM]*.* m/;
		mv [nN]*.* n/;
		mv [oO]*.* o/;
		mv [pP]*.* p/;
		mv [qQ]*.* q/;
		mv [rR]*.* r/;
		mv [sS]*.* s/;
		mv [tT]*.* t/;
		mv [uU]*.* u/;
		mv [vV]*.* v/;
		mv [wW]*.* w/;
		mv [xX]*.* x/;
		mv [yY]*.* y/;
		mv [zZ]*.* z/;
	;;
	"a2")
		mkdir 9num ab cd ef gh ij kl mn op qr st uv wx yz;
		mv [0-9]* 9num/;
		mv [abAB]* ab/;
		mv [cdCD]* cd/;
		mv [efEF]* ef/;
		mv [ghGH]* gh/;
		mv [ijIJ]* ij/;
		mv [klKL]* kl/;
		mv [mnMN]* mn/;
		mv [opOP]* op/;
		mv [qrQR]* qr/;
		mv [stST]* st/;
		mv [uvUV]* uv/;
		mv [wxWX]* wx/;
		mv [yzYZ]* yz/;
	;;
	"a3")
		mkdir 9num abc def ghi jkl mno pqrs tuv wxyz
		mv [0-9]* 9num/
		mv [a-cA-C]* abc/
		mv [d-fD-F]* def/
		mv [g-iG-I]* ghi/
		mv [j-lJ-L]* jkl/
		mv [m-oM-O]* mno/
		mv [p-sP-S]* pqrs/
		mv [t-vT-V]* tuv/
		mv [w-zW-Z]* wxyz/
	;;
	"t")
		mkdir 3gp apk asf avi bmp cfg cpp css csv deb divx doc epub exe flv gif gz html iso jpg js lss mkv mov mp3 mp4 mpg msi ogg pdf php png ppt prc rar rtf swf theme tif ts txt wav webm wma wmv xml zip;
		mv *.3gp 3gp;
		mv *.apk apk;
		mv *.asf asf;
		mv *.avi avi;
		mv *.bmp bmp;
		mv *.cfg cfg;
		mv *.cpp cpp;
		mv *.css css;
		mv *.csv csv;
		mv *.deb deb;
		mv *.divx divx;
		mv *.doc doc;
		mv *.docx doc;
		mv *.epub epub;
		mv *.exe exe;
		mv *.flv flv;
		mv *.gif gif;
		mv *.gz gz;
		mv *.htm html;
		mv *.html html;
		mv *.iso iso;
		mv *.jpe jpg;
		mv *.jpeg jpg;
		mv *.jpg jpg;
		mv *.js js;
		mv *.lss lss;
		mv *.mov mov;
		mv *.mkv mkv;
		mv *.mp3 mp3;
		mv *.mp4 mp4;
		mv *.mpeg mpg;
		mv *.mpg mpg;
		mv *.msi msi;
		mv *.ogg ogg;
		mv *.pdf pdf;
		mv *.php php;
		mv *.png png;
		mv *.ppt ppt;
		mv *.pptx ppt;
		mv *.prc prc;
		mv *.rar rar;
		mv *.rtf rtf;
		mv *.swf swf;
		mv *.tif tif;
		mv *.ts ts;
		mv *.txt txt;
		mv *.wav wav;
		mv *.webm webm;
		mv *.wma wma;
		mv *.wmv wmv;
		mv *.xml xml;
		mv *.zip zip;
		mv *themepack theme;
	;;
	"t2")
		mkdir _audio _video _img _archive _txt
		mv *.mp3 _audio/;mv *.wav _audio/
		mv *.doc _text/;mv *.docx _text/;mv *.pdf 1doc/;mv *.txt _text/
		mv *.gif _img/;mv *.jpg _img/;mv *.png _img/;mv *.tif _img/
		mv *.3gp _video/;mv *.avi _video/;mv *.flv _video/;mv *.mp4 _video/;mv *.mpg _video/;mv *.webm _video/;mv *.wmv _video/
		mv *.css _text/
		mv *.epub _text/
		mv *.exe _text/
		mv *.htm _text/
		mv *.html _text/
		mv *.js _text/
		mv *.rar _archive/;mv *.zip _archive/;mv *.iso _archive/;mv *.gz _archive/
	;;
	#TTY
	"tmux")
		tmux new-session \; split-window -h \;
	;;
	#ORIENT
	"portrait") 
		#portrait (left)
		xrandr -o left
		xinput --disable 11
		xinput --enable 11
		xinput set-prop "SIS0457:00 0457:1136" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
		#xinput set-prop "Elan Touchpad" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
	;;
	"tent")
		#tent (inverted)
		xrandr -o inverted
		xinput --disable 11
		xinput --enable 12
		xinput set-prop "SIS0457:00 0457:1136" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
	;;
	"mson")
		#mouse on
		xinput --enable 11
	;;
	"msoff")
		#mouse off
		xinput --disable 11
	;;
	"tson")
		#mouse on
		xinput --enable 12
	;;
	"tsoff")
		#mouse off
		xinput --disable 12
	;;
	"landscape")
		#landscape (normal)
		xrandr -o normal
		xinput --enable 11
		xinput --disable 12
		xinput set-prop "SIS0457:00 0457:1136" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
		xinput set-prop "Elan Touchpad" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
	;;
esac
rmdir *
ls -Al
