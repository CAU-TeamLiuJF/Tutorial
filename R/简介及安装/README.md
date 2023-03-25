- [1. 简介及软件安装](#1-简介及软件安装)  
  - [1.1 简介](#11-简介)  
  - [1.2 优势及不足](#12-优势及不足)  
    - [1.2.1 优势](#121-优势)  
    - [1.2.2 不足](#122-不足)  
- [2. 安装](#2-安装)  
  - [2.1 R语言安装](#21-R语言安装)  
    - [2.1.1 Windows系统](#211-Windows系统)  
    - [2.1.2 Linux系统](#212-Linux系统)  
  - [2.2 RStudio安装](#22-RStudio安装)  
    - [2.2.1 Windows系统](#221-Windows系统)  
    - [2.2.2 Linux系统](#222-Linux系统)  



# 1. 简介及软件安装  
  
## 1.1 简介  
  
**R语言**是一种用于**统计计算**和**数据分析**的**编程语言**，具有易用性、灵活性和可扩展性的特点。R语言最初是由新西兰奥克兰大学的**Ross Ihaka**和**Robert Gentleman**于**1993**年开发的，现在由R开发**核心团队**和全球各地的**志愿者**共同维护和发展。  
  
## 1.2 优势及不足  
  
### 1.2.1 优势  
  
- **开源免费**：R语言是一款开源免费的编程语言，用户可以自由地下载和使用它。  
- **强大的统计分析能力**：R语言是一款专门用于**数据分析**和**统计建模**的语言，它拥有非常丰富的统计分析**函数**和包，可以进行各种**数据处理**、**统计分析**和**可视化**。  
- **大量的扩展包**：R语言有数以千计的**扩展包**可供选择，这些扩展包包含了各种各样的工具和算法，方便用户进行数据处理和分析。  
- **图形化能力强**：R语言有很强的**图形化**能力，可以生成各种高质量的图形和数据可视化，方便用户进行数据展示和交流。  
  
### 1.2.2 不足  
  
- **内存占用大**：因为其动态类型和垃圾回收机制等特性，导致R语言内存占用相比一些**编译型**语言如C语言等要大。  
- **处理大型数据时速度较慢**：由于R语言是**解释型**语言，而不是**编译型**语言，因此在处理**大型数据**时速度相对较慢，需要**优化**和**调试**。  
- **缺少标准化**：由于R语言的**开源性质**和**大量**的扩展包，因此在**不同的环境**和应用中可能存在一定的差异和不兼容性。  
- **学习曲线较陡峭**：由于R语言是一种专业的数据分析语言，因此学习曲线相对较陡峭，需要花费一定的时间和精力来掌握。  
  
## 2. 安装  
  
## 2.1 R语言安装  
  
### 2.1.1 Windows系统  
  
- **下载安装程序**：在[R官网](https://www.r-project.org/)点击左上方download下的CRAN跳转到[镜像站点](https://cran.r-project.org/mirrors.html)选择界面，选择一个离自己较近的镜像站点（如：[北京外国语大学](https://mirrors.bfsu.edu.cn/CRAN/)），根据自己的系统选择合适版本的安装程序（如：[Download R for Windows](https://mirrors.bfsu.edu.cn/CRAN/bin/windows/)），跳转页面后选择子目录下的[base](https://mirrors.bfsu.edu.cn/CRAN/bin/windows/base/)下载即可。  
  
  ![R语言安装-R语言exe下载](/R/简介及安装/image/R语言安装-R语言exe下载.png)  
  
- **运行安装程序**：双击下载的安装程序（如：R-4.2.2-win.exe）进入安装引导  
  
  ![R语言安装-运行R安装程序](/R/简介及安装/image/R语言安装-运行R安装程序.png)  
  
- **选择安装时使用语言**：根据自己的需要选择R 语言**安装时**提示信息的**语言**，选择简体中文即可。  
  
  ![R语言安装-选择安装时语言](/R/简介及安装/image/R语言安装-选择安装时语言.png)  
  
- **信息**：协议等信息，直接点击下一步即可  
  
  ![R语言安装-信息](/R/简介及安装/image/R语言安装-信息.png)  
  
- **选择安装位置**：默认情况下，R将被安装到C:\Program Files\R\R-4.2.2（在Windows上）或者/Applications/R/R-4.2.2（在MacOS上）。你可以选择其他安装路径（可以更换为一个不含空格的路径，如C:\Mysoftware\R\R-4.2.2），但要注意不要安装到需要管理员权限的位置。  
  
  ![R语言安装-安装路径](/R/简介及安装/image/R语言安装-安装路径.png)  
  
- **选择组件**：建议选择用户安装下的所有3个组件，即Main Files，64-bit Files和Message translations。没有安装“Message translations”组件，R语言的控制台消息将会以**英文**显示，而不是中文。(待验证)  
  
  ![R语言安装-选择组件](/R/简介及安装/image/R语言安装-选择组件.png)  
  
- **启动选项**：建议选择接受默认选项（即MDI显示模式，HTML帮助）  
  - **显示模式**：**SDI模式**下，每个R图形界面和控制台窗口是独立的窗口，可以随意拖动和调整大小。在SDI模式下，每次打开一个新的窗口都会在任务栏上创建一个新的图标；**MDI模式**下，所有的R图形界面和控制台窗口都在一个父窗口下，每个窗口都作为子窗口出现。在MDI模式下，可以在父窗口中同时打开多个子窗口，但是每个子窗口的位置和大小不能单独调整，而是要在父窗口内进行调整。在MDI模式下，只会在任务栏上创建一个R图标，无论打开了多少个子窗口。  
    
    ![R语言安装-显示模式](/R/简介及安装/image/R语言安装-显示模式.png)  
    
  - **帮助风格**：**纯文本**帮助是指以纯文本格式显示的帮助文档，可以在命令行界面中查看。纯文本帮助文件占用空间小，加载速度快，但是阅读体验不如 HTML 帮助；**HTML** 帮助是指以网页形式显示的帮助文档，可以通过浏览器查看。HTML 帮助文件占用空间相对较大，但是可以使用超链接、图像等元素，使得阅读体验更加友好。  
    
    ![R语言安装-帮助风格](/R/简介及安装/image/R语言安装-帮助风格.png)  
    
- **选择附加任务**：建议勾选登记册记录项，不用勾选附加快捷方式，因为平时通常以RStudio作为开发环境。  
  
  ![R语言安装-附加任务](/R/简介及安装/image/R语言安装-附加任务.png)  
  
- **设置环境变量**：将安装路径下的可执行文件R.exe所在的目录（如：C:\Program Files\R\R-4.2.2\bin）添加到**系统环境变量**中  
  
  ![R语言安装-设置环境变量](/R/简介及安装/image/R语言安装-设置环境变量.png)  
  
### 2.1.2 Linux系统  
  
在Linux系统中可以通过多种方式安装R语言，如conda，yum，源代码编译等，这里只演示最后一种，可以方便地在没有网络条件的服务器上根据用户自定义的安装路径进行安装。  
  
- **下载源码**：如上所述，选择合适的镜像网站下载与Linux系统对应的R源代码，即Source Code for all Platforms（如**R-4.2.3.tar.gz**）  
  
  ![R语言安装-R源代码gz下载](/R/简介及安装/image/R语言安装-R源代码gz下载.png)  
  
- **复制文件到Linux**：若是在其他终端（如自己的Windows主机），则先将下载的安装包复制到Linux系统上想要安装R的位置，如：~/software/R  
- **安装操作**  
  
```bash  
cd /storage1/active/liwn/Mysoftware  # 源文件压缩包所在路径  
tar -xzvf R-4.2.3.tar.gz  # 以R-4.2.3为例，解压文件  
cd ./R-4.2.3  # 进入解压目录  
  
# 生成Makefile文件和检测系统环境和依赖库，以便在系统上编译和安装软件。这里指定/storage1/active/liwn/Mysoftware/R为安装路径，可自行更改  
./configure --prefix=/storage1/active/liwn/Mysoftware/R-4.2.3    
# 若上述命令没有报错（如显示：R is now configured for x86_64-pc-linux-gnu），则继续下一步，若提示缺少某些依赖等，则需要根据实际情况部署好环境  
  
# make是一个编译器，将源代码编译成可执行程序或库文件,（同时会安装一些基础包，执行时间较长）  
make  
  
# make install的作用是将已编译的二进制文件复制到指定的目录中，使其可以被系统使用  
make install  
# 以上两条命令也可合并为一条：make & make install，一步执行  
  
# 环境变量设置  
# 1.通过module模块配置环境年龄  
# 2.临时设置环境变量，只对当前登陆的shell起作用  
R_PATH=/storage1/active/liwn/Mysoftware/R/R-4.2.3  
EXPORT PATH:${R_PATH}:/${PATH}  
# 3.在Home目录下的.bash_profile文件中添加设置环境变量的代码行，如：  
echo "  
## R语言环境变量设置  
R_dir=/storage1/active/liwn/Mysoftware/R/R-4.2.3  
R_HOME=${R_dir}/lib64/R  
export PATH=$PATH:$installdir/bin  
export LIBRARY_PATH=$LIBRARY_PATH:$installdir/lib64/R/lib:$installdir/lib64/R/lib64  
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$installdir/lib64/R/lib:$installdir/lib64/R/lib64  
export LIBR_LIBRARIES=$LIBR_LIBRARIES:$installdir/lib64/R/lib:$installdir/lib64/R/lib64  
export CPATH=$CPATH:$installdir/lib64/R/include  
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$installdir/lib64/pkgconfig:$installdir/lib64/R/lib64/pkgconfig  
export MANPATH=$MANPATH:$installdir/share/man  
" >> $HOME/.bash_profile  
# 注意：最后一行中">>"为追加，不可设为">""，否则将覆盖文件！  
```  
  
## 2.2 RStudio安装  
  
RStudio是一款集成开发环境（IDE），为R语言提供了更加友好的界面和交互式体验。它可以帮助用户更轻松地编写、调试和运行R代码，同时提供了许多实用的功能和工具，例如代码高亮、自动完成、代码重构、调试器、数据视图、可视化工具、报告生成等。  
  
### 2.2.1 Windows系统  
  
- **下载安装程序**：在[Posit官网](https://posit.co/)点击右上角[DOWNLOAD RSTUDIO](https://posit.co/downloads/)跳转到版本选择界面，选择**免费**的RStudio Desktop版本点击，跳转后页面会提示先安装相应版本的R语言，若此时电脑上没有安装R语言或者R语言版本过低，则需要先安装R语言，然后点击[DOWNLOAD RSTUDIO DESKTOP FOR WINDOWS](https://download1.rstudio.org/electron/windows/RStudio-2023.03.0-386.exe)即可下载exe安装包程序。  
  
  ![RStudio安装-exe下载.png](/R/简介及安装/image/RStudio安装-exe下载.png.png)  
  
- **运行安装程序**：双击下载的安装程序（如：RStudio-2023.03.0-386.exe）进入安装引导。若此时打开了旧版本的RStudio窗口，则会提示需要先退出程序。  
  
  ![RStudio安装-运行安装程序.png](/R/简介及安装/image/RStudio安装-运行安装程序.png.png)  
  
- **欢迎界面（提示信息）**：提示安装前先关闭其他所有应用程序，确保安装程序能够更新所需的系统文件（防占用），以避免程序要求安装后重启计算机。不关闭也没事，暂时没有遇到要求重启的，直接点击下一步即可。  
  
  ![RStudio安装-欢迎界面](/R/简介及安装/image/RStudio安装-欢迎界面.png)  
  
- **选择安装位置**：默认情况下，RStudio将被安装到C:\Program Files\RStudio（Windows）。你可以选择其他安装路径（可以更换为一个不含空格的路径，如C:\Mysoftware\RStudio），但要注意不要安装到需要管理员权限的位置。  
  
  ![RStudio安装-选择安装位置](/R/简介及安装/image/RStudio安装-选择安装位置.png)  
  
- **选择开始菜单文件夹**：Windows 的开始菜单位于操作系统的任务栏上，通常显示在桌面的左下角（点击Windows图标），勾选改选项可以在Windows的“开始”菜单栏创建快捷方式，通常按默认设置即可。如果有分类管理开始菜单栏的习惯，也可以选择一个已存在的文件夹创建快捷方式。  
  
  ![RStudio安装-选择开始菜单文件夹](/R/简介及安装/image/RStudio安装-选择开始菜单文件夹.png)  
  
- **开始安装**：点击“安装”后RStudio即开始安装  
  
  ![RStudio安装-正在安装](/R/简介及安装/image/RStudio安装-正在安装.png)  
  
- **安装程序结束**：提示RStudio安装程序结束，点击完成即可退出安装引导  
  
### 2.2.2 Linux系统  
  
- **RStudio Server**  
  
  网页版的RStudio，相比于单机版，它的灵活性更强，部署在服务器上后，可随时随地完成R语言的工作。并且能很方便的完成R项目的部署调试。  
  
- **安装**  
  
  因为其安装部署比较复杂（尝试安装失败），感兴趣的同学可以参考[在服务器中使用R--RStudio Server - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/133482023)这篇文章进行探索  
  

<br>  
   
供稿：李伟宁  
编辑：李伟宁  
校对：李伟宁   

<br>  

:warning: **转载声明**：感谢您对文章内容的认可，转载请联系公众号“房子下面一头猪”获得授权，转载后请在醒目位置标明来源，且禁止声明原创。  

---  
  
团队其他公众平台：  
  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260) 
  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)
  
**微信公众号** | 房子下面一头猪  
  
![公众号](/Platform_materials/公众号二维码_无白边.jpg)     
