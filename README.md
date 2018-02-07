# eigo
コマンドラインで動くちょっとした辞書

## Install
`~/bin`にパスを通して
```
mkdir ~/share && cd ~/share
git clone https://github.com/kottn/eigo && . ./eigo/install.sh
```

または

`~/local/bin`にパスを通して
```
mkdir -p ~/local/share && cd ~/local/share
git clone https://github.com/kottn/eigo && . ./eigo/install.sh
```

## Usage
英和としてつかう
```
eigo interpolation

eigo interp            # ..orlation? ..oration? ってなったとき便利

eigo ^interp           # 先頭マッチ

eigo ^interpolation$   # 完全マッチ
```

和英としてつかう
```
eigo 論文

eigo ^論文           # 日本語でも大丈夫
```
