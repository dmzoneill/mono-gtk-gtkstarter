CXXFLAGS =	-O2 -g -Wall -fmessage-length=0 `pkg-config gtkmm-2.4 --cflags --libs`

OBJS =		GtkStarter.o

LIBS =

TARGET =	GtkStarter

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
