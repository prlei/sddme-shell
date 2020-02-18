
- [GIT](#git)
  - [Git全局设置](#git全局设置)
  - [撤销修改](#撤销修改)
  - [恢复版本](#恢复版本)
  - [git 远程](#git-远程)

##  GIT

 ### Git全局设置

```
git config --global user.name "zhangsan"
git config --global user.email "zhangsan@gu360.com"
```

- 创建新的存储库

```
git clone [git@gitlab.xxx.com:6666]:zhangsan/docs.git
cd docs
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
```

- 现有文件夹或Git存储库

```
cd existing_folder
git init
// 这个命令不知道为什么zsh不让用，要切换bash执行
git remote add origin [git@gitlab.xxx.com:2222]:zhangsan/docs.git
git add .
git commit
git push -u origin master
```

### 撤销修改

通过 `git checkout -- 文件名(或目录名)` 命令可以撤销文件在**工作区**的修改。   

 通过 `git reset` 、`git reset --hard HEAD`命令可以撤销之前的所有 `git add` 操作，即在**暂存区**(stage area)中未提交的file回滚到之前的commit状态的修改。

`git clean -d -f` 删除未跟踪的目录和文件

### 恢复版本

`git reset --hard 4380fc6` 

---

### git 远程

``` 
// 查看远程地址
git remote -v

// 取消远程版本库关联
git remote remove origin

// 关联远程版本库
git remote add origin git@github.com:git_username/repository_name.git
```

