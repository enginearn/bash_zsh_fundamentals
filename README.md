# Bash / zsh

## Command history

||内容|
|--|--|
|!|履歴置換開始|
|!n|n個目のコマンドを参照する|
|!-n|現在からn個前のコマンドを参照する|
|!!|直前のコマンドを参照する|
|!*string*|*string*で始まる最後のコマンドを参照する|
|!?*string*?|*string*を含む最後のコマンドを参照する|
|^*string1*^*string2*^|*string1*を*string2*に置換して最後のコマンドを繰り返す|
|!#|これまでに打ち込んだコマンド全てを表示|

## String compareson

||内容|
|--|--|
|*str1* = *str2*|*str1*と*str2*が等しい(==)|
|*str1* == *str2*|*str1*と*str2*が等しい(=)|
|*str1* != *str2*|*str1*と*str2*が等しくない|
|-n *str1*|*str1*が空文字ではない|
|-z *str1*|*str1*が空文字である|
|*str1* < *str2*|*str1*が*str2*よりも辞書順で前にある|
|*str1* > *str2*|*str1*が*str2*よりも辞書順で後にある|
