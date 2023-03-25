  
  
- [1. Shell简介](#1-shell简介 )
  - [1.1 特性](#11-特性 )
    - [1.1.1 命令嵌套](#111-命令嵌套 )
    - [1.1.2 文件名扩展](#112-文件名扩展 )
    - [1.1.3 直接使用Shell内置命令](#113-直接使用shell内置命令 )
    - [1.1.4 灵活地使用数据流](#114-灵活地使用数据流 )
    - [1.1.5 结构化](#115-结构化 )
    - [1.1.6 可后台执行](#116-可后台执行 )
    - [1.1.7 环境可配置](#117-环境可配置 )
    - [1.1.8 可创建复杂程序（Shell脚本）](#118-可创建复杂程序shell脚本 )
  - [1.2 Shell种类](#12-shell种类 )
  - [1.3 命令执行方式](#13-命令执行方式 )
  - [1.4 使用场景](#14-使用场景 )
    - [1.4.1 建议使用的场景](#141-建议使用的场景 )
    - [1.4.2 不建议使用的场景](#142-不建议使用的场景 )
  
#  1. Shell简介
  
  
- shell是提供交互式计算机编程环境的UNIX程序，在终端窗口中使用 shell 与 UNIX 风格的操作系统（例如 Linux 或 MacOS）进行交互。
- shell 位于用户和操作系统之间，提供一些有用的命令和功能。简单来看，shell是一个程序，用于为用户运行指定命令并向用户显示运行结果。
  
![Shell](https://cdn.educba.com/academy/wp-content/uploads/2020/01/Bash-Shell-in-Linux-2.jpg.webp )
  
##  1.1 特性
  
  
###  1.1.1 命令嵌套
  
  
把已有命令进行适当组合构成新的命令。
  
```bash
$ echo `pwd`/subdir
/public/home/liujf/subdir
$ echo $(pwd)/subdir
/public/home/liujf/subdir
```
  
###  1.1.2 文件名扩展
  
  
提供了文件名扩展字符(通配符，如* 、 ?、 [ ])，使得用单一的字符串可以匹配多个文件名，省去键入一长串文件名的麻烦。
  
```bash
$ ls ./data # 列出指定目录下文件（夹）
bash_spring_2022.pdf  debug1.sh  debug23.sh  debug2.sh  debug.sh  hello.sh  job.id  result.txt  shell_help.txt
$ tail -n 1 ./data/debug?.sh # 匹配单个字符
==> ./data/debug1.sh <==
echo "job finish."
  
==> ./data/debug2.sh <==
echo "job finish."
$ tail -n 1 ./data/debug*.sh # 匹配任意数目字符
==> ./data/debug1.sh <==
echo "job finish."
  
==> ./data/debug23.sh <==
echo "job finish."
  
==> ./data/debug2.sh <==
echo "job finish."
  
==> ./data/debug.sh <==
echo "job finish."
```
  
###  1.1.3 直接使用Shell内置命令
  
  
- 可以直接使用Shell的内置命令,而不需创建新的进程，如Shell中提供的cd、echo、exit、pwd、kill等命令。为防止因某些Shell不支持这类命令而出现麻烦，许多命令都提供了对应的二进制代码，从而也可以在新进程中运行。
  
- 通常来说，内建命令会比外部命令执行得更快，执行外部命令时不但会触发磁盘 I/O，还需要 fork 出一个单独的进程来执行，执行完成后再退出。而执行内建命令相当于调用当前 Shell 进程的一个函数。
  
```bash
$ type cd
cd is a shell builtin # cd 是 shell 内嵌命令
$ type ifconfig
ifconfig is /usr/sbin/ifconfig # ifconfig 是一个外部文件
```
  
###  1.1.4 灵活地使用数据流
  
  
Shell允许灵活地使用数据流，提供通配符、输入/输出重定向、管道线等机制，方便了模式匹配、I/O处理和数据传输。
  
```bash
$ cd ./data
$ echo "Oh, no, Yang le" > result.txt
$ ll result.txt
result.txt
$ cat result.txt | tr ", " " "
Oh  no  Yang le
```
  
###  1.1.5 结构化
  
  
结构化的程序模块，提供了顺序流程控制、条件控制、循环控制等。
  
```bash
$ type=AA
$ if [[ ${type} == "AA" ]]; then echo "type=AA"; fi
type=AA
```
  
###  1.1.6 可后台执行
  
  
Shell提供了在后台执行命令的能力。
  
```bash
$ sleep 5 &
[1] 11089
$ ps
[1]+  Done                  sleep 5
$ ps
```
  
###  1.1.7 环境可配置
  
  
Shell提供了可配置的环境，允许创建和修改命令、命令提示符和其它的系统行为。
  
```bash
$ du ../data
40      ../data/subdir
680     ../data
$ alias du="du -s -h" # 使用alias修改du命令
$ du ../data
680K    ../data
```
  
###  1.1.8 可创建复杂程序（Shell脚本）
  
  
Shell提供了一个高级的命令语言，能够创建从简单到复杂的程序。这些Shell程序称为**Shell脚本**，利用Shell脚本，可把用户编写的可执行程序与Unix命令结合在一起，当作新的命令使用，从而便于用户开发新的命令。
  
```bash
$ echo "echo Hello World! " > hello.sh
$ cat hello.sh
echo Hello World! 
$ . hello.sh
Hello World!
$ source hello.sh
Hello World!
$ bash hello.sh
Hello World!
```
  
##  1.2 Shell种类
  
  
- **sh**：Bourne Shell，UNIX 上的标准shell，很多UNIX版本都配有sh
- **bash**：Bourne Again Shell，Linux的默认shell，bash兼容sh，但并不完全一致
- **csh**：C Shell，语法与C语言相似
- **ksh**：Korn Shell，基于Bourne shell的源代码发展而来
  ...
  
查看当前系统所有可用的Shell
  
```bash
$ cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash
```
  
查看当前正在使用的Shell
  
```bash
$ echo $0
-bash
$ csh # 切换Shell，
$ echo $0
csh
$ exit # 退出当前的Shell
```
  
查看系统默认的Shell
  
```bash
$ echo $SHELL
/bin/bash
$ csh # 切换Shell，不改变系统默认Shell
$ echo $SHELL
/bin/bash
$ bash # 切换回bash
```
  
sh 一般被 bash 代替，`/bin/sh`往往是指向`/bin/bash`的符号链接
  
```bash
$ which sh
/usr/bin/sh
$ ls -l /usr/bin/sh
lrwxrwxrwx 1 root root 4 May 27  2021 /usr/bin/sh -> bash
```
  
##  1.3 命令执行方式
  
  
- 交互式（Interactive）：解释执行用户的命令，用户输入一条命令，Shell就解释执行一条
  
```bash
$ echo Hello World!
Hello World!
$ echo "My name is Liweining."
My name is Liweining.
```
  
- 批处理（Batch）：用户事先写一个Shell脚本(Script)，其中有很多条命令，让Shell一次把这些命令执行完，而不必一条一条地敲命令。
  
```bash
$ {
  echo "echo Hello World! "
  echo "echo My name is Liweining."
  } > hello.sh
$ bash hello.sh
Hello World!
My name is Liweining.
```
  
##  1.4 使用场景
  
  
###  1.4.1 建议使用的场景
  
  
- 使用只基于 UNIX 风格的操作系统（如Linux）开发的程序（如bwa、gatk），或需要在服务器上运行软件
  
- 文件操作可以使用简单的命令完成
  
```bash
$ cd ./data
$ wc -l breedA.ped
16 ./data/breedA.ped
```
  
- 批量操作文件/文件夹
  
```bash
$ mkdir -p tmp && cd ./tmp
$ for i in {1..5}; do echo $i > test_${i}.txt; done
$ ls
test_1.txt  test_2.txt  test_3.txt  test_4.txt  test_5.txt
$ for i in {1..5}; do mv test_${i}.txt test_${i}_$((i + 1)).txt; done
$ ls
test_1_2.txt  test_2_3.txt  test_3_4.txt  test_4_5.txt  test_5_6.txt
$ cd .. && rm -rf tmp
```
  
- 主要调用其他应用程序并且数据操作较少
  
```bash
$ {
  echo "head -n 10 merge.fam > test.id"
  echo "plink --bfile merge --keep test.id --make-bed --out test &> /dev/null"
  echo "gmatrix --bfile test --grm agrm --out test"
  } > gmat.sh
$ source gmat.sh
The number of individuals and SNPs are: 10 14913
#######################################################################
######Read the plink bed file and Calculate the additive G matrix######
#######################################################################
Part 1: Start SNP, 0; the number of read SNP, 745
Part 2: Start SNP, 745; the number of read SNP, 745
Part 3: Start SNP, 1490; the number of read SNP, 745
Part 4: Start SNP, 2235; the number of read SNP, 745
Part 5: Start SNP, 2980; the number of read SNP, 745
Part 6: Start SNP, 3725; the number of read SNP, 745
Part 7: Start SNP, 4470; the number of read SNP, 745
Part 8: Start SNP, 5215; the number of read SNP, 745
Part 9: Start SNP, 5960; the number of read SNP, 745
Part 10: Start SNP, 6705; the number of read SNP, 745
Part 11: Start SNP, 7450; the number of read SNP, 745
Part 12: Start SNP, 8195; the number of read SNP, 745
Part 13: Start SNP, 8940; the number of read SNP, 745
Part 14: Start SNP, 9685; the number of read SNP, 745
Part 15: Start SNP, 10430; the number of read SNP, 745
Part 16: Start SNP, 11175; the number of read SNP, 745
Part 17: Start SNP, 11920; the number of read SNP, 745
Part 18: Start SNP, 12665; the number of read SNP, 745
Part 19: Start SNP, 13410; the number of read SNP, 745
Part 20: Start SNP, 14155; the number of read SNP, 758
```
  
- 多条命令需要被重复执行时（Shell脚本）
  
###  1.4.2 不建议使用的场景
  
  
- 资源密集型的任务，尤其在需要考虑效率时（如排序，hash等）
  
- 需要处理大量数学操作，尤其是浮点运算，精确运算，或者复杂的算术运算（C/C++）
  
- 有跨平台（操作系统）移植需求（一般使用C或Java）
  
- 复杂的应用，在必须使用结构化编程的时候（需要变量的类型检查，函数原型等）
  
- 需要复杂数据结构的支持，比如类、链表或多维数组等数据结构（R、Python）。
  
- 需要产生或操作图形化界面 GUI。
  
- 私人的、闭源的程序
  
<br>  

:warning: **转载声明**：感谢您对文章内容的认可，转载后请在醒目位置标明来源，且禁止声明原创。  

---  
  
团队其他公众平台：  
  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260) 
  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)
  
**微信公众号** | 房子下面一头猪  
  
![公众号](/Platform_materials/公众号二维码_无白边.jpg)  
