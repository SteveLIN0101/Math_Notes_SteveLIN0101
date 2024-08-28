# Math_Notes_SteveLIN0101

此 GitHub 仓库用于存储我的数学 markdown 笔记。 This GitHub repository is used to store my math markdown notes.

主要配置 Main Configuration:
- [Obsidian](https://obsidian.md/)
- [Obsidian Latex Suite](https://github.com/artisticat1/obsidian-latex-suite)

参考 Reference:
- [PiKaChu345](https://space.bilibili.com/180947374?spm_id_from=333.1369.opus.module_author_name.click)

--- 

**注意 Note**：
GitHub 对多行数学公式的处理和 Obsidian 不同。 GitHub handles multi-line mathematical formulas differently from Obsidian.

详情请参考 [Use Markdown to display mathematical expressions on GitHub](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/writing-mathematical-expressions)。 Refer the above link for details.

因此对于每份 markdown 文件，我尽量提供 GitHub 和 Obsidian 两个版本。So for each markdown file, I try to provide both GitHub and Obsidian versions.

- GitHub 使用`$$`表述数学公式的时候，前后必须个空一行
- GitHub 使用多行公式以及添加 tag 必须满足以下格式，否则排版会出错。 GitHub's use of multi-line formulas and the addition of tags must meet the following format, otherwise the typesetting will be wrong.

```raw
  ```math
  \begin{equation} \tag{*}
  \begin{aligned}
  |s_{n} - 0| &= \left| \sum_{k=1}^n c_{k, n} a_{k} \right| \\ 
  &\leq \sum_{k=1}^{m-1} |c_{k, n}| \cdot |a_{k}| + \sum_{k=m}^{n} |c_{k, n}| \cdot |a_{k}| 
  \end{aligned}
  \end{equation}
  (```)
```
```math
  \begin{equation} \tag{*}
  \begin{aligned}
  |s_{n} - 0| &= \left| \sum_{k=1}^n c_{k, n} a_{k} \right| \\ 
  &\leq \sum_{k=1}^{m-1} |c_{k, n}| \cdot |a_{k}| + \sum_{k=m}^{n} |c_{k, n}| \cdot |a_{k}| 
  \end{aligned}
  \end{equation}
```

- 以上数学式子在 Obsidian 的格式如下。The above mathematical formula has the following format in Obsidian.
```obsidian
$$\begin{equation} \tag{*}
  \begin{aligned}
  |s_{n} - 0| &= \left| \sum_{k=1}^n c_{k, n} a_{k} \right| \\ 
  &\leq \sum_{k=1}^{m-1} |c_{k, n}| \cdot |a_{k}| + \sum_{k=m}^{n} |c_{k, n}| \cdot |a_{k}| 
  \end{aligned}
  \end{equation} $$
```

