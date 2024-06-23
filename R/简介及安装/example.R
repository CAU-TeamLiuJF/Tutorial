
########### 管道 ###########
library(dplyr)
chr_pos <- data.frame(chr = rep(1:4, each = 10),
                    pos =runif(40, 0, 100))

# 中间变量
chr_pos_g <- group_by(chr_pos, chr)
summarise(chr_pos_g, num = length(pos), mean = mean(pos))

# 管道传递
group_by(chr_pos, chr) %>% summarise(num = length(pos), mean = mean(pos))
group_by(chr_pos, chr) |> summarise(num = length(pos), mean = mean(pos))

group_by(chr_pos, chr) %>% summarise
# group_by(chr_pos, chr) |> summarise

########### 代码换行 ###########
data.frame(chr = rep(1:4, each = 10), pos =runif(40, 0, 100)) %>% group_by(chr) %>% summarise(num = length(pos), mean = mean(pos))


########### 注释 ###########
# 连续注释
## 连续注释
##


## 双变量正态抽样，相关大小
library(data.table)
library(MASS)

mvr <- function(num, r=0.2, rep=100) {
    corm <- matrix(c(1,r,r,1), 2, 2)
    mu <- c(0, 0)
    summ <- c()
    for (i in 1:rep) {
        samples <- mvrnorm(num, mu, corm)
        summ <- c(summ, cor(samples)[1,2])
    }
    summary(summ)
}

a <- sample <- mvr(150, 0.2, 10)
a <- sample <- mvr(150, 0.2, 10)
a <- sample <- mvr(150, 0.4, 10)
a <- sample <- mvr(150, 0.2, 10)
a <- sample <- mvr(150, 0.2, 10)

## 作图演示
library(data.table)
library("CMplot")


## CMplot包里的示例数据
data(pig60K)
data(cattle50K)


CMplot(pig60K, plot.type="d", bin.size=1e6,
       col=c("darkgreen", "yellow", "red"),
       memo="" ,dpi=300, verbose=TRUE)

hist(cattle50K$`Milk yield`)
hist(cattle50K$`Fat percentage`)

## 作图后端
# AGG
library(ragg)
library(ggplot2)

file <- knitr::fig_path('.png')

on_linux <- tolower(Sys.info()[['sysname']]) == 'linux'
fancy_font <- if (on_linux) 'URW Chancery L' else 'Papyrus'

agg_png(file, width = 1000, height = 500, res = 144)
ggplot(mtcars) + 
  geom_point(aes(mpg, disp, colour = hp)) + 
  labs(title = 'System fonts — Oh My! ????') + 
  theme(text = element_text(family = fancy_font))

invisible(dev.off())

knitr::include_graphics(file)

