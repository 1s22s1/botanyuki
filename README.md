# Botanyuki

Botanyuki introduce linear simple regression. Assuming the below formula.

$$y=Ax+B$$

Also, please see https://manabitimes.jp/math/942.

## How to install

Run below command, on you shell.

```console
gem install botanyuki
```

## How to use

```ruby
require 'botanyuki'

x_n = [2, 4, 9]
y_n = [3, 7, 11]

Botanyuki.A(x_n, y_n) # => 1.08
Botanyuki.B(x_n, y_n) # => 1.6
```
