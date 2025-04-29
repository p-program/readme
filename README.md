# p-program

## clone
    brew install hugo
    git clone git@github.com:p-program/readme.git
    git clone git@github.com:p-program/p-program.github.io.git
    

## new post

    post=OAM
    hugo new content/post/$post.md
    # edit latest *md file in the post directory
    
## architecture

### themes/axiom

[axiom](https://github.com/marketempower/axiom)

```bash
cd themes/axiom
git pull origin master
npm install
npm run prd
```
