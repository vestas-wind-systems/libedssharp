# Requires mono-devel and msbuild/xbuild:
# https://www.mono-project.com/download/stable/

APP := EDSTest

all:
ifeq ($(OS),Windows_NT)
	msbuild $(APP)
else
	xbuild $(APP)/*.csproj
endif

clean:
	$(RM) -r $(APP)/bin

install:
	cp -Tr $(APP)/bin/Debug /opt/EDSEditor
