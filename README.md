# NameChangeTool

## このツールは複数のファイルを連番に名前変更するプログラムです。  

* 使用言語：Ruby  
* 対応OS : linux系 test済みはubuntu14.04,solalis,raspbian  
* Version 0.1  

## 使用方法  

まず、連番にしたいfileをnamechangetoolディレクトリに入れてください。  
その際namechangetoolにファイルが入っていないことを確認してください。  
データが上書きされる恐れがあります。  
次にプログラムの実行でコマンドラインに

``` 
 $ ruby .processor.rb  
```
と実行してください。

0埋めが六桁で連番にrenameされます。  
データは必ずバックアップを取ってから実行してください。  
filenameを元に戻すことは現在のバージョンではできません。  

Iovesophy (kazuyayuda1@gmail.com)

