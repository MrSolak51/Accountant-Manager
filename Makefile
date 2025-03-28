FILE=src/main.cpp

GTKMM_INCLUDES= -IC:/msys64/mingw64/bin/../include/gtkmm-3.0 -IC:/msys64/mingw64/bin/../lib/gtkmm-3.0/include -IC:/msys64/mingw64/bin/../include/atkmm-1.6 -IC:/msys64/mingw64/bin/../lib/atkmm-1.6/include -IC:/msys64/mingw64/bin/../include/gdkmm-3.0 -IC:/msys64/mingw64/bin/../lib/gdkmm-3.0/include -IC:/msys64/mingw64/bin/../include/giomm-2.4 -IC:/msys64/mingw64/bin/../lib/giomm-2.4/include -IC:/msys64/mingw64/bin/../include/gtk-3.0 -IC:/msys64/mingw64/bin/../include -IC:/msys64/mingw64/bin/../include/cairo -IC:/msys64/mingw64/bin/../include/atk-1.0 -IC:/msys64/mingw64/bin/../include/pangomm-1.4 -IC:/msys64/mingw64/bin/../lib/pangomm-1.4/include -IC:/msys64/mingw64/bin/../include/glibmm-2.4 -IC:/msys64/mingw64/bin/../lib/glibmm-2.4/include -IC:/msys64/mingw64/bin/../include/cairomm-1.0 -IC:/msys64/mingw64/bin/../lib/cairomm-1.0/include -IC:/msys64/mingw64/bin/../include/sigc++-2.0 -IC:/msys64/mingw64/bin/../lib/sigc++-2.0/include -IC:/msys64/mingw64/bin/../include/pango-1.0 -IC:/msys64/mingw64/bin/../include/pixman-1 -IC:/msys64/mingw64/bin/../include/fribidi -IC:/msys64/mingw64/bin/../include/harfbuzz -IC:/msys64/mingw64/bin/../include/freetype2 -IC:/msys64/mingw64/bin/../include/gdk-pixbuf-2.0 -IC:/msys64/mingw64/bin/../include/libpng16 -IC:/msys64/mingw64/bin/../include/webp -DLIBDEFLATE_DLL -IC:/msys64/mingw64/bin/../include/glib-2.0 -IC:/msys64/mingw64/bin/../lib/glib-2.0/include -LC:/msys64/mingw64/bin/../lib
MARIADB_INCLUDES= -IC:\\msys64\\mingw64\\include\\mysql -LC:\\msys64\\mingw64\\lib\\mysql 

GTKMM_LIBS= -lgtkmm-3.0 -latkmm-1.6 -lgdkmm-3.0 -lgiomm-2.4 -lgtk-3 -lgdk-3 -lz -lgdi32 -limm32 -lshell32 -lole32 -luuid -lwinmm -ldwmapi -lsetupapi -lcfgmgr32 -lhid -lwinspool -lcomctl32 -lcomdlg32 -lcairo-gobject -latk-1.0 -lpangomm-1.4 -lglibmm-2.4 -lcairomm-1.0 -lsigc-2.0 -lpangocairo-1.0 -lpangowin32-1.0 -lpango-1.0 -lcairo -lharfbuzz -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0 -lintl
MARIADB_LIBS= -lmariadb
 
MY_LIBS = src/BACKGROUND/node.cpp src/BACKGROUND/list.cpp src/BACKGROUND/database.cpp src/GUI/gui.cpp src/GUI/dialog.cpp src/GUI/boxes.cpp src/GUI/date_picker.cpp src/GUI/login.cpp src/BACKGROUND/account.cpp src/GUI/account_gui.cpp src/GUI/graph.cpp

PROGRAM = program\accountant_manager.exe


CC=g++

all:build

build:
	$(CC) $(FILE) $(MY_LIBS) $(GTKMM_INCLUDES) $(MARIADB_INCLUDES) $(GTKMM_LIBS) $(MARIADB_LIBS) -o $(PROGRAM)
run:
	$(CC) $(FILE) $(MY_LIBS) $(GTKMM_INCLUDES) $(MARIADB_INCLUDES) $(GTKMM_LIBS) $(MARIADB_LIBS) -o $(PROGRAM)
	.\$(PROGRAM)