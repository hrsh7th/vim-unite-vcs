# vim-unite-svn

$B0lIt$N(Bsvn$B%3%^%s%I$r<B9T$7$F7k2L$rI=<($9$k(Bunite-source$B$G$9!#(B
$B4pK\E*$K$O(B status $B$r3+$$$F!"A*Br$7$F2?$+$9$k$H$$$&%U%m!<$r4J0W2=$9$k$3$H$rL\E*$H$7$F$$$^$9!#(B
$BIU2C$H$7$F!"(B diff $B$d(B blame $B$N7k2L$r8+$F!"BP>]9T$K(Bjump$B=PMh$k$h$&$K$7$F$$$^$9!#(B


## Usage

### Install

    NeoBundle 'git://github.com/kmnk/vim-unite-svn.git'


### Command

source$B$H$7$F$O(B status, diff, blame $B$N$_MQ0U$7$F$$$^$9!#(B

    Unite svn/status
    Unite svn/diff
    Unite svn/blame

#### status

status $B$GI=<($5$l$?%U%!%$%k$rA*Br$7$?8e$N%3%^%s%I$H$7$F$O0J2<$rMQ0U$7$F$$$^$9!#(B

- commit
- add
- revert
- blame
- delete
- log
- diff
- resolved

diff, blame $B$O(B source $B$r<B9T$7$?$H$-$HF1MM$NF0:n$r$7$^$9!#(B

delete$B$O:#F0$+$J$$$G$9!#(B

log$B$H(Bblame$B$OJ#?tA*Br$G$-$^$;$s(B


#### diff

$BL$%3%_%C%H$NJT=8>uBV$H:G8e$K(Bupdate$B$7$?$b$N$H$N(Bdiff$B$rI=<($7$^$9!#(B


#### blame

$B8=:_3+$$$F$$$k%U%!%$%k$N(Bblame$B7k2L$rI=<($7$^$9(B


## TODO

- $B4hD%$k(B
- info$B$N<BAu(B
- $B%$%s%?!<%U%'!<%9$H$+(BUI$B$r$b$C$H$-$l$$$K$9$k(B
- $B%I%-%e%a%s%H$N@0Hw(B
- git$B$KIb5$$9$k(B
