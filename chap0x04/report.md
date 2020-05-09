### 实验环境准备

+ 系统：ubuntu 18.04
+ 虚拟机：`virtubox`
+ 在ubuntu上配置git并用`ssh`连接到`github`

+ 安装`ImageMagick`工具:`sudo apt install imagemagick` 
+ 安装解压7z的工具:`sudo apt install p7zip-full`

### 实验要求

- 所有源代码文件必须单独提交并提供详细的脚本内置帮助信息
- 任务二的所有统计数据结果要求写入独立实验报告

### 补充知识

+ `convert`工具相关知识

  ```shell
  # jpeg 图像质量压缩
  convert filename -quality  number filename2
  
  # jpeg/png/svg 图像保持宽高比，压缩分辨率
  convert filename1 -resize number filename2
  
  # 添加水印
  convert filename1 -pointsize 50 -fill yellow -gravity center -draw "text 10,10 'watermark' " filename2
  
  #转换图片格式为jpg
  convert xxx.png xxx.jpg
  ```

+ `identify`工具相关知识

  ```shell
  # image file format 
  identify -format "%m" filename
  
  # directory component of path
  identify -format "%d" filename
  
  # filename extension or suffix
  identify -format "%e" filename
  
  # filename (including suffix)
  identify -format "%f" filename
  ```

+ 文本处理工具`awk`相关知识

  ```shell
  awk -F "\t"  #-F相当于内置变量FS, 指定分割字符
  
  awk 'BEGIN{这里面放的是执行前的语句} 
   NF > 1{这里面放的是处理每一行时要执行的语句} 
   END{这里面放的是处理完所有的行后要执行的语句}'
  # NF指一条记录的字段的数目 这里表示从第二行处理数据
  ```

### 任务及完成情况

任务一：用bash编写一个图片批处理脚本，实现以下功能：

- [x] 支持命令行参数方式使用不同功能
- [x] 支持对指定目录下所有支持格式的图片文件进行批处理
- [x] 支持以下常见图片批处理功能的单独使用或组合使用
  - [x] 支持对jpeg格式图片进行图片质量压缩
  - [x] 支持对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率
  - [x] 支持对图片批量添加自定义文本水印
  - [x] 支持批量重命名（统一添加文件名前缀或后缀，不影响原始文件扩展名）
  - [x] 支持将png/svg图片统一转换为jpg格式图片

- 任务二：用bash编写一个文本批处理脚本，对以下附件分别进行批量处理完成相应的数据统计任务：
  - 2014世界杯运动员数据
    - [x] 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员**数量**、**百分比**
    - [x] 统计不同场上位置的球员**数量**、**百分比**
    - [x] 名字最长的球员是谁？名字最短的球员是谁？
    - [x] 年龄最大的球员是谁？年龄最小的球员是谁？

- 任务三：用bash编写一个文本批处理脚本，对以下附件分别进行批量处理完成相应的数据统计任务：
  - Web服务器访问日志
    - [x] 统计访问来源主机TOP 100和分别对应出现的总次数
    - [x] 统计访问来源主机TOP 100 IP和分别对应出现的总次数
    - [x] 统计最频繁被访问的URL TOP 100
    - [x] 统计不同响应状态码的出现次数和对应百分比
    - [x] 分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数
    - [x] 给定URL输出TOP 100访问来源主机

### 参考文献

+ [awk官方网站](https://www.runoob.com/linux/linux-comm-awk.html )
+ [travis-ci集成github项目]( https://www.cnblogs.com/morang/p/7228488.html )
+  [imagemagick官方网站](http://www.imagemagick.org/script/command-line-tools.php )

+  [linux-connecting-to-github-with-ssh]( https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh  )

+  [https://github.com/CUCCS/linux-2019-jckling](https://github.com/CUCCS/linux-2019-jckling/blob/0x04/0x04/实验报告.md) 