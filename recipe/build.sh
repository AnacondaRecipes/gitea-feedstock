export GOPATH="$SRC_DIR"
cd src/code.gitea.io/gitea
go get -v .
go build
mkdir -p $PREFIX/bin
mv $GOPATH/bin/gitea $PREFIX/bin
