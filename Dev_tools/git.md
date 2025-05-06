运行`git clone`报错：
```bash
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
```
可以采用SSH方式进行clone。首先需要在本地创建SSH公钥
```bash
(base) PS E:\> cd ~/.ssh
(base) PS C:\Users\Tommy Ge\.ssh> ssh-keygen
```
查看公钥
```bash
(base) PS C:\Users\Tommy Ge\.ssh> cat .\id_rsa.pub.pub
```
复制公钥，添加到github账号中即可。

## 基本命令
```bash
git init #初始化本地git仓库
git add . #把新文件和改变的文件添加到暂存区
git status #查看当前git状态
```
status显示当前所在分支，changes not staged, changes to be commited，untracked files
```bash
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   a.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        b.txt
```
```bash
git commit -m "提交信息" #提交到仓库
git log #查看提交情况
```
```bash
$ git commit -m "add file"
[master d6d8b1b] add file
 1 file changed, 1 insertion(+)
 create mode 100644 b.txt

$ git status
On branch master
nothing to commit, working tree clean

$ git log
commit d6d8b1bb01c1e1a1f944d6050fca72f0b5b87382 (HEAD -> master)
Author: PiesAvalon <tommy.ge@qq.com>
Date:   Tue May 6 19:10:30 2025 +0800

    add file

commit 0024125ee708a7f2b61a8b2d08080099cca8b0f5
Author: PiesAvalon <tommy.ge@qq.com>
Date:   Tue May 6 19:10:01 2025 +0800

    add file commit
```
修改git命令的别名，或给git命令添加别名
```bash
git config --global alias.glog "log --pretty=oneline --all --graph --abbrev-commit" #给这一长串指令以git glog的别名
git glog
```
在`~/.gitconfig`下添加这一行有相同的功效
```bash
[alias]
    glog = log --pretty=oneline --all --graph --abbrev-commit
```
### 版本回退
```bash
git reset --hard 00241 #00241是commit id的前五位，通过git log获取
```
注意：git reset会永久删除没有提交的更改  
此时运行git log，发现只有00241这次之前的提交了，如果要查看之后的提交，要使用git reflog
```bash
$ git log
commit 0024125ee708a7f2b61a8b2d08080099cca8b0f5 (HEAD -> master)
Author: PiesAvalon <tommy.ge@qq.com>
Date:   Tue May 6 19:10:01 2025 +0800

$ git reflog
0024125 (HEAD -> master) HEAD@{0}: reset: moving to 00241
46eb656 HEAD@{1}: reset: moving to 46eb6
46eb656 HEAD@{2}: commit: change file
d6d8b1b HEAD@{3}: commit: add file
0024125 (HEAD -> master) HEAD@{4}: commit (initial): add file commit

```
一个常用的场景是舍弃当前未提交的更改，回到最近一次提交
```bash
git reset --hard HEAD
```
### gitignore
可以控制哪些文件不被git管理
```bash
#.gitignore
*.cpp #所有cpp文件都不由git管理
```
### 分支
```bash
git branch #查看分支
git branch dev01 #创建分支
git checkout dev01 #切换分支
git checkout -b dev02 #创建并切换分支
```
在某一个分支上commit只会改变当前分支，在下面这个例子中dev01分支比master多一次提交
```bash
$ git glog
* d68fc94 (HEAD -> dev01) test commit
* 0024125 (master, dev02) add file commit
```
分支的合并，把一个分支上的修改合并到另一个分支上，一般是合并到master上
```bash
git checkout master
git merge dev #把dev上的修改合并到master上
git branch -d dev #删除dev分支
```
冲突的处理：如果两个分支都对某个文件做了修改，则merge的时候会报错，此时需要进入到冲突的文件中，手动处理冲突，然后再add、commit完成冲突的处理
```bash
$ git merge dev
Auto-merging a.txt
CONFLICT (content): Merge conflict in a.txt
Automatic merge failed; fix conflicts and then commit the result.

vim a.txt

git add .
git commit -m "commit message"
```
删除分支
```bash
git branch -d dev #删除分支
git branch -D dev #强制删除
```
### 合并的快进模式
在将dev向main上merge的时候，如果dev和main都有修改，结果的graph会是丫形状的，如果只有dev上有修改，结果的graph是|形状的，这称为快进模式。
### 远程仓库
关联远程仓库
```bash
git remote add origin git@example.com/aa #关联远程仓库
git remote 
origin #关联成功
```
push
```bash
git push <远程仓库名> <本地分支名>:<远程分支名>
```
如果本地分支名和远程分支名相同（大多数情况下应该是相同的），可以用简单写法
```bash
git push origin master
```
使用vv查看本地分支和远端分支的对应关系
```bash
PS E:\csNotes> git branch -vv
* main 9d394d0 [origin/main] cmake notes
```
使用set-upstream设置远程和本地分支的对应关系（第一次push的时候）
```bash
git push --set-upstream <远程仓库名> <本地分支名>:<远程分支名>
```
后续使用git push即可
### clone
```bash
git clone git@example <本地文件夹名>
```
### 抓取（fetch）和拉取（pull）
fetch会把远端的所有分支下载到本地，但不会进行merge操作改变本地分支情况
```bash
git fetch
```
pull不会下载全部分支，而只下载与当前分支关联的远端分支，然后把下载下的分支merge到当前分支中
```bash
git pull
```
pull不仅仅是fetch和merge，二者下载的范围也不同
### 先pull再push
多人协作过程中，提交代码应该先pull再push，因为如果直接push，而该远程分支已被修改，就会发生冲突，应该先pull，在本地处理完冲突，再push
```bash
git pull
#处理冲突
git push
```