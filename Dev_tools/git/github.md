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
