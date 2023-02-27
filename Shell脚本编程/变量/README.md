![公众号](/Platform_materials/公众号二维码.jpg)    
  微信公众号：房子下面一头猪    

<br>

本期内容简介  

bash的一个关键特性是能够**使用变量**，允许用户在脚本中存储和操作数据。在本文中，我们将以bash中可以使用的不同类型的变量及其使用方法为例详细了解shell变量。  
  
<br>  

- [2. Shell变量](#2-shell变量)  
  - [2.1 命名](#21-命名)  
  - [2.1.1 命名规则](#211-命名规则)  
  - [2.1.2 命名规范](#212-命名规范)  
  - [2.2 赋值](#22-赋值)  
  - [2.2.1 简单变量赋值](#221-简单变量赋值)  
  - [2.2.2 算术赋值](#222-算术赋值)  
  - [2.2.3 命令替换赋值](#223-命令替换赋值)  
  - [2.3 使用、更改和删除](#23-使用更改和删除)  
  - [2.4 类型](#24-类型)  
    - [2.4.1 可写性](#241-可写性)  
      - [可写变量](#可写变量)  
      - [只读变量](#只读变量)  
    - [2.4.2 作用域](#242-作用域)  
      - [全局变量](#全局变量)  
      - [环境变量](#环境变量)  
      - [局部变量](#局部变量)  
    - [2.4.3 数组变量](#243-数组变量)  
      - [索引数组](#索引数组)  
      - [关联数组](#关联数组)  
    - [2.4.4 特殊变量](#244-特殊变量)  
  - [2.5 环境变量](#25-环境变量)  
    
# 2. Shell变量  
  
## 2.1 命名  
  
## 2.1.1 命名规则  
  
- 只能包含**数字**、**字母**和**下划线(_)字符**  
- 第一个字符必须是字母或下划线  
- 区分大小写  
  
```bash  
## 合法命名  
count=20  
my_school=CAU  
mySchool="China Agricultural University"  
PI_CONSTANT=3.1415926  
temp_file_path_2=D:/tmp  
  
echo $mySchool  
  
## 非法命名  
1name=zhangsan  # 以数字开头  
my name=zhangsan  # 包含空格  
my-age=22  # 包含特殊字符  
```  
  
## 2.1.2 命名规范  
  
- 应具有**描述性**，以提高代码可读性和可维护性  
- 避免使用**单个字符**或缩写的变量名，除非变量用途明显且临时使用  
- 多单词组成的变量，可用**下划线**或**驼峰式**命名法，使变量名更易读  
- **常量**或**只读**变量，可用全**大写**字母命名  
  
```bash  
## 合法但不规范的命名  
my_variable=CAU # my_school=CAU  
f="D:/path/to/your/file.txt" # 单字符  
file="D:/path/to/your/file.txt" # file_path="D:/path/to/your/file.txt"  
userinfodict="C:/Users/zhangsan/project" # user_info_dict 或 userInfoDict  
home_self="D:/zhangsan" # HOME_SELF  
```  
  
## 2.2 赋值  
  
## 2.2.1 简单变量赋值  
  
- 通过简单的赋值语句来将**值**存储在变量中  
- 等号两边不能有**空格**，否则 Bash 会将其解释为命令而不是赋值语句  
- 赋值时建议使用**双引号**字符串，单引号字符串内的变量无效  
  
```bash  
name = "zhangsan" # =号两侧不能有空格  
name="zhangsan"  
age=30  
info='My names is $name, I am $age years old.' # 单引号字符串内的变量无效  
echo ${info}  
info="My names is $name, I am $age years old."  
echo ${info}  
```  
  
## 2.2.2 算术赋值  
  
- 将变量设置为**算术表达式**的结果  
- 可以使用` $(( )) `语法来执行算术操作  
  
```bash  
x=5  
y=$((x + 2)) # 算术表达式必须用两个括号括起来，且等号两侧不能有空格  
echo $y    # 输出 7  
```  
  
## 2.2.3 命令替换赋值  
  
- 将变量设置为**命令替换**的结果  
- 命令替换：用于将命令的**输出**作为字符串赋值给变量  
- 可以使用**反引号**`` ` ``或 ``$()`` 语法来执行命令替换，推荐用后者  
  
```bash  
# 2021年度部分省份生猪出栏情况  
slaughter="省份 出栏量(万头) 占比(%) 片区  
四川省 6314.80 9.41 西南地区  
湖南省 6121.80 9.12 华中地区  
河南省 5802.77 8.64 华中地区  
山东省 4401.70 6.56 华东地区  
湖北省 4115.05 6.13 华中地区  
广东省 3336.63 4.97 华南地区  
安徽省 2797.80 4.17 华东地区  
江苏省 2210.10 3.29 华东地区  
黑龙江省 2228.10 3.32 东北地区  
"  
CentralChina=`grep "华中地区" <<< "${slaughter}"`  
echo ${CentralChina}  
EastChina=$(grep "华东地区" <<< "${slaughter}")  
echo ${CentralChina}  
```  
  
## 2.3 使用、更改和删除  
  
- 使用`echo`简单打印变量  
- 在Bash中，**使用变量**需在变量名前加上一个美元符号`$`  
  - 例如，用`$my_var`来使用名为my_var的变量的值  
- 变量使用场景：命令行参数、命令替换、算术运算、条件语句等  
  
```bash  
name="Zhangsan"  
age_last_year=18  
echo "My name is ${name}, I am $((age_last_year + 1)) years old."  
if [[ ${name} == "Zhangsan" ]]; then echo "Right."; else echo "Wrong."; fi  
```  
  
- 使用变量时，建议将变量引用放在**大括号**中，如`${var}`  
- 变量名后面紧跟着一个字母或数字时，**必须**要使用大括号来**区分**变量名和后面的字符  
  
```bash  
var="Hello"  
echo "$varWorld"    # 由于$var后面紧跟着字母W，bash无法区分$var和World，因此输出为空  
echo "${var}World"  # 能准确区分变量和字符串，输出 "HelloWorld"  
```  
  
- 在Bash中，可通过重新赋值来**更改**变量的值，只需为变量分配一个新的值即可  
  
```bash  
my_var="Hello World!"  
echo $my_var  
  
my_var="Hello!" # 直接赋值进行覆盖  
echo $my_var  
  
my_var+=" CAU" # 字符串拼接，注意，只能用于字符串变量  
echo $my_var  
```  
  
- 在Bash中，**删除**变量可以使用`unset`命令  
  
```bash  
# unset [-f] [-v] [变量名]，-f表示删除函数，-v表示删除变量，不指定则默认删除变量  
my_var="Hello World"  
echo $my_var  
unset my_var  
echo $my_var # 输出一个空行，因为my_var已经被删除  
  
my_array=(a b c d e)  
echo ${my_array[@]}  
unset my_array  
echo ${my_array[@]}  
  
readonly my_var="Hello World"  
unset my_var # 报错，因为readonly命令可以将变量定义为只读变量，只读变量无法被删除  
  
function my_func() {  
  echo "Hello World"  
}  
my_func  
my_func=3.14 # 函数my_func同名变量  
unset my_func  
my_func # 函数my_func仍能运行，因为unset不加参数，则默认删除变量，而不是函数（若同名变量存在）  
unset -f my_func  
my_func # 报错，因为函数my_func已经被删除  
```  
  
- _<u>请注意，`unset`命令只能删除在当前shell中定义的变量或函数,无法删除另一个shell或子进程中定义的一个变量或函数</u>_  
  
## 2.4 类型  
  
- Bash**不关心**变量的类型，可以存储字符串、整数、实数等等  
- 事实上，这些类型都存储为**字符串**，但期望数字的命令可以将它们视为数字，如`$((num - 1))`  
  
### 2.4.1 可写性  
  
#### 可写变量  
  
- 在Bash中，默认情况下所有变量都是**可写**变量  
  
```bash  
name="Zhangsan" # 定义可写变量  
echo $name  # 读取变量  
name="Lisi" # 修改变量  
echo $name  
```  
  
#### 只读变量  
  
- 一旦被定义后就不能被修改的变量  
- 在Bash中，可使用`readonly`命令将变量设置为**只读**变量  
  
```bash  
readonly name="Alice" # 定义只读变量  
name="Bob" # 试图修改只读变量将导致错误  
```  
  
- 可以使用`declare`命令将变量同时设置为**只读**和**整数**类型  
  
```bash  
declare -ri number=10   # 定义只读整数变量  
number=20   # 试图修改只读变量将导致错误  
```  
  
### 2.4.2 作用域  
  
#### 全局变量  
  
- 定义在脚本或函数外部  
- 可以在**脚本**或**函数内部**和**外部**访问和修改  
  
```bash  
echo "  
#!/bin/bash  
  
# 定义全局变量  
global_var=\"I am a global variable\"  
  
# 在函数中访问全局变量  
my_func() {  
  echo \"Inside function: \$global_var\"  
}  
  
# 调用函数  
my_func  
  
# 在脚本中访问全局变量  
echo \"Outside function: \$global_var\"  
" > tmp.sh  
  
chmod 777 tmp.sh  
./tmp.sh  
rm tmp.sh # 删除脚本文件  
```  
  
#### 环境变量  
  
- 定义在操作系统的**环境**中  
- 所有**子进程**都可以访问和修改  
- 可以使用`export`命令将一个变量定义为**环境变量**  
  
```bash  
# 定义环境变量，可以被所有子进程继承  
export ENV_VAR="I am an environment variable"  
  
# 在脚本中访问环境变量  
echo "Inside script: $ENV_VAR"  
  
# 调用另一个脚本，访问环境变量  
echo "  
#!/bin/bash  
  
# 在子进程中访问环境变量  
echo \"Inside another script: \$ENV_VAR\"  
" > tmp.sh  
  
chmod 777 tmp.sh  
./tmp.sh # 输出 "Inside another script: I am an environment variable"  
rm tmp.sh  
```  
  
#### 局部变量  
  
- 定义在函数内部  
- 只能在该**函数内部**访问和修改  
  
```bash  
# 定义函数，使用局部变量  
my_func() {  
  local local_var="I am a local variable"  
  echo "Inside function: ${local_var}"  
}  
  
# 调用函数  
my_func  
  
# 尝试在脚本中访问局部变量，会提示未定义  
echo "Outside function: ${local_var}" # 无法访问变量，变量处内容为空，  
```  
  
- _<u>请注意，在Bash中，局部变量必须使用`local`关键字进行声明</u>_  
  
### 2.4.3 数组变量  
  
#### 索引数组  
  
- 最**常用**的一种数组类型  
- 使用**数字索引**来访问数组元素  
- 在Bash中，数组**默认**都是索引数组  
  
```bash  
# 定义一个包含3个元素的索引数组  
Breeds=("Yorkshire" "Landrace" "Duroc")  
  
# 访问数组元素  
echo ${Breeds[0]}  # 输出 "Yorkshire"  
echo ${Breeds[1]}  # 输出 "Landrace"  
echo ${Breeds[@]}  # 输出数组所有元素  
```  
  
#### 关联数组  
  
- 使用**字符串索引**而不是数字索引来访问数组元素，也称为**字典**或**映射**  
- _<u>请注意，关联数组在Bash 4及更高版本才被引入</u>_  
  
```bash  
# 使用declare -A命令定义  
declare -A breeds  
breeds["Yorkshire"]=YY  
breeds["Landrace"]=LL  
breeds["Duroc"]=DD  
  
# 访问数组元素  
echo ${breeds["Landrace"]}    # 输出 "LL"  
echo ${breeds["Duroc"]}       # 输出 "DD"  
  
# 直接使用括号定义  
breeds2=( ["Hampshire"]="HH" ["Pietrain"]="PP" )  
echo ${breeds2["Hampshire"]}    # 输出 "HH"  
echo ${breeds2["Pietrain"]}     # 输出 "PP"  
```  
  
### 2.4.4 特殊变量  
  
- `$0`：代表脚本或命令本身的**名称**  
- `$1-$9`：代表**命令行参数**。`$1`代表第一个参数， `$2`代表第二个参数，以此类推，最多可以有9个参数。如果需要获取更多的参数，可以使用`$*`或`$@`  
- `$#`：代表命令行参数的**数量**，不包括脚本本身  
- `$*`和 `$@`：代表**所有**命令行参数。 `$*` 将所有参数看作一个单词，而 `$@` 将每个参数看作一个单词。这两个变量在处理参数列表时十分有用  
- `$?`：代表上一条命令的**退出状态**。如果命令执行成功，则 `$?` 的值为 0，否则为非 0 的值。  
- `$$`：代表**当前** shell 进程的进程ID。  
- `$!`：代表最近一个在**后台**运行的进程的进程ID  
  
```bash  
echo "  
#!/usr/bin/bash  
  
echo  
echo \"脚本的名称是: \$0\"  
echo # 打印空行  
echo \"第1个参数是:  \$1\"  
echo \"第2个参数是:  \$2\"  
echo \"第10个参数是: \$10\"  
echo \"第10个参数是: \${10}\"  
echo \"参数总个数:   \$#\"  
echo  
echo \"所有参数（单词形式）：\$*\"  
echo \"所有参数（数组形式）：\$@\"  
echo  
echo \"上一个命令的退出状态是 \$?\"  
echo  
echo \"当前 shell 进程的进程 ID 是 \$$\"  
sleep 5 &  
ps  
echo \"最近一个在后台运行的进程的进程 ID 是 \$!\"  
" > tmp.sh  
  
chmod 777 tmp.sh  
./tmp.sh A B C D E F G H I J K  
rm tmp.sh  
```  
  
- 这些变量提供有关**当前环境**的有用信息，允许脚本响应输入并与底层系统交互  
  
- _<u>请注意，当引用第10个及以上的参数时，必须使用**花括号**将参数编号括起来，如`${10}`，这是因为在Bash中，`$10`会被解释为将`$1`后跟一个0</u>_  
  
## 2.5 环境变量  
  
- Bash中的**环境变量**是在Shell会话中可用的**特殊变量**  
- 在Shell启动时由操作系统设置，对于**所有**的Shell**进程**都是可用的。  
- 环境变量允许在不同的Shell会话之间**共享**配置和信息，对于**系统配置**和**应用程序开发**都非常有用  
- 使用**大写**字母命名  
- 使用`export`命令可将变量从本地Shell变量**升级**为环境变量，使其在其他Shell进程中可用  
- 使用`env`命令可列出当前Shell进程中所有的环境变量  
  
```bash  
# 使用export命令将一个本地变量升级为环境变量  
export MY_VAR="Hello, World!"  
  
# 在当前Shell中打印环境变量  
echo $MY_VAR  
  
# 启动一个新的Shell会话，并打印环境变量  
bash -c 'echo $MY_VAR'  
  
# 使用env命令列出所有的环境变量  
env # 请注意，将会输出一大串内容  
env | grep MY_VAR # 可使用grep命令过滤输出  
```  
  
- 通过在`${HOME}/.bash_profile`文件或`/etc/profile.d`目录下创建文件来设置环境变量，这些文件在系统启动时被自动加载。  
- 这些文件中设置的变量只有在**新的登录Shell**中才会被设置为环境变量  
  
```bash  
# 设置可写环境变量  
export MY_VAR="Hello, World!"  
  
# 设置只读环境变量  
export MY_READ_ONLY_VAR="This variable is read-only."  
readonly MY_READ_ONLY_VAR  
  
# 尝试修改可写和只读环境变量  
MY_VAR="Modified value"  
MY_READ_ONLY_VAR="Modified value"  
  
# 打印环境变量  
echo $MY_VAR  
echo $MY_READ_ONLY_VAR  
```  
  
<br>    
  
文章配套教程视频及其他平台文章链接：  
  
[Shell脚本编程——2. Shell变量]()  
  
[Shell脚本编程——2. Shell变量]()  
  
<br>  
   
供稿：李伟宁  
编辑：李思雨  
校对：黄千千、卓越    
  
---  
  
团队其他公众平台：  
**微信公众号** | 房子下面一头猪  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260)  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)  
