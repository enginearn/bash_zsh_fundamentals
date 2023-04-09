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

## Integer comparison

||内容|
|--|--|
|*int1* -eq *int2*|*int1*と*int2*が等しい|
|*int1* -ne *int2*|*int1*と*int2*が等しくない|
|*int1* -lt *int2*|*int1*が*int2*より小さい|
|*int1* -le *int2*|*int1*が*int2*以下|
|*int1* -gt *int2*|*int1*が*int2*より大きい|
|*int1* -ge *int2*|*int1*が*int2*以上|

## File comparison

||内容|
|--|--|
|-a *file*|*file*が存在する(-eと同じ)|
|-b *file*|*file*が存在し、ブロック特殊ファイルである|
|-c *file*|*file*が存在し、キャラクター特殊ファイルである|
|-d *file*|*file*が存在し、ディレクトリである|
|-e *file*|*file*が存在する(-aと同じ)|
|-f *file*|*file*が存在し、通常のファイルである|
|-g *file*|*file*が存在し、`set-group-id`が設定されている|
|-h *file*|*file*が存在し、`シンボリックリンク`である(-Lと同じ)|
|-k *file*|*file*が存在し、`sticky bit`が設定されている|
|-p *file*|*file*が存在し、名前付きパイプ(FIFO)である|
|-r *file*|*file*が存在し、読取パーミッションが与えられている|
|-s *file*|*file*が存在し、ファイルサイズが0より大きい|
|-t *number*|指定された番号のファイルディスクリプタが開かれていて、端末を参照している|
|-u *file*|*file*が存在し、`set-user-id`が設定されている|
|-w *file*|*file*が存在し、書込パーミッションが与えられている|
|-x *file*|*file*が存在し、実行パーミッションが与えられている|
|-G *file*|*file*が存在し、ファイルのグループが現在実行中のシェルのグループに所属してる|
|-L *file*|*file*が存在し、シンボリックリンクである(-hと同じ)|
|-N *file*|*file*が存在し、変更時刻が読み込み時刻以降である|
|-O *file*|*file*が存在し、ファイルのオーナーが現在実行中のシェルのユーザーである|
|-S *file*|*file*が存在し、ソケットである|
|*file1* -nt *file2*|*file1*の変更時刻が*file2*より新しい|
|*file1* -ot *file2*|*file1*の変更時刻が*file2*より古い|
|*file1* -ef *file2*|*file1*と*file2*の`i`ノード番号が等しい|
|*cond1* -a *cond2*|*cond1*と*cond2*の両方が真の場合に真(AND)|
|*cond1* -o *cond2*|*cond1*と*cond2*の少なくとも1つが真の場合に真(OR)|
|! *cond*|*cond*の真偽を逆にする(NOT)|

sample

``` bash
[ "$1" = yes -a -w rresult.txt ]
```

## Deffrence bash and zsh

||bash v.5.15|zsh v.5.5|result|
|--|--|--|---|
|lowercase|${1,,}|${1:l}|apple|
|uppercase|${1^^}|${1:u}|APPLE|
|capital|${1^}|${(C)1}|Apple|

---

## Refs

<details>
<summary>urls</summary>

[デフォルトのShell を変更する](http://linux.kororo.jp/cont/tips/shell_change.php)

[Docker - Install Engine - Documentation](https://docs.rockylinux.org/gemstones/docker/)

[How To Install and Use Docker on Rocky Linux 8 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-rocky-linux-8)

[Linuxでユーザーをグループに追加するコマンド | LFI](https://linuxfan.info/add-sub-group-command)

[Fix full screen problem in VirtualBox Rockylinux - General - Rocky Linux Forum](https://forums.rockylinux.org/t/fix-full-screen-problem-in-virtualbox-rockylinux/5554/6)

[Installing ZSH · ohmyzsh/ohmyzsh Wiki · GitHub](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

[[Linux]ファイルの圧縮、解凍方法 - Qiita](https://qiita.com/supersaiakujin/items/c6b54e9add21d375161f)

[とほほのtmux入門 - とほほのWWW入門](https://www.tohoho-web.com/ex/tmux.html)

[tmuxのデフォルトシェルをzshにしたいのに起動時にbashなる問題 - Qiita](https://qiita.com/puriso/items/9cec04eaba47a9d563ea)

[tmuxからクリップボードにコピーする（令和版） - Qiita](https://qiita.com/purutane/items/1d1dc4818013bbbaead4)

[約2年ぶりの更新となるGNU Bash v5.2](https://newspicks.com/news/7611719?ref=user_14)

[Bash/Zshで配列のn番目を取得する、を統一する](https://rcmdnk.com/blog/2018/08/19/computer-bash-zsh/)

[BashとZshの違いでのハマりどころ](https://rcmdnk.com/blog/2013/12/26/computer-bash-zsh/)

[Bash でインクリメントとデクリメント演算を行う方法 | Delft スタック](https://www.delftstack.com/ja/howto/linux/how-to-perform-increment-and-decrement-operation-in-bash/)

[各種テスト - bash - 算術式評価](https://www.loose-info.com/main/varioustests/bash/arithmetic_evaluation.html)

[Upper- or lower-casing strings in bash and zsh – Scripting OS X](https://scriptingosx.com/2019/12/upper-or-lower-casing-strings-in-bash-and-zsh/)

[unix - First character of a variable in a shell script to uppercase? - Stack Overflow](https://stackoverflow.com/questions/12420317/first-character-of-a-variable-in-a-shell-script-to-uppercase)

[bashの変数展開によるファイル名や拡張子の取得 - Qiita](https://qiita.com/mriho/items/b30b3a33e8d2e25e94a8)

[ls の実行結果を for 文で処理するワンライナー](https://zenn.dev/ikuraikura/articles/4aac30d719f9c52e79a3)

[bashでfileの拡張子を取得するには | ゴルディアスの涙目](https://gordiustears.net/getting-file-extention-by-bash/)

[ls の実行結果を for 文で処理するワンライナー](https://zenn.dev/ikuraikura/articles/4aac30d719f9c52e79a3)

</details>
