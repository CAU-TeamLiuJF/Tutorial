
- [5. Pane Layout](#5-pane-layout )
  - [5.1 各面板及选项卡介绍](#51-各面板及选项卡介绍 )
    - [5.1.1 Source](#511-source )
    - [5.1.2 Console](#512-console )
    - [5.1.3 Environment Pane](#513-environment-pane )
      - [5.1.3.1 Environment](#5131-environment )
      - [5.1.3.2 History](#5132-history )
      - [5.1.3.3 Connections](#5133-connections )
      - [5.1.3.4 Build](#5134-build )
      - [5.1.3.5 VCS](#5135-vcs )
    - [5.1.4 Output Pane](#514-output-pane )
      - [5.1.4.1 Files](#5141-files )
      - [5.1.4.2 Plots](#5142-plots )
      - [5.1.4.3 Packages](#5143-packages )
      - [5.1.4.4 Help](#5144-help )
      - [5.1.4.5 Tutorial](#5145-tutorial )
      - [5.1.4.6 Viewer](#5146-viewer )
      - [5.1.4.7 Presentations](#5147-presentations )
  - [5.2 窗口布局](#52-窗口布局 )  

:warning: RStudio版本: **RStudio 2023.06.2 Build 561**

# 5. Pane Layout

在RStudio中，窗格布局是指RStudio界面中各种面板或窗口的排列和布局。

![四大面板](/RStudio设置选项/PaneLayout/image/四大面板.png)

目前版本（**2023.06.2**）的RStudio可供选择展示的窗口一共有**14**个。窗格可以分为以下四类：

- **Source**窗格
- **Console**窗格
- **Environment**窗格：包含“**Environment**”、“**History**”、“**Connections**”、“**Build**”、“**VCS**”和“**Tutorial**”选项卡
- **Output**窗格：包含“**Files**”、“**Plots**”、“**Packages**”、“**Help**”、“**Viewer**”和“**Presentation**”选项卡

## 5.1 各面板及选项卡介绍

### 5.1.1 Source

**源代码**选项卡，默认情况下位于**左上角**。允许用户**查看**和**编辑**各种**代码相关文件**，例如 .R、.rmd、.qmd、.py、.css或常规**文本文件**，如 .txt 或 .md。默认情况位于界面的**左上角**，可以通过打开RStudio中的任何**可编辑文件**来启动。打开的每个额外的文件都将作为新**选项卡**添加到“**Source**”窗格中。

可以在四个**主窗格**的**左侧**添加其他**Source列**，提供了在**Source**窗格中一次处理两个（或多个）文件的功能。

单个源文件也可以在**独立窗口**中打开，而不仅仅是在**Source**窗格中打开。除了使用按钮，将选项卡从**Source**窗格中拖到桌面上将创建一个新的**Source**窗口。Source窗口允许你在RStudio**主窗口**之外编辑文件。这对于在**多个显示器**之间拆分工作或需要为编辑器提供**更多空间**时很有用。

![Source](/RStudio设置选项/PaneLayout/image/Source.png)

### 5.1.2 Console

**控制台**选项卡，默认情况下位于**左下角**。控制台面板提供了一个**交互式执行**代码的区域。默认情况下，它与**R**相关联，但通过使用**reticulate**包，它也可以提供**Python**控制台。

控制台面板还包括一个集成的“**Terminal**”选项卡，用于执行**系统命令**、添加或删除附加的集成终端，以及控制当前选定终端的一般操作。

“**Background Jobs**”选项卡提供了将**长时间运行**的R脚本发送到**本地**和**远程**后台作业的功能。这个功能可以让你在RStudio中继续工作，而作业在后台运行。

![Console](/RStudio设置选项/PaneLayout/image/Console.png)

### 5.1.3 Environment Pane

环境窗口，默认情况下，“**Environment**”窗格位于**右上角**，包括**Environment**, **History**, **Connections**, **Build**, 和**Version Control System** (**VCS**)选项卡。

#### 5.1.3.1 Environment

**环境**选项卡，用于**查看**当前环境中的**变量**和对象（R或Python），包括**函数**、**数据框**、**矩阵**、**数组**、**列表**等。此外，菜单栏中提供了加载或保存R**工作空间**、交互式导入**文本文件**、Excel或SPSS/SAS/Stata**数据集**的选项。它还显示了当前活动的R会话所使用的**内存**，并提供了一个**扫帚**图标，用于**删除**当前环境中的**所有对象**。

![enviornment](/RStudio设置选项/PaneLayout/image/enviornment.png)

#### 5.1.3.2 History

**历史记录**选项卡，显示了当前会话中执行的命令，还可以进行**搜索**。还可将命令历史记录**加载**/**保存**到文件中，以及将**所选命令**发送到**控制台**或插入到当前**工作文档**中。还有一个**删除**按钮，用于删除所选的历史记录，或者一个**扫帚**按钮，可以删除当前会话中的所有历史记录。

![history](/RStudio设置选项/PaneLayout/image/history.png)

#### 5.1.3.3 Connections

**连接**选项卡，显示了与**本地**或**远程数据库**的连接，或其他**数据源**的连接。可以通过安装数据库**驱动程序**或特定的**R包**来添加其他可能的连接。可以**交互式**地点击可用的连接，它将提供通用的R代码，用于在该数据源上**注册**一个活动连接。一旦连接创建成功，您就可以浏览该连接中可用的**表格**或**数据**。

![Connections](/RStudio设置选项/PaneLayout/image/Connections.png)

#### 5.1.3.4 Build

**生成**选项卡，在**特定**的**R项目**中可用，例如**R包**或Quarto/R Markdown**网站**/**书籍**。根据R项目的类型，生成窗格将提供构建R包或呈现网站的选项。

![Build](/RStudio设置选项/PaneLayout/image/Build.png)

#### 5.1.3.5 VCS

**版本控制系统**选项卡，将根据您为该会话启用的**版本控制系统**进行更改。例如，使用**Git会将**选项卡名称更改为Git，并提供以下命令：
查看**差异**、**提交**所选文件、执行“**拉取**”或“**推送**”命令、查看版本控制**历史记录**、将所选文件添加到**.gitignore**、创建或选择特定**分支**。

![Git](/RStudio设置选项/PaneLayout/image/Git.png)

### 5.1.4 Output Pane

**输出**窗格，默认情况下位于**右下角**，显示各种输出，如**绘图**、**HTML内容**或**磁盘文件**。它包含**Files**, **Plots**, **R Packages**, **Help**, **Tutorial**, **Viewer**和**Presentation**选项卡。

#### 5.1.4.1 Files

**文件**选项卡，提供对当前R项目以及整个**目录**的**交互式探索**。有用于添加**新文件夹**、**新空白文件**、**删除**/**重命名**文件的菜单栏选项，以及用于其他功能的**齿轮**按钮。

![Files](/RStudio设置选项/PaneLayout/image/Files.png)

#### 5.1.4.2 Plots

**画图**选项卡，显示代码生成的**静态图像**，直到会话重新启动为止。有用于在已显示的**较旧**和**较新**绘图之间导航的**前后箭头**、**缩放**功能、用于保存显示输出的**导出**按钮、用于删除当前显示图像的**删除**按钮，以及用于**清除**此选项卡中所有**临时绘图**的扫帚图标

![plots](/RStudio设置选项/PaneLayout/image/plots.png)

#### 5.1.4.3 Packages

**R包**选项卡，允许查看**当前安装**的R软件包，并具有用于搜索当前软件包库的**搜索栏**。有一个**安装**和**更新**按钮，用于安装新程序包或更新现有的选定程序包。

![Packages](/RStudio设置选项/PaneLayout/image/Packages.png)

#### 5.1.4.4 Help

**帮助**选项卡，用于显示**R包文档**和**示例文档**。在查看其他帮助页面时，有用于**前进**和**后退**导航的箭头。主页图标将返回到**通用帮助**页面，该页面包含到**Resources**、**Manuals**、**References**和**Posit Support**的链接。另外，可以选中帮助页面中的代码然后通过`Ctrl+Enter`**快捷键**将命令复制到控制台并**执行**。

![Help](/RStudio设置选项/PaneLayout/image/Help.png)

#### 5.1.4.5 Tutorial

**教程**选项卡，用于加载**交互式教程**。这些教程提供了一个**交互式环境**，可以逐步完成R包作者或教育工作者编写的**课程**。

![Tutorial](/RStudio设置选项/PaneLayout/image/Tutorial.png)

#### 5.1.4.6 Viewer

**视图**选项卡，用于显示**web内容**，如**Shiny**应用程序、**Quarto**生成的**网页**或交互式图形

![Viewer](/RStudio设置选项/PaneLayout/image/Viewer.png)

#### 5.1.4.7 Presentations

**演示**选项卡，用于显示通过**Quarto**格式生成的HTML**幻灯片**（revealjs）

![Presentation](/RStudio设置选项/PaneLayout/image/Presentation.png)

## 5.2 窗口布局

- 默认布局

![四大面板](/RStudio设置选项/PaneLayout/image/四大面板.png)

- Console在右，Environment在下

![PaneLayout1](/RStudio设置选项/PaneLayout/image/PaneLayout1.png)

- 三个面板，Source在左，Console在右上，其他所有在右下

![PaneLayout2](/RStudio设置选项/PaneLayout/image/PaneLayout2.png)

- 两个Source面板，右半边和默认布局一致

![PaneLayout3](/RStudio设置选项/PaneLayout/image/PaneLayout3.png)

- Source在左，Environment在中间，右上角为Console，右下角为Output

![PaneLayout4](/RStudio设置选项/PaneLayout/image/PaneLayout4.png)
