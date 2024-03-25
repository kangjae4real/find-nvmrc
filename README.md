# Find ".nvmrc"
## 개요
Project Root 하위에 `.nvmrc` 를 찾아 해당 버전으로 <br /> 
자동으로 Node.js 버전을 변경하는 간단한 Shell Script 입니다.

## 요구사양
- zsh
- nvm

## 실행
1. `$HOME` 하위에 Cloning 해주세요.
2. `$HOME/.zshrc` 파일에 `find_nvmrc.sh` 를 [실행](https://stackoverflow.com/questions/45635168/vscode-how-to-run-a-command-after-each-terminal-open)할 수 있도록 설정해주세요.

## 수동 실행
```shell
$ sh find_nvmrc.sh
```