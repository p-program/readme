# P=NP

## clone

```bash
    brew install hugo
    git clone git@github.com:p-program/readme.git
    git clone git@github.com:p-program/p-program.github.io.git
 ```

## new post

```bash
    post='Chrome-Is-Dead';hugo new content/post/$post.md
    # edit latest *md file in the post directory
```

## architecture

hugo

### themes

[axiom](https://github.com/marketempower/axiom)

```bash
cd themes/axiom
git pull origin master
npm install
npm run prd
```

## 在 Markdown 中这样使用 Shortcode

```markdown
{{< img src="/images/avatar.jpg" imgmode="rounded" >}}

{{< img src="/images/avatar.jpg" imgmode="border" >}}

{{< img src="/images/avatar.jpg" imgmode="grayscale" >}}

{{< img src="/images/avatar.jpg" >}}  <!-- 使用默认模式 -->
```
