記述例
==

段落と改行
--
段落は空行で一行あけます。  
改行は行末で半角スペースを2つ以上入力します。

見出し
--
「#」が一つでh1タグ、「##」が2つでh2タグとなり6つまで記述できます。  
またh1とh2だけ別の記述方法があり文章の改行後に「=」を2つ以上記述するとh1に改行後に「-」を2つ以上記述するとh2になります。  
# h1
## h2
### h3
#### h4
##### h5
###### h6

h1[==２つ以上]
==
h2[--２つ以上]
--

強調
--
強調したい文字を「*」もしくは「_」で囲むとemタグとなり強調になります。  
より強い強調は「**」もしくは「__」でstrongタグになります。  
normal *italic* normal  
normal _italic_ normal  
normal **bold** normal  
normal __bold__ normal  
normal ***italic bold*** normal  
normal ___italic bold___ normal  

リスト
--
ハイフン、プラス、アスタリスクのいずれかと半角スペースで箇条書きリストになります。
- リスト１
- リスト２
- リスト３
+ リスト１
+ リスト２
+ リスト３
* リスト１
* リスト２
* リスト３

番号付きリスト
--
数値+半角ドットで番号付きリストを記述可能。  
番号の内容は何でもいい。実際に表示される際に適切な番号で表示される。  
そのため、一般的にはすべて 1. 内容 で記載すると変更に強く楽です。  
※数値+半角ドットと箇条書きの項目の間には半角スペースを1つ入れること  
1. リスト１
1. リスト２
1. リスト３

引用
--
先頭に「>」と半角スペースを入力すると引用になります。入れ子にすることも可能です。
> 引用  
> 引用  
> > 引用入れ子  
> > 引用入れ子  

水平線
--
「-」、「_」、「*」を3つ以上並べることで水平線を表示します。  
※連続するハイフンなどの間にはスペースがあっても良い
_ _ _

リンク
--
「[リンク文字列](URL)」でリンクに変換されます。  
[Google先生](https://www.google.co.jp/)

定義参照リンク
--
Markdownの文書の途中に長いリンクを記述したくない場合は、  
同じリンクの参照を何度も利用する場合は、リンク先への参照を定義することができます。  
[こっちからgoogle][google]  
その他の文章  
[こっちからもgoogle][google]  

[google]: https://www.google.co.jp/

画像
--
「![alt文字列](画像URL “title文字列”)」で画像が表示されます。  
![名刺工房ロゴ画像](https://meishi.artisj.com/common/image/header-logo001.gif "ティス工房")

ソースコード
--
1行だけの場合はバッククォートで囲みます。  
複数行の場合は先頭にスペースを4つ入れます。  
利用しているエディタによりますが、プログラミング言語ごとのシンタックスハイライトに対応している場合は
「“`言語名」と「“`」でソースコードを囲むとハイライトされます。  

`var moge = 100;`

    var fuga = 1000;
    var fizz = 2000;

```php
class Sample()
{
	private int $a;
	
	public function __construct(int $a)
	{
		$this->a = $a;
	}
	
	public function hoge(int $x, int $y):int
	{
		return ($x + $y) * $this->a;
	}
}
```

テーブル  
--
| A列 | B列 | C列 |D列|E列|
|-----|:---:|-----|--:|---|
| あ  | い  | う  |え |お |
| か  | き  | く  |け |こ |
| さ  | し  | す  |せ |そ |


GitHub Flavored Markdown(GFM)
==
GitHub Flavored Markdown(GFM)はGitHubの独自仕様を加えたMarkdown記法。  
以降、GFMと記載します。  

GFM:リンクテキスト簡易記法
--
URLは記述するだけで自動的にリンクになります。  
https://www.google.co.jp/  

GFM:取り消し線
--
チルダ2個で文字列を囲むことで取り消し線を利用できます。  
~~取り消し線~~

GFM:pre記法(チルダ×3)
--
~~~
class Hoge
  def hoge
    print 'hoge'
  end
end
~~~

GFM:pre記法(バッククォート×3)
--
```
class Hoge
  def hoge
    print 'hoge'
  end
end
```

GFM:pre記法(シンタックスハイライト)
--
チルダ、もしくはバッククォート3つの後ろに対象シンタックスの言語名を記述します。  
~~~ruby
class Hoge
  def hoge
    print 'hoge'
  end
end
~~~

GFM:表組み
--
|header1|header2|header3|
|:--|--:|:--:|
|align left|align right|align center|
|a|b|c|

GFM:ページ内リンク  
--
GitHubのMarkdownを利用すると、見出し記法を利用した際にアンカーが自動的に作成されます。  
そのアンカーを利用したページ内リンクを簡単に作成できます。  
## menu
* [to header1](#header1)
* [to header2](#header2)

<!-- some long code -->

[return to menu](#menu)
### header1
### header2

Qiitaサポート
==
Diffと他の言語のシンタックスを同時に使う
--
Qiitaでサポートしている各シンタックスに、新たにdiff_*という名前をつけることでDiffを追加することができます。  
-、+を行の先頭に書くことでDiffを表現することができます。  
```diff_ruby
- puts 'Hello'
+ puts 'World'
```

```diff_javascript
- console.log('Hello');
+ console.log('World');
```

```diff_c
#include <studio.h>
int main() {
- printf("Hello");
+ printf("World");
return 0;
}
```

Code spans - コードスパン
--
また、コードをインライン表示することも可能です。  
`puts 'Qiita'` と書くことでインライン表示することも可能です。

コードスパン内でバッククオートを使う
--
コードスパン内でバッククオートを使いたいときは、開始・終了のバッククオートをn+1個で囲みます。  
`` `バッククオート` `` や ``` ``2連続バッククオート`` ``` も記述できます。

コードスパンの中身がCSSの <color> 型
--
コードスパンの中身が CSS の <color> 型の RGB 16進数表記、 rgb()、 rgba()、 hsl()、 hsla() の場合、横にその色が表示されます。  
`#ffce44`  
`rgb(255,0,0)`  
`rgba(0,255,0,0.4)`  
`hsl(100, 10%, 10%)`  
`hsla(100, 24%, 40%, 0.5)`  


Format Text - テキストの装飾
==
Headings - 見出し
--
# これはH1タグです  
## これはH2タグです  
###### これはH6タグです  

Emphasis / Strong Emphasis - 強調・強勢
--
_ か * で囲むとHTMLのemタグになります。Qiitaでは *italic type* になります。  
__ か ** で囲むとHTMLのstrongタグになります。Qiitaでは **太字** になります。  

Strikethrough - 打ち消し線
--
打ち消し線を使うには ~~ で囲みます。 ~~打ち消し~~  

Details - 折りたたみ
--
HTMLの詳細折りたたみ要素を使えます。  
追加情報としたい内容を、detailsタグで囲みます。  
そして、要約として表示したい文章をsummaryタグで記載します。
<details><summary>サンプルコード</summary>

(上に空行が必要)

```rb
puts 'Hello, World'
```
</details>

Note - 補足説明
--
目を引く形で補足説明をしたい場合、補足したい内容を:::note infoと ::: で囲みます。  
補足したい内容と:::note info と ::: はそれぞれ別の行にする必要があります。  

noteの後のinfoは省略可能です。  
また、 noteの後にwarnをつけると警告メッセージに、alertをつけるとより強い警告メッセージとして表現することができます。  
:::note info
インフォメーション
infoは省略可能です。
:::

:::note warn
警告
○○に注意してください。
:::

:::note alert
より強い警告
○○しないでください。
:::

