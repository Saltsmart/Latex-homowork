# 自己做一个Latex模板：114514篇论文的明智选择
很多论文投稿的地方都提供了Latex模板，大家只要套用得当就没有问题了。而平时写一些小论文和作业的时候，提前准备一个模板，相比Word在保证格式上也能少操心不少

支持中文，页面细节都放在Style\style.tex当中
![style.tex](/assets/1.png)

有一个简单的封面：
![title page](/assets/2.png)

这个模板中还有这些文件：
```
Latex Homowork:
│  main.tex //正文的内容写在/begin{document}和/end{document}之间
│  
├─Code //这个目录放代码和一些辅助文本
│      1.m
│      
├─Content
│      gallery.tex //这里存了一些算法框图之类的，需要的时候可以放到正文里
│      logo.jpg //封面上面那个Logo
│      titlepage.tex //封面的内容
│      
├─Figure //这个目录放图
│      1.png
│      
├─Ref //这个目录放bibtex格式的参考文献
│      Collection.bib
│      
└─Style
        mathsetting.tex //一些数学符号，特别是粗体的简写
        simfang.ttf //四个文件分别是Windows系统的仿宋、黑体、楷体和宋体
        simhei.ttf
        simkai.ttf
        simsun.ttc
        style.tex //格式设定
```