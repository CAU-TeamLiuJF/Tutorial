
本期内容简介  

R语言集成开发环境（IDE）RStudio软件设置选项（**Global Options**）中的第二部分内容，即**代码设置（Code）**  
  
<br>

:warning: RStudio版本: **RStudio 2022.12.0 Build 353**    
    
- [2. Code](#2-code)
  - [2.1 Editing](#21-editing)
    - [2.1.1 General](#211-general)
    - [2.1.2 Execution](#212-execution)
    - [2.1.3 Snippets](#213-snippets)
  - [2.2 Display](#22-display)
    - [2.2.1 General](#221-general)
    - [2.2.2 Syntax](#222-syntax)
  - [2.3 Saving](#23-saving)
    - [2.3.1 General](#231-general)
    - [2.3.2 Serialization](#232-serialization)
    - [2.3.3 Auto-save](#233-auto-save)
  - [2.4 Completion](#24-completion)
    - [2.4.1 R and C/C++](#241-r-and-cc)
    - [2.4.2 Other Languages](#242-other-languages)
    - [2.4.3 Completion Delay](#243-completion-delay)
  - [2.5 Diagnostics](#25-diagnostics)
    - [2.5.1 R Diagnostics](#251-r-diagnostics)
    - [2.5.2 Other Languages](#252-other-languages)
    - [2.5.3 Show Diagnostics](#253-show-diagnostics)
    
#  2. Code  
    
    
##  2.1 Editing  
    
    
###  2.1.1 General  
    
    
- [x] **Insert spaces for Tab**  
为制表符插入空格  
  > 在活动文件中编辑时按下**Tab**键插入指定数目空格而不是制表符  
  > 在控制台按下**Tab**键时始终以**4**个空格替代  
  >  
  >_<u>请注意，文中所有选项的勾选状态及参数设置即我们的推荐设置</u>_  
  
    
  Tab width: ` 2 `  
  制表符宽度  
  > 一个制表符在活动文件中显示的宽度（字符数）  
  > 若勾选了**Insert spaces for Tab**，则在活动文件中按下Tab键时以**Tab width**指定的字符（空格）数替代  
  > 编辑器中自动缩进的级别会根据设置的制表符宽度自动适应  
    
  ![Tab宽度](/RStudio设置选项/Code/image/Tab宽度.png)  
    
- [x] **Auto-detect code indentation**  
自动检测代码缩进  
  > 启用后，将自动检测文档的缩进量  
  > 当在R项目中时，默认缩进量为2字符，此选项无效  
    
  ![自动检测缩进](/RStudio设置选项/Code/image/自动检测缩进.png)  
    
- [x] **Insert matching parens/quotes**  
插入匹配的括号/引号  
  > 键入(、[、{、'、"符号时，自动补齐右半边配对符号，且光标自动置于中间  
  > 仅在英文字符输入状态下有效  
    
- [x] **Use native pipe operator,|> (requires R 4.1+)**  
使用原生（官方）管道操作符  
  > 使用快捷键（`Ctrl+Shift+M`）插入管道操作符时，插入原生管道操作符，即`|>`，而不是`%>%`  
  > 仅在R版本为4.1或以上时有效  
  > 不管是否勾选此选项，两种管道操作符都可正常使用（`%>%`需加载包）  
  ```R  
  df |>  subset(month > 1, select = "sale") |>  summary()  
  df %>% subset(month > 1, select = "sale") %>% summary # library(dplyr)  
  ```  
    
- [x] **Auto-indent code after paste**  
粘贴后自动缩进代码  
  > 对粘贴到**编辑器**或**控制台**中的**多行**R代码块自动执行缩进  
  > 缩进量为2字符或自动检测的缩进量  
    
  ![粘贴缩进](/RStudio设置选项/Code/image/粘贴缩进.gif)  

- [x] **Vertically align arguments in auto-indent**  
垂直对齐自动缩进中的参数  
  > 函数参数位于不同的行时，根据嵌套关系垂直对齐各级参数  
    
  ![参数垂直对齐](/RStudio设置选项/Code/image/参数垂直对齐.png)  
    
- [ ] **Soft-wrap R source files**  
软换行R源文件  
  >将超过编辑器（source）窗口宽度的R源代码行折叠到下一行显示  
  >  
  >_<u>请注意，这不会在换行点插入换行符，只是在编辑器中的多行上显示代码</u>_  
    
  ![软换行](/RStudio设置选项/Code/image/软换行.gif)  

- [ ] **Continue comment when inserting new line**  
插入新行时继续注释  
  > 若光标所在行为注释行，则插入新行时将同步上一行的注释格式  
  > 即新注释行前的`#`符号个数和缩进将与上一行保持一致  
    
  ![连续注释](/RStudio设置选项/Code/image/连续注释.gif)  

- [x] **Enable hyperlink highlighting in editor**  
在编辑器中启用超链接突出显示    
  > 突出显示活动文件代码或注释中的网页链接（下划线）  
  > 按住`Ctrl`键（非`Shift`键）并单击链接，可在默认浏览器中打开链接  
  
  ![超链接突出显示](/RStudio设置选项/Code/image/超链接突出显示.png)  
    
 - **Editor scroll speed sensitivity**: `100`  
编辑器滚动速度灵敏度  
   >编辑器中鼠标滚动时屏幕滚动的速度灵敏度，数值可为1~200，数值越大滚动速度越快  
    
- **Surround selection on text insertion:** `Quotes & Brackets`  
将指定符号插入选中文本两侧  
  >在选中文本时键入引号或括号，将自动在选中文本两侧同时插入一对匹配符号  
  >**Never**: 不启用  
  >**Quotes**: 键入引号自动插入  
  >**Quotes & Brackets**: 键入引号或括号均自动插入

  ![选中文本插入配对符号](/RStudio设置选项/Code/image/选中文本插入配对符号.gif)  

- **Keybindings:** `Default`  
组合键（风格）  
  >选择快捷键的风格和自定义部分快捷键，同时光标也会有相应变化  
  >**Default**: 默认风格  
  >**Vim**: 如在非插入模式时，按`0`跳转到光标所在行的最前面字符处（包括空白符）  
  >**Emacs**: 如`Ctrl+X`然后单独按下`B`，可在source窗口的标签页之间切换  
  >**Sublime Text**: 如`Ctrl+P`可以搜索跳转到指定活动文件或活动文件中的函数  
    
- `Modify Keyboard Shortcuts...`  
修改快捷键  
  >在组合键风格基础上，用户可自定义功能快捷键  
    
  >快捷键修改建议：  
  >**Copy Document Path**: `Ctrl+Alt+C`  # 复制活动文件全路径  
  >**Comment/Uncomment Selection**: `Ctrl+/`  # 注释/取消注释选中行  
  >**Copy Lines Up**: `Ctrl+D`  # 向下拷贝一份选中内容  
  >**Insert Assignment Operator**: `Alt+,`  # 插入赋值符号<-  
    
###  2.1.2 Execution  
    
    
- [ ] **Focus console after executing from source**  
  从源代码执行后光标移动到控制台  
  >在活动文件脚本中通过run、source或`Ctrl+Enter`执行代码后，光标自动移动到控制台Console中  
  >  
  >_<u>请注意，光标移动到控制台后可在控制台编辑命令运行，但此时按下Ctrl+Enter键仍能继续执行脚本文件中的命令</u>_  
  
  ![光标自动移到控制台](/RStudio设置选项/Code/image/光标自动移到控制台.gif)  

- **Ctrl+Enter executes:** `Multi-line R statement`  
Ctrl+Enter执行  
  >在活动脚本文件中按下`Ctrl+Enter`组合键时，代码的执行内容  
  >**Current line**: 只执行光标所在行代码，依次执行代码，不影响执行结果  
  >**Multi-line R statement**: 以代码块为单位，朝下执行离光标最近的一个代码块，如整个循环、多行定义的数据框和+号连接的多行代码  
  >**Multiple consecutive R lines**: 执行从光标所在行到下一个空行的所有代码  
  >  
  >_<u>请注意，无论何种执行方式，执行结束后光标都将移动到离执行代码最近的非空行，即会自动跳过脚本中的空行，但不会越过注释行。</u>_  

  ![ctrl+Enter执行](/RStudio设置选项/Code/image/ctrl+Enter执行.gif)  

###  2.1.3 Snippets  
    
    
- [x] **Enable code snippets:** `Edit Snippets...`  
启用代码段  
  >代码补全时显示可选的代码段，用户可以自定义代码段  
    
  ![代码段](/RStudio设置选项/Code/image/代码段.png)  
    
##  2.2 Display  
    
    
###  2.2.1 General  
    
    
- [x] **Highlight selected word**  
高亮显示所选词  
  >为文档中当前所选词的所有拷贝添加背景突出显示效果，对在文件中只出现一次的词无效  
  >不仅限于单个单词，多个由其他符号连接的词也可，如one.two或one_two  
    
  ![选中词高亮](/RStudio设置选项/Code/image/选中词高亮.png)  
    
- [x] **Highlight selected line**  
高亮显示所选行  
  >为选中的代码行添加背景突出显示效果  
    
  ![选中行高亮](/RStudio设置选项/Code/image/选中行高亮.png)  
    
- [x] **Show line numbers**  
显示行号  
  >在Source面板的打开文件的左侧显示行号  
  >  
  >_<u>请注意，若取消勾选该选项，将无法通过在行号左侧空位点击以添加调试断点，同时也无法显示提示诊断类型的符号</u>_  
  
  ![显示行号](/RStudio设置选项/Code/image/显示行号.png)  
  
- [ ] **Relative line numbers**  
相对行号  
  >显示光标所在行的行号，光标所在行的上下行的行号以相对于光标所在行的行号显示，如在光标所在行的上（下）一行显示**1**，上（下）两行显示**2**，以此类推  
    
  ![相对行号](/RStudio设置选项/Code/image/相对行号.png)  
    
- [x] **Show margin**  
显示边距  
  >在源代码编辑器右侧的指定字符宽度处显示边距参考线  
    
  ![边界参考线](/RStudio设置选项/Code/image/边界参考线.png)  
    
- **Margin column:** `80`  
边距列数  
  >边距参考线位置，为英文输入法下的字符数  
    
- [ ] **Show whitespace characters**  
显示空白字符  
  >在活动文件中显示空白字符（空格符、制表符、换行符）  
    
  ![显示空白符](/RStudio设置选项/Code/image/显示空白符.png)  
    
- [x] **indent guides:** `Rainbow lines`  
缩进参考  
  >在活动文件中显示指示当前缩进列的元素  
  >**None**: 不显示缩进参考元素  
  >**Gray lines**: 以灰色线指示缩进  
  >**Rainbow lines**: 以彩虹色线指示缩进  
  >**Rainbow fills**: 以彩虹色填充指示缩进  
    
  ![缩进参考](/RStudio设置选项/Code/image/缩进参考.png)  
    
- [x] **Blinking cursor**  
光标闪烁  
  >在活动文件和控制台中显示光标闪烁效果  
    
- [x] **Allow scroll past end of document**  
允许鼠标滚动超过文档结尾  
  > 在活动文件中，当屏幕滚动到文件最后一行时，允许继续向下滚动  
    
- [x] **Allow drag and drop of text**  
允许拖放文本  
  >允许将活动文件（控制台）中选中的文本内容进行拖（放）**剪切**到其他位置  
  >也可将选中文本拖放到RStudio外的其他应用程序中，此时为**复制**  
    
  ![拖动选中文本](/RStudio设置选项/Code/image/拖动选中文本.gif)  

- **Fold Style:** `Start and End`  
 折叠样式  
  >**Start Only**: 只在可折叠代码块的开始处显示折叠标记  
  >**Start and End**: 同时在可折叠代码块的开始和结束处显示折叠标记  
    
  ![折叠标志符](/RStudio设置选项/Code/image/折叠标志符.png)  
    
###  2.2.2 Syntax  
    
    
- [x] **Highlight R function calls**  
高亮显示调用的R函数  
  >在活动文件或控制台中高亮显示调用的R函数  
    
  ![函数高亮](/RStudio设置选项/Code/image/函数高亮.png)  
    
- [x] **Enable preview of named and hexadecimal colors**  
启用命名颜色和十六进制颜色代码的预览  
  >  
    
  ![颜色预览](/RStudio设置选项/Code/image/颜色预览.png)  
    
- [x] **Rainbow parentheses**  
彩虹括号  
  >为源代码中的括号添加彩虹颜色，以便更好地区分嵌套的括号  
    
  ![彩虹括号](/RStudio设置选项/Code/image/彩虹括号.png)  
    
##  2.3 Saving  
    
    
###  2.3.1 General  
    
    
- [x] **Ensure that source files end with newline**  
确保源文件以换行符结尾  
  > 在保存源文件时，如果源文件不以换行符结尾，则在文件末尾添加换行符，即保存文件后始终保证文件的最后一行为空行  
  >  
  >_<u>请注意，活动文件处于打开R项目的RStudio窗口时，此选项会被Project Options中的相同设置项覆盖</u>_  
    
  ![以换行符结尾](/RStudio设置选项/Code/image/以换行符结尾.gif)  

- [x] **Strip trailing horizontal whitespace when saving**  
保存文件时去除行尾处的空白符  
  > 保存文件时删除活动文件中每一行的尾部的空白符（空格符和制表符）  
  >  
  >_<u>请注意，活动文件处于打开R项目的RStudio窗口时，此选项会被Project Options中的相同设置项覆盖</u>_  
    
  ![删除行尾空白](/RStudio设置选项/Code/image/删除行尾空白.gif)  

- [x] **Restore last cursor position when opening file**  
打开文件时恢复上次光标位置  
  > 关闭RStudio并重新打开时，恢复上次关闭时各个打开文件中的光标位置（行和列）  
  > 取消勾选时重新打开RStudio窗口后所有的文件中光标将置于文件第一个字符前  
    
  ![光标位置还原](/RStudio设置选项/Code/image/光标位置还原.png)  
    
###  2.3.2 Serialization  
    
    
- **Line ending conversion:**`Posix`  
换行符转换  
  >**None**: 保存文件时将换行符统一为该文件中第一行的换行符风格  
  >**Platform Native**: 跟随操作系统的换行符风格，Windows中为**CRLF**，Linux中为**LF**  
  >**Posix**: 使用**LF**作为换行符，即\n  
  >**Windows**: 使用**CRLF**作为换行符，即\r\n  
    
  ![换行符转换](/RStudio设置选项/Code/image/换行符转换.gif)  

- **Default text encoding:**   
  `UTF-8`  `Change...`  
默认文本编码  
  > 指定源文件的默认文本编码（新建/解码），当脚本文件的执行代码（非注释行）中存在中文字符时需要特别关注此选项，若文件编码方式与RStudio默认编码不匹配，此时不止会影响代码阅读，还将影响代码运行。脚本运行系统为Linux时建议选择**UTF-8**，在Windows中运行时建议执行代码（非注释行）中不要出现中文字符  
  >  
  >_<u>请注意，与默认编码不匹配的源文件仍然可以使用“**File->Reopen with Encoding**”菜单命令正确打开。该操作只是更换解读文件的方式，不会实际改变文件的编码方式</u>_  
  
  ![默认文件编码](/RStudio设置选项/Code/image/默认文件编码.gif)  
  
###  2.3.3 Auto-save  
    
    
- [x] **Always save R scripts before sourcing**  
通过source执行脚本前总是先保存  
  > 在执行source命令前，总是先保存当前活动文件  
    
- [x] **Automatically save when editor loses focus**  
编辑器失去焦点时自动保存  
  > 当编辑活动文件后，若鼠标点击除活动文件的其他位置时，则自动保存当前活动文件  
    
  ![失去焦点自动保存](/RStudio设置选项/Code/image/失去焦点自动保存.gif)  

- **When editor is idle:** `Backup unsaved changes`  
当文本编辑器空闲时  
  >**Saved and write changes**: 自动**保存**当前活动文件  
**Backup unsaved changes**: 自动**备份**当前活动文件，RStudio异常退出时，可以从备份文件中恢复  
**Do nothing**: 不做任何操作  
    
- **ldle period:**`1000ms`  
空闲时间  
  >判断文本编辑器是否空闲的时间间隔，单位为毫秒  
    
##  2.4 Completion  
    
    
###  2.4.1 R and C/C++  
    
    
- **Show code completions:** `Automatically`  
显示代码补全  
  >**Automatically**: 自动显示  
**Never**: 从不显示  
**When triggered( $,:: )**: 当触发时显示  
**Manually(tab)**: 按下`Tab`键时显示  
  >  
  >_<u>请注意，**When triggered**选项未测试成功。若取消勾选**Use tab for autocompletions**，即使选择**Manually**也不能通过Tab键显示补全选项_</u>  
    
- [x] **Allow automatic completions in console**  
允许在控制台中自动显示补全  
  >  
  >_<u>请注意，若勾选了**Use tab for autocompletions**，即使不勾选此选项在控制台也能通过Tab键完成代码补全_</u>  
    
  ![控制台自动补全](/RStudio设置选项/Code/image/控制台自动补全.gif)  

- [x] **Insert parentheses after function completions**  
函数完成后插入括号  
  >若输入函数名时使用了代码补全，自动在函数名后添加括号，并将光标移动到括号内  
    
  ![函数补全自动加括号](/RStudio设置选项/Code/image/函数补全自动加括号.gif)  

- [x] **Show help tooltip after function completions**  
函数完成后显示提示信息  
  >勾选此选项，则在代码完成后在一个小弹出窗口中显示函数帮助页面的摘要  
    
  ![函数完成显示提示](/RStudio设置选项/Code/image/函数完成显示提示.png)  
    
- [x] **Show help tooltip on cursor idle**  
光标空闲时显示提示信息  
  >当光标在函数名上停留一段时间后，显示函数帮助页面的摘要  
    
  ![函数名停留显示帮助](/RStudio设置选项/Code/image/函数名停留显示帮助.gif)  

- [x] **Insert spaces around equals for argument completions**  
在参数=号周围插入空格  
  >当使用代码补全时，自动在函数参数赋值的=号前后添加空格  
    
  ![函数参数两侧空格](/RStudio设置选项/Code/image/函数参数两侧空格.png)  
    
- [x] **Use tab for autocompletions**  
使用`Tab`键自动补全  
  >按下`Tab`键可显示所有可能的补全选项，即使光标所在位置不是函数名或参数名  
  >  
  >_<u>请注意，若勾选此选项，即使**Show code completions**设为**Never**，按下`Tab`键仍可显示可能的补全选项</u>_  
    
  ![Tab键补全](/RStudio设置选项/Code/image/Tab键补全.gif)  

- [x] **Use tab for multiline autocompletions**  
使用Tab键进行多行自动补全  
  >当函数参数换行时，勾选此选项可在非函数名所在的行按下`Tab`键也显示自动补全选项，而不是插入制表符  
    
  ![多行补全](/RStudio设置选项/Code/image/多行补全.png)  
    
###  2.4.2 Other Languages  
    
    
- **Show code completions:** `Automatically`  
显示代码补全（其他语言）  
  >**Automatically**: 自动显示  
**When triggered**: 当触发时显示  
**Manually(ctrl+space)**: 按下`Tab`键时显示  
  
<br>  
  
***Keyword and text-based completions are supported for several other languages including JavaScript, HTML, CSS, Python, and SOL.***  
*<u>关键字和基于文本的补全同样支持其他语言，包括JavaScript，HTML，CSS，Python和SOL。</u>*  
    
###  2.4.3 Completion Delay  
    
    
- **Show completions after characters entered:**`3`  
输入字符数后显示补全选项  
  >用户的输入触发代码补全所需的最少字符数  
    
  ![补全提示字符数](/RStudio设置选项/Code/image/补全提示字符数.png)  
    
- **Show completions after keyboard idle (ms):**`250`  
键盘空闲后显示补全选项  
  > 只在**Show code completions:**为**Automatically**时有效  
  > 编辑器在停止键入后应等待多长时间（毫秒）才显示代码补全选项  
    
##  2.5 Diagnostics  
    
    
###  2.5.1 R Diagnostics  
    
    
- [x] **Show diagnostics for R**  
显示R的诊断  
  >提供基本的诊断功能，在R代码存在问题时，在编辑器的相应行号处显示提示符，且在出现问题的代码底部显示波浪线  
    
  ![诊断信息](/RStudio设置选项/Code/image/诊断信息.png)  
    
- [x] **Enable diagnostics within R function calls**  
在R函数调用中启用诊断  
  >控制是否在函数调用中执行诊断，例如`dplyr::select(mtcars, mpg, cyl)`  
  >如果代码大量使用非标准求值，而RStudio无法为您生成正确的诊断，请切换此选项  
  >  
  >_<u>请注意，以上解释来源于[RStudio User Guide - Code Diagnostics](https://docs.posit.co/ide/user/ide/guide/code/diagnostics.html )，实际上切换该选项函数诊断信息并未发生变化</u>_  
    
- [x] **Check arguments to R function calls**  
检查所调用的R函数的参数  
  >尝试检测对函数的特定调用是否会成功  
  >诊断引擎将报告是否检测到缺失参数、不匹配参数、部分匹配参数和过多参数  
    
  ![函数参数检查](/RStudio设置选项/Code/image/函数参数检查.png)  
    
- [x] **Check usage of '<-' in function call**  
检查调用函数中的"<-"  
  >R函数中参数赋值通常用=号而不用<-，勾选此选项将在函数中使用<-时显示警告  
  >  
  >_<u>请注意，使用<-进行参数赋值不会影响程序运行</u>_  
    
  ![参数赋值符检查](/RStudio设置选项/Code/image/参数赋值符检查.png)  
    
- [x] **Warn if variable used has no definition in scope**  
如果使用的变量在作用域中没有定义，则发出警告  
  >如果使用的符号在当前作用域或父作用域中没有定义，则发出警告  
  >如果在符号名称中出现拼写错误，诊断引擎将提供建议。也就是说，如果作用域中也存在具有类似名称的符号  
    
  ![未定义变量提示](/RStudio设置选项/Code/image/未定义变量提示.png)  
    
- [x] **Warn if variable is defined but not used**  
如果变量已定义但未使用，则发出警告  
  >该诊断有助于确定是否存在已创建但从未使用过的变量。当我们清理旧代码或诊断其他错误时（你认为应该使用某个特定变量，但实际上没有），会很有帮助  
    
  ![定义但未使用的变量](/RStudio设置选项/Code/image/定义但未使用的变量.png)  
    
- [x] **Provide R style diagnostics (e.g. whitespace)**  
提供R格式诊断（例如空格）  
  >检查代码是否符合[Hadley Wickham的样式指南](http://adv-r.had.co.nz/Style.html )，并在遇到时报告样式警告  
  >诊断引擎将识别不适当地使用(或不使用)空格  
  >  
  >_<u>请注意，逗号,后未紧跟一个空格的情况不能被正确诊断</u>_  
    
  ![代码格式检查](/RStudio设置选项/Code/image/代码格式检查.png)  
    
- [x] **Prompt to install missing R packages discovered in R source files**  
提示用户本机未安装但R脚本中将调用的R包  
  >  
  >_<u>请注意，若脚本文件中存在未解决的Error诊断信息，则不会检查脚本中是否使用了未安装的包。若存在未显示诊断信息的不可执行代码（如在4.1以下版本的R中使用管道符|>），此时也无法提示安装</u>_  
    
  ![未安装包提示](/RStudio设置选项/Code/image/未安装包提示.png)  
    
###  2.5.2 Other Languages  
    
    
- [x] **Show diagnostics for C/C++**  
在C或C++代码出现问题时，在编辑器的页边空白处显示警告消息  
    
  ![Cpp代码检查](/RStudio设置选项/Code/image/Cpp代码检查.png)  
    
- [x] **Show diagnostics for YAML**  
在YAML代码出现问题时，在编辑器的页边空白处显示警告消息  
  >  
  >_<u>请注意，本人在电脑上测试发现RStudio未能准确诊断YAML脚本中出现的问题，有待进一步验证</u>_  
    
- [x] **Show diagnostics for JavaScript, HTML, and CSS**  
在出现不正确的JavaScript、HTML和CSS代码时在编辑器的页边空白处显示警告消息  
    
  ![CSS诊断](/RStudio设置选项/Code/image/CSS诊断.png)  
    
###  2.5.3 Show Diagnostics  
  
    
- [x] **Show diagnostics whenever source files are saved**  
保存源文件时显示诊断信息  
  > 勾选该选项时，保存文件时会立即刷新诊断信息。取消勾选后虽然不会立即刷新，但若勾选了**Show diagnostics for R**，也会在一定时间后显示诊断信息  
    
  ![保存立即显示诊断](/RStudio设置选项/Code/image/保存立即显示诊断.gif)  

- [x] **Show diagnostics after keyboard is idle for a period of time**  
键盘空闲一段时间后显示诊断信息  
  > 当编辑完一行代码光标移动到别的行时，键盘空闲指定时间后，会显示诊断信息  
  >  
  >_<u>请注意，即使以上来两个选项均不勾选，诊断信息也会在编辑器失去焦点，重新回到文件后刷新诊断信息</u>_ 
    
  ![间隔一段时间显示诊断](/RStudio设置选项/Code/image/间隔一段时间显示诊断.gif)  

- **Keyboard idle time (ms):** `1000`  
键盘空闲时间(ms): `1000`  
  > 判断键盘空闲的时间，单位为毫秒  

<br>  
文章配套教程视频及其他平台文章链接：

[RStudio设置选项（全）——2.Code - bilibili](https://www.bilibili.com/video/BV1NA411o7jw/)

[RStudio设置选项（全）——2.Code - 知乎](https://zhuanlan.zhihu.com/p/597776008)

<br>

后续内容预告：  
  
3.Console  
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
编辑：李思雨、孙福腾  
校对：黄千千、毛瑞涵  

<br>  

:warning: **转载声明**：感谢您对文章内容的认可，转载请联系公众号“房子下面一头猪”获得授权，转载后请在醒目位置标明来源，且禁止声明原创。    

---  
  
团队其他公众平台：  
  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260) 
  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)
  
**微信公众号** | 房子下面一头猪  
  
![公众号](/Platform_materials/公众号二维码_无白边.jpg)  
