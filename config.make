# -*-makefile-*-
# Extra make variables for gui library
#

CONFIG_SYSTEM_INCL +=  -I/usr/include/libpng16   
CONFIG_SYSTEM_LIB_DIR += -shared-libgcc  -lpng16   
ADDITIONAL_DEPENDS = -licns -laspell -lgif -lpng -ltiff -lz -ljpeg -lm 

# Build speech and sound.
BUILD_SPEECH=speech say
BUILD_SPEECH_RECOGNIZER=speech_recognizer
BUILD_SOUND=sound
RECOGNIZER_BASE_LIBS=-lpocketsphinx -lsphinxbase -lsphinxad 
RECOGNIZER_BASE_CFLAGS=-I/usr/include/sphinxbase -I/usr/include/pocketsphinx -I/usr/include/aarch64-linux-gnu -I/usr/include/aarch64-linux-gnu/sphinxbase 
RECOGNIZER_ENGINE_CLASS=PocketsphinxSpeechRecognitionEngine.m

# CUPS
GSCUPS_CFLAGS = 
GSCUPS_LDFLAGS = 
GSCUPS_LIBS = -lcups
GSCUPS_DATADIR = /usr/share/cups
BUILD_GSCUPS = YES

# Cross compilation
CROSS_COMPILING = no
