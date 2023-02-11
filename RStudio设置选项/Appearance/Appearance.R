
## 字体
# Fira 是 Mozilla 主推的字体系列，Fira Code 是基于 Fira Mono
# 等宽字体的一个扩展，主要特点是加入了编程连字特性（ligatures）

df <- data.frame(logi1 = c(1, 3, 5, 13, 21) >= 10,
                 logi2 = c(1, 3, 5, 13, 21) != 13,
                 logi3 = c(1, 3, 3, 13, 21) |> duplicated())
chars <- ">= |> !="
hist(rnorm(200), main = ">= |> !=")

## 编辑器主题
# install.packages("devtools")                    # 若未安装请先安装devtools
rstudioapi::getThemeInfo()                        # 查看当前主题基本信息
rstudioapi::applyTheme("One Dark {rsthemes}")     # 通过代码激活主题

# rsthemes主题管理包
devtools::install_github("gadenbuie/rsthemes")
library(rsthemes)
install_rsthemes(include_base16 = TRUE)                # 安装主题
list_rsthemes()                                        # 列出所有已安装主题
try_rsthemes()                                         # 依次展示所有已安装主题
try_rsthemes("light")                                  # 只展示light, dark, 或 base16主题
set_theme_light()                                      # 将当前主题设置为默认明亮主题
set_theme_dark()                                       # 将当前主题设置为默认暗色主题
set_theme_light("One Light {rsthemes}")                # 将特定主题设置为默认明亮主题
set_theme_dark("One Dark {rsthemes}")                  # 将特定主题设置为默认暗色主题
set_theme_favorite()                                   # 将当前主题添加到收藏夹列表
set_theme_favorite(c("GitHub {rsthemes}",
                               "One Light {rsthemes}",
                               "One Dark {rsthemes}")) # 将主题列表添加到收藏夹
devtools::install_github("hrbrmstr/ipapi")
install.packages("suncalc")                            # 随时间自动切换亮或暗模式需要下载包

## 创建主题
### vscode主题
rstheme(theme_name = "vscode",             ## 主题名字
        ui_background = "#1e1e1e",         ## 面板主题色
        ui_foreground = "white",           ## 面板前景色
        ui_rstudio_background = "#323233", ## 系统主题色
        ui_rstudio_foreground =  "white",  ## 系统前景色
        code_string = "#ce8349",           ## 字符串颜色
        code_function = "#dcdcaa",         ## 函数颜色
        code_value = "#b5cea8",            ## 数值颜色
        code_variable = "white",           ## 变量颜色
        code_message = "yellow",           ## 信息颜色
        rstheme_rainbow_parentheses(),     ## 设置彩虹括号颜色的函数
        theme_dark = TRUE,                 ## 深色
        theme_flat = TRUE,                 ## 扁平化
        theme_apply = TRUE,                ## 主题直接应用
        ui_rstudio_tabs_active_background = "#1e1e1e",  ## 当前选项卡的主题色
        ui_rstudio_tabs_active_foreground = "white",    ## 当前选项卡的前景色
        ui_rstudio_toolbar_background = "#1e1e1e",      ## 工具栏主题色
        ui_rstudio_toolbar_foreground = "white",        ## 工具栏前景色
        ui_rstudio_scrollbar_handle = "#3c3c3d",        ## 滚动条柄颜色
        ui_cursor = "#868686",             ## 光标颜色
        ui_line_active = "#2a2a1d",        ## 当前代码行颜色
        ui_selection = "#264f78",          ## 选中代码时的颜色
        ui_bracket = "transparentize($ui_cursor, 0.5)", ## 括号另一半提示颜色
        ui_completions_border = "$ui_bracket", ## 边框颜色
        code_comment = "#6a9955",          ## 注释字体颜色
        code_namespace =  "white",         ## 命名空间字体颜色
        code_identifier = "#9cdcfe",       ## 标识符字体颜色
        code_reserved = "white"            ## 控制台颜色
)

### 彩虹括号（vscode）
((((((()))))))
[[[[[[[]]]]]]]
{{{{{{{}}}}}}}
rstheme_rainbow_parentheses <- function(
    ui_paren_0 = "#ffd70b",
    ui_paren_1 = "#da70d6",
    ui_paren_2 = "#179fff",
    ui_paren_3 = "#ffd70b",
    ui_paren_4 = "#da70d6",
    ui_paren_5 = "#179fff",
    ui_paren_6 = "#ffd70b"
) {
  structure(list(
    "ui_paren_0" = ui_paren_0,
    "ui_paren_1" = ui_paren_1,
    "ui_paren_2" = ui_paren_2,
    "ui_paren_3" = ui_paren_3,
    "ui_paren_4" = ui_paren_4,
    "ui_paren_5" = ui_paren_5,
    "ui_paren_6" = ui_paren_6
  ), class = c("_rainbow-parens", "rstheme_template", "list"))
}
