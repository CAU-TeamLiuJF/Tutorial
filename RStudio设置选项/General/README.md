
- [1. General](#1-general)
  - [1.1 Basic](#11-basic)
    - [1.1.1 R Sessions](#111-r-sessions)
    - [1.1.2 Workspace](#112-workspace)
    - [1.1.3 History](#113-history)
    - [1.1.4 Other](#114-other)
  - [1.2 Graphics](#12-graphics)
    - [1.2.1 Graphics Device](#121-graphics-device)
  - [1.3 Advanced](#13-advanced)
    - [1.3.1 Debugging](#131-debugging)
    - [1.3.2 OS Integration](#132-os-integration)
    - [1.3.3 Other](#133-other)
    - [1.3.4 Experimental Features](#134-experimental-features)

:warning: RStudio版本: **RStudio 2022.12.0 Build 353**

# 1. General

## 1.1 Basic

### 1.1.1 R Sessions

- **R version（）**:  
  R语言版本:
  > 选择一个电脑上已安装的R语言版本。  
  > 用户可以安装多个不同版本的R语言，RStudio默认选择最新的版本。  
  > 选择R语言版本的同时，安装的第三方**包**也会根据版本变化。  
  > 按住**ctrl**键然后鼠标左键**双击**RStudio快捷方式可在RStudio启动前选择R语言版本。 

  ![R version](/RStudio设置选项/General/image/R语言版本选择.png)

- **Default working directory (when not in a project):**  
默认工作目录:  
  > RStudio的启动目录（不在项目中时），将从此目录中读取初始.RData和.Rhistory文件（如果存在）。  
  > 当前工作目录和**Files**窗格也将设置为此目录。当指定目录不存在时，将设为“文档”所在位置，如"E:/OneDrive/文档"。  
  >   
  > _请注意，当使用文件关联（双击打开.R脚本）或带有指示初始工作目录的命令行参数的终端启动RStudio时，可以覆盖此设置。_

- [x] **Restore most recently opened project at startup**  
在启动时恢复最近打开的项目  
  > 打开RStudio时自动重新打开最近使用的项目（如果存在）。

- [x] **Restore previously open source documents at startup**  
在启动时恢复以前打开的源文档  
  > 打开RStudio时，会自动重新打开以前为当前项目打开的源文件。    
  > 同时上次退出时的变量查看窗口也会保留，无论退出前是否保存了变量.RData。  

  ![恢复打开的源文档](/RStudio设置选项/General/image/恢复源文件和变量查看.png)

### 1.1.2 Workspace

- [x] **Restore .RData into workspace at startup**  
启动时将.RData还原到工作区  
  > 启动时将在初始工作目录中找到的.RData文件（如果存在）加载到R工作区（全局环境）。  
  > 如果您有一个非常大的.RData文件，那么取消选中此选项将大大缩短启动时间。

- **Save workspace to .RData on exit:** `Ask`  
退出时将工作区保存到.RData  
  > **Always**: 在退出时**始终**将工作区保存于.RData文件中  
  > **Never**: 在退出时**从不**保存工作区  
  > **Ask**: 在退出时**询问**是否保存工作区  
  > 
  > _请注意，如果在会话结束时工作区未进行任何更改，则即使指定了Ask，也不会出现保存提示。意外退出时，即使指定了Always也不能保存工作区变量。_

  ![保存工作空间](/RStudio设置选项/General/image/保存工作空间.png)

### 1.1.3 History

- [x] **Always save history (even when not saving .RData)**  
始终保存历史记录（即使不保存.RData）  
  > 确保.Rhistory文件始终与会话中的命令一起保存，即使退出时选择不保存.RData文件。  
  > 意外退出时，即使勾选也不能保存最新的历史命令。

  ![历史记录窗口](/RStudio设置选项/General/image/历史窗口.png)

- [x] **Remove duplicate entries in history**  
删除历史记录中的重复条目  
  > 如果命令与**最近**添加的命令完全相同，则取消将其添加到历史记录中。

  ![不记录重复命令](/RStudio设置选项/General/image/不记录重复命令.png)

### 1.1.4 Other

- [x] **Wrap around when navigating to previous/next tab**  
在选项卡切换时循环到首个选项卡  
  > ctrl+Tab快捷键可以在source的选项卡中切换窗口，启动此选项将允许从最后一个选项卡切换到第一个选项卡。

  ![标签循环](/RStudio设置选项/General/image/标签循环.png)

- [x] **Automatically notify me of updates to RStudio**  
当RStudio版本更新时自动提醒我  
  > 当检测到RStudio存在新版本时，将在用户打开RStudio新窗口时弹窗**提示**用户更新。

  ![更新提示](/RStudio设置选项/General/image/更新提示.png)

- [x] **Send automated crash reports to RStudio**  
向RStudio发送软件崩溃报告

## 1.2 Graphics

### 1.2.1 Graphics Device

- **Backend:** `(Default)`  
作图后端  
  > **Default**: 默认，grDevices？  
  > **Windows**: Windows系统图形渲染引擎  
  > **Cairo**: 用于图形绘图和渲染的免费库，支持复杂的 2D 的绘图功能，支持硬件加速  
  > **Cairo PNG**: Cairo PNG  
  > **AGG**: Anti-Grain Geometry（AGG）是一个高质量、高性能的二维图形库。"ragg"包提供了一组基于AGG的图形设备，作为通过“grDevices”包提供的光栅设备的替代品

  ![图片后端](/RStudio设置选项/General/image/图片后端.png)

- **Antialiasing:** `(Default)`  
抗锯齿  
  > **Default**: 默认  
  > **None**: 无  
  > **Gray**: 灰度平滑  
  > **subpixel**: 次像素平滑  
  > 
  > _请注意：该选项仅在backend选项为Cairo时有效，backend为AGG时自动开启抗锯齿。_

  ![抗锯齿](/RStudio设置选项/General/image/抗锯齿.png)

## 1.3 Advanced

### 1.3.1 Debugging

- [x] **Use debug error handler only when my code contains errors**  
仅当代码包含错误时使用调试错误处理程序  
  > 为了让调试器在错误发生的任意时间地点都能启动，Rstudio 会在你的代码不在栈堆的时候不启动调试模式。如果你发现它漏掉了你想捕捉的错误，请取消勾选此选项。

### 1.3.2 OS Integration

- **Rendering engine:** `Auto-detect (recommended)`  
界面渲染引擎  
  > **Auto-detect (recommended)**: 自动检测（推荐）  
  > **Desktop openGL**: OpenGL(Open Graphics Library)  
  > **Software**: 使用software

- [x] **Use GPU exclusion list (recommended)**  
使用GPU排除列表(推荐)  
  > 不使用某些GPU进行渲染。该选项仅在Rendering engine选项为Desktop openGL时有效。

- [x] **Use GPU driver bug workarounds (recommended)**  
使用GPU驱动bug解决方案(推荐)

- [x] **Show full path to project in window title**  
在窗口标题中显示项目的完整路径  
  > 若打开一个项目文件夹，勾选此选项将在RStudio窗口顶部标题中显示项目的完整路径，取消勾选则只显示项目文件夹的名称。  
  > 不在某个项目中时，此选项无效，RStudio窗口标题为**RStudio**。

  ![项目路径](/RStudio设置选项/General/image/显示R项目路径.png)

- [x] **Use native file and message dialog boxes**  
RStudio Desktop是否将使用操作系统的文件打开窗口和消息对话框  
  > 勾选此选项后，RStudio将使用操作系统的文件打开窗口和消息对话框，取消勾选则使用RStudio自带的文件打开窗口和消息对话框。

  ![文件窗口](/RStudio设置选项/General/image/文件打开窗口.png)

- [ ] **Disable Electron accessibility support**  
禁用Electron辅助功能支持  
  > RStudio IDE团队正在将RStudio Desktop IDE从一个编程工具包（QtWebEngine）迁移到另一个（Electron）。Electron用于创建许多流行的应用程序，如Visual Studio Code和Slack，并将为RStudio Desktop IDE提供更好的性能、可访问性和可维护性。
  >
  > **"Spotted Wakerobin" RStudio IDE发行版（2022年7月）包括基于Electron的RStudio IDE预览，面向希望测试新技术并提供反馈的用户。**
  >
  > 基于Electron的IDE将在未来的版本中完全取代QtWebEngine版本，但目前仍处于测试期，若发现RStudio某些功能异常可以尝试勾选次选项，查看错误是否消失。

### 1.3.3 Other

- [ ] **Show .Last.value in environment listing**  
在环境变量中显示.Last.value  
  > 在环境变量面板中显示用户执行的最后一个R表达式的返回值，该返回值存储在变量名为.Last.value的变量中。

  ![LastValue](/RStudio设置选项/General/image/最后表达式值.png)

- **Help panel font size:**`12`  
帮助面板字体大小  
  > RStudio面板右下角（默认位置）的Help窗口中的字体大小。

### 1.3.4 Experimental Features

- **User Interface Language:**`English`  
用户界面语言  
  > **English**: 英语  
  > **French(Francais)**: 法语

后续内容预告：

2. Code
3. Console
4. Appearance
5. Pane Layout
6. Packages
7. R Markdown
8. Python
9. Sweave
10. Spelling
11. Git/SVN
12. Publishing
13. Terminal
14. Accessibility

<br>  

:warning: **转载声明**：感谢您对文章内容的认可，转载后请在醒目位置标明来源，且禁止声明原创。  

---  
  
团队其他公众平台：  
  
**Bilibili** | [房子下面一头猪](https://space.bilibili.com/1521325260) 
  
**知乎** | [房子下面一头猪](https://www.zhihu.com/people/mang-guo-c-60-10)
  
**微信公众号** | 房子下面一头猪  
  
![公众号](/Platform_materials/公众号二维码_无白边.jpg)  
