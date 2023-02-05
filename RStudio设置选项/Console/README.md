![公众号](/Platform_materials/公众号二维码.jpg)    
  微信公众号：房子下面一头猪    

<br>

本期内容简介    
  
R语言集成开发环境（IDE）RStudio软件设置选项（**Global Options**）中的第三部分内容，即**控制台设置（Console）**    
    
<br>  
  
:warning: RStudio版本: **RStudio 2022.12.0 Build 353**      
   
- [3. Console](#3-Console)  
  - [3.1 Display](3.1-Display)  
  - [3.2 Execution](3.2-Execution)  
  - [3.3 Debugging](3.3-Debugging)  
  - [3.4 Other](3.4-Other)  
  
# 3. Console  
  
## 3.1 Display  
  
- [x] **Show syntax highlighting in console input**  
在控制台输入的代码显示语法高亮  
  > 对控制台输入的R代码语句进行高亮显示，同时也可部分支持Python语句的高亮显示    
  > 默认情况下，此选项对控制台中输入的代码生效    
  >  
  > _<u>请注意，高亮在黑色背景下显示更明显</u>_    
  
   ![控制台语法高亮](/RStudio设置选项/Console/image/控制台语法高亮.PNG)  
  
- [x] **Different color for error or message output (requires restart)**  
使用不同颜色输出错误和消息通知（更改后需重启生效）  
  > 代码执行结果中的警告/错误信息用红色字体显示，正常输出结果用黑色字体显示    
  > 取消勾选时，控制台所有的打印信息均用黑色字体显示    
  
  ![控制台错误消息](/RStudio设置选项/Console/image/控制台错误消息.PNG)  
  
- [x] **Limit visible console output (requires restart)**  
限制控制台打印的元素数（更改后需重启生效）  
**经测试此选项未生效，软件版本：Rstudio 2022.12.0 Build 353; R 4.2.2**  
  >  为防止查看某些数据对象时，控制台输出过多内容，RStudio默认情况下会自动限制每个执行操作在控制台中显示的输出对象长度    
  
- **Limit output line length to**:`1000`  
  
  > 限制控制台保留的输出对象长度为: `1000`    
  >  
  >实际可通过`options(max.print=num)`命令来设置控制台打印的元素数，其中`num`为需要显示的元素数，如10000  
  >例如，在控制台中输入测试数据`df <- data.frame(sam = rnorm(10000),sam2 = rnorm(10000))`后，查看`df`数据对象  
  
  ![控制台输出元素数](/RStudio设置选项/Console/image/控制台输出元素数.PNG)  
  
- **ANSI Escape Codes**: `Show ANSI colors`  
  
  > ANSI是用来控制终端的代码，可以控制的内容有颜色，光标位置，字体等等    
  > RStudio的控制台支持使用标准的ANSI转义序列输出的包含颜色和高亮显示功能，使控制台显示出彩色或带样式的文本内容    
  >  
  > ANSI转义代码    
  1.`show ANSI colors`: 显示ANSI转义代码中的颜色  
  2.`remove ANSI colors`: 删除ANSI转义代码中的颜色  
  3.`ignore ANSI colors (1.0 behavior)`: 忽略ANSI转义代码中的颜色  
  
  ![控制台ANSI代码](/RStudio设置选项/Console/image/控制台ANSI代码.PNG)  
  
## 3.2 Execution  
  
- [x] **Discard pending console input on error**  
出现错误时放弃挂起的控制台输入  
  > 在活动文件中一次选中多行代码，按`Ctrl+Enter`运行时，勾选此选项代码将在出现错误的行停止执行，不再执行后续代码    
  >  
  > _<u>请注意，启用此选项要求R语言版本在4.2及以上此外，若点击Source面板右上角的Source按钮运行整个脚本，无论此选项是否启用，代码也会在出现错误的行停止执行</u>_    
  
  ![错误行后停止执行](/RStudio设置选项/Console/image/错误行后停止执行.PNG)  
  
## 3.3 Debugging  
  
- [x] **Automatically expand traceback in error inspector**  
  当错误检查器中显示错误时，自动展开跟踪回溯  
  
  ![自动展开回溯](/RStudio设置选项/Console/image/自动展开回溯.PNG)  
  
  
## 3.4 Other  
  
- [x] **Double-click to select words**  
双击选择单词  
  > 当选中控制台中键入的代码文本时，取消勾选此选项将限制鼠标双击选中已执行代码或输出结果内容中的单词的功能    
  
  ![限制双击选中](/RStudio设置选项/Console/image/限制双击选中.gif)  
  
  
- [x] **Warn when automatic session suspension is paused**  
  当**自动会话挂起**暂停时显示警告  
  > RStudio会话现在提供对会话状态的更深入见解，这些状态将防止会话自动挂起这对于**RStudio cloud**用户、**RStudio Server**或**RStudio Workbench**环境特别有用在这些环境中，用户需要按会话所处活动状态的时间进行付费    
  > 为了指示RStudio正在执行**阻止自动挂起**的操作，控制台工具栏中会出现一个新图标将鼠标悬停在图标上将列出当前阻止自动挂起的所有内容    
  >  
  > _<u>请注意，以上解释来源于[Posit社区](https://community.rstudio.com/t/rstudio-workbench-2022-02-0-release/129963#session-suspension)，实际未能验证该选项的功能，可能只在Pro版本中生效</u>_    
  
- **Number of seconds to delay warning**: `5`  
  延迟警告的秒数: `5`  
  > 设置上述图标出现的时间，默认情况下，图标将在暂停挂起任务开始后5秒出现    

<br>  
文章配套教程视频及其他平台文章链接：

[RStudio设置选项（全）——3.Console - bilibili]()

[RStudio设置选项（全）——3.Console - 知乎]()

<br>

后续内容预告：  
   
4.Appearance  
5.Pane Layout  
6.Packages  
7.R Markdown  
8.Python  
9.Sweave  
10.Spelling  
11.Git/SVN  
12.Publishing  
13.Terminal  
14.Accessibility  

<br>

供稿：李伟宁、薛亚辉  
编辑：李思雨  
校对：李伟宁  

---
  
团队其他公众平台：  
**微信公众号** | 房子下面一头猪  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260)  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)
