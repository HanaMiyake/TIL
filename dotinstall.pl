# 公式サイト http://www.perl.org
# 日本語サイト http://perldoc.jp/
# perl -v 5.8.8
# UNIXコマンド
# 正規表現

use strict;   # 文法チェック
use warnings; # 警告出力
use utf8;     # ソースコードに日本語を記述する場合
binmode STDIN, ':encoding(cp932)';  #日本語Windows環境
binmode STDOUT, ':encoding(cp932)'; #日本語Windows環境
binmode STDERR, ':encoding(cp932)'; #日本語Windows環境

# コメント
print("hello world\n"); # コメント
print "hello world\n";

# 変数：データ（スカラー値$、配列@、ハッシュ%）につけるラベル
# スカラー（単一の値：数値、文字列）変数：$
# 変数の頭につける記号（$, @, %など）は「シジル（Sigil）」と呼ぶ

my $msg1; $msg1 = "hello world\n";
my $msg2 = "ハローワールド\n";
print $msg1;
print $msg2;

# 数値
my $x = 10;
my $y = 10.7;
my $x = 123_456_789;

# 演算子
# = + - / * % **
my $xx = 10 * 10; # 100
my $yy = 10 % 3;  # 1
my $zz = 2 ** 3;  # 8
# ++ --
$x++; # 11
$x--; # 10
# +=
$x += 5; # $x = $x + 5

# 文字列
my $name = "太郎";
my $a = "hello\t$name\n"; # ""は特殊文字(\n, \t)が使える、変数展開される
my $b = 'hello\t$name\n'; # ''は特殊文字が使えない、変数展開されない
print $a,$b,"\n";

# 連結. 繰返x
print "hello "."world\n";  # 連結
print "hello " x 5 . "\n"; # 繰返

# 配列変数 @
my @sales = (150, 200, 300);
my @color = ('red', 'green', 'blue');
my @mixed = (150, 'red', 1.5);
print @sales, @color, @mixed, "\n";

my @inc = (1..100); # .. 範囲演算子 1~100の意味
print @inc,"\n";

my @color2 = qw(red green blue); # qw 文字リスト演算子 @colorと同じ
print @color2,"\n";

$, = " "; # セパレータ指定
print @color2,"\n";

# 配列の取り出し方
print $sales[0]; # 1つの値はスカラー値になるので$マークを使う
print $sales[-2]; # マイナスは最後からの位置
print @sales[0..1]; # 範囲指定 @マークにする
print @sales[1..$#sales]; # $#sales 末尾の添え字
print "\n";

# ハッシュ変数：キーと値：%
my %salse = ("tanaka"=>300, "suzuki"=>150, "ohira"=>200);
print %salse{"tanaka"},"\n";

# 条件分岐
# 比較演算子 ( 数値：< > <= >= == )
my $score = 85;
if ($score >= 80) {
    print("良\n");
} elsif ($score >= 60) {
    print("可\n");
} else {
    print("不可\n");
}

# 比較演算子 ( 文字列 : eq ne gt lt ge le : 0-9 < A-Z < a-z )
# 論理演算子 ( &&(AND) ||(OR) !(NOT) )
my $name = "Luke";
if (($name eq "Luke") && ($score >= 80)) {
    print "I am your father.\n";
} else {
    print "I am not your father.\n";
}

# if分の後置
print "OK!\n" if ($score >= 60);

# 三項演算子 if ... else ...
# (条件) ? 値1 : 値2
my $p = 10;
my $q = 20;
my $max = ($p > $q) ? $p : $q;
print $max,"\n";

# ループ処理 ( while )
my $i = 0;
while ($i < 10) {
    print "while i = $i\n";
    $i++;
}

# for文
for (my $i = 0; $i < 5; $i++) {
    print "for_1 i = $i\n";
}
for my $count (1..5) {
    print "for_2 i = $count\n"
}
for (1..5) {
    print "for_3\n"
}
# 配列のループ処理 ( foreach )
my @colors = qw(red green blue orange pink);
foreach my $color (@colors) {
    print "foreach color = $color\n";
}
for my $color (@colors) {
    print "for color = $color\n";
}
for (@colors) {
    print "color = $_\n"; # $_ へ @colors が順番に入る
}

# ハッシュのループ処理
my %hdata = ("tanaka"=>150, "suzuki"=>300, "ohira"=>200);
foreach my $key (keys(%hdata)) {
    print "data foreach $key is $hdata{$key}\n";
}
for my $key (keys(%hdata)) {
    print "data for $key is $hdata{$key}\n";
}
for (keys(%hdata)) {
    print "data $_ is $hdata{$_}\n";
}

# ファイルの入出力
# 正規表見
open(my $in, "<", "test.dat") or die("could not open file."); # or die 失敗時
open(my $out, ">", "test.out") or die("could not open file."); # or die 失敗時
while (<$in>) { # <$in> 1行づつ読込
    $_ =~ s/abc/ABC/;
    if ($_ =~ /[a-z]/) {
    print $_;
    print $out $_;
    }
}
close($in);
close($out);

 # 特殊変数の処理は省略できる(同上)
open(my $in, "<", "test.dat") or die("could not open file."); # or die 失敗時
open(my $out, ">", "test.out") or die("could not open file."); # or die 失敗時
while (<$in>) { # <$in> 1行づつ読込
    s/abc/ABC/;
    if (/[a-z]/) {
    print $_;
    print $out $_;
    }
}
close($in);
close($out);

# サブルーチン
sub max {
    my $max = $_[0];
    if ($_[1] > $max) {
        $max = $_[1];
    }
    return $max; # return は省略できるので $max; でもよい
}
print max(12, 8),"\n";

# サブルーチン（可変引数）
sub max2 {
    my $max = shift(@_); # 引数は@_に入る、初期値をとるshift
    for (@_) {
        $max = $_ if $_ > $max;
    }
    $max;
}
print max2(12, 8, 100, 200, 23, 38),"\n";

# データ入力
print "Who are you ?\n";
my $stdin = <STDIN>;
chomp($stdin); # chomp 末尾から改行を削除
if ($stdin eq "perl") {
    print "Welcome ${stdin}\n"
} elsif ($stdin eq "Perl\n") {
    print "Good morning ${stdin}\n"
} else {
    print "Goodbye ${stdin}\n"
}

print "Please input count ?\n";
my $count = <STDIN>;
for (1 .. $count) {
    my $num = <STDIN>;
    chomp($num); # chomp 末尾から改行を削除
    if ($num == 10) {
        print "10に等しい\n";
    } elsif ($num > 10) {
        print "10より大きい\n";
    } elsif ($num < 10) {
        print "10未満\n";
    }
}
