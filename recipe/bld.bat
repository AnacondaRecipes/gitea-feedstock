set "TAGS=bindata"
make generate all
set "GOPATH=%SRC_DIR%"
cd src/code.gitea.io/gitea
go get -v .
go build
mkdir -p $PREFIX/bin
MOVE %GOPATH%/bin/gitea.exe %LIBRARY_BIN%
