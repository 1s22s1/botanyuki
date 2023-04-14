# ぼたん雪

ぼたん雪、線形単回帰を計算するメソッドを提供します。以下の式を想定しています。

$$y=Ax+B$$

また　https://manabitimes.jp/math/942　を参考にしています。

## インストール方法

シェル上で、次のコマンドを実行します。

```console
gem install botanyuki
```

## 使い方

```ruby
require 'botanyuki'

x_n = [2, 4, 9]
y_n = [3, 7, 11]

Botanyuki.A(x_n, y_n) # => 1.08
Botanyuki.B(x_n, y_n) # => 1.6
```
