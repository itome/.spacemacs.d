# .spacemacs.d

## Installation

clone this repository
```
$ git clone https://github.com/itome/.spacemacs.d ~/.spacemacs.d
```

run setup command
```
$ cd ~/.spacemacs.d
$ sh ./setup.sh
```

install go dependencies
```
$ go get -u -v github.com/mdempsky/gocode
$ go get -u -v github.com/rogpeppe/godef
$ go get -u -v golang.org/x/tools/cmd/guru
$ go get -u -v golang.org/x/tools/cmd/gorename
$ go get -u -v golang.org/x/tools/cmd/goimports
$ go get -u -v github.com/zmb3/gogetdoc
$ go get -u -v github.com/cweill/gotests/...
$ go get -u github.com/haya14busa/gopkgs/cmd/gopkgs
$ go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
$ go get -u github.com/josharian/impl
$ go get -u github.com/golangci/golangci-lint/cmd/golangci-lint

$ go get -u -v github.com/alecthomas/gometalinter
$ gometalinter --install --update

$ go get -u -v github.com/godoctor/godoctor
$ go install github.com/godoctor/godoctor

$ go get -u -v github.com/fatih/gomodifytags
$ go get -u github.com/sourcegraph/go-langserver
```

