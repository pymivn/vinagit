---
layout: post
title:  "Introduction to Git"
date:   2017-04-22 00:11:34 +0700
categories: git
tags: git
---

## Hướng dẫn cơ bản về git cho người mới bắt đầu

---

### __Git là gì? Tại sao lại sử dụng git?__


- Thứ nhất, Git là 1 hệ thống quản lí phiên bản phân tán (DVCS - Distributed Version Control System) ??? Nhưng hiểu thế nào là 1 hệ thống quản lí phiên bản, rồi lại phân tán gì ở đây? Để đơn giản có thể hiểu DVCS là hệ thống lưu trữ các tập tin ( file, thư mục, ...) theo thời gian, tương ứng với nhiều phiên bản khác nhau của các tập tin đó, và bạn hoàn toàn có thể quay lại 1 phiên bản xác định nào đó sau này, xem lại các thay đổi thực hiện theo thời gian hay làm việc trên nhiều `nhánh` khác nhau của 1 dự án ! Nghe thật kì diệu phải ko?

- Vậy tại sao lại sử dụng git? Có lẽ mình sẽ lấy 1 ví dụ cho các bạn dễ hình dung

>    Vào 1 ngày đẹp trời, 2 anh A và B cùng bắt tay vào thực hiện 1 dự án (xây dựng 1 website eCommerce cho khách hàng chẳng hạn). Tất nhiên, khối lượng công việc khá nhiều nên 2 người chia nhau làm các chức năng hay feature cho dự án đó. Bạn cứ thử tưởng tượng mà xem, anh A viết code rồi gửi cho anh B, anh B viết code rồi gửi cho anh A, vậy bạn nghĩ họ sẽ làm thế nào để có thể `có được` code của nhau để tiếp tục phát triển dự án. Có thể họ sẽ gửi file qua email hay lên paste code lên đâu đó rồi share link cho nhau ?? Lúc đó nảy sinh 1 vấn đề, giả sử anh A vô tình viết sai code dẫn đến phần mềm bị lỗi, gỡ lỗi mãi chưa được hoặc chỉ đơn giản là quay lại đoạn code trước mà anh ta thấy tối ưu hơn chẳng hạn thì giờ làm thế nào? Chắc chắn là không được và cứ thế, 2 người lại tiếp tục xây dựng lại tính năng đó và tiếp tục gửi code cho nhau như vậy !


- Có lẽ đọc mẩu chuyện ngắn bên trên, bạn cũng sẽ hiểu được 1 số vấn đề mà 2 anh A và B gặp phải:

      - Việc gửi code qua email hay share link code cho nhau rất rất tốn thời gian.

      - Không theo dõi được tiến độ của dự án hoặc những thay đổi của người trong 1 nhóm vào sản phẩm.

      - Code ko được sao lưu và cập nhật thường xuyên khiến cho việc quay lại các phiên làm việc trước đó hết sức khó khăn

- Và đó chính là các vấn đề mà git có thể giải quyết 1 cách đơn giản chỉ bằng 1 vài dòng lệnh !

---

### __Tiến hành cài đặt git__

__1. Trên Linux:__

- Ubuntu: `sudo apt-get install git`

__2. Trên Window:__

- Trên window thì việc cài đặt sẽ khó khăn hơn 1 chút, để đơn giản. bạn truy cập  vào đường dẫn: [https://www.git-scm.com/downloads](https://www.git-scm.com/downloads) và tại về bản git dành cho window bao gồm cả giao diện đồ họa GUI và terminal.

---

### __1 số thao tác cơ bản khi sử dụng Git - Github__

- Nếu bạn dùng window thì có thể xem tài liệu hướng dẫn sử dụng git với Window

- Việc đầu tiên cần làm sau khi cài đặt git đó là thiết lập các thông số cấu hình ban đầu của git trên máy, bao gồm `username` và `email` của bạn. Trên terminal các bạn gõ lần lượt từng lệnh:

```
git config --global user.name "Your name"
git config --global user.email "youremail@gmail.com"
```

###### __1. Các thao tác cơ bản:__

- Tiếp sau đó, bạn cần tạo `repository`hay `thư mục chứa code`, nơi sẽ lưu giữ toàn bộ mã nguồn của bạn. Trên terminal, bạn tạo ra 1 thư mục trên máy là truy cập vào thư mục đó:

```
mkdir test_repo  # lệnh tạo thư mục
cd test_repo  # truy cập vào thư mục test_repo
```

- Trong thư mục `test_repo`, bạn thực hiện lệnh:

```
git init
```

Lệnh này sẽ khởi tạo 1 thư mục `.git`bên trong thư mục làm việc cuả bạn, là nơi chứa các thiết lập về git cũng như thông tin về kho chứa. Bạn có thể thấy 1 thông báo rằng đã khởi tạo 1 kho chứa thành công

```
(venv) ╭─phanhoang@phanhoang-PC ~/workspace
╰─➤  mkdir test_repo
(venv) ╭─phanhoang@phanhoang-PC ~/workspace
╰─➤  cd test_repo
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo
╰─➤  git init
Initialized empty Git repository in /home/phanhoang/workspace/test_repo/.git/
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master›
╰─➤  ls -a
.  ..  .git
```

- Giờ bạn sẽ tạo mới 1 file ( hoặc thư mục ) tùy ý và thực hiện lệnh `git status`

```
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master›
╰─➤  touch README.md
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master*›
╰─➤  git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        README.md

nothing added to commit but untracked files present (use "git add" to track)
```

- Như bạn có thể thấy, sau khi bạn tạo mới 1 file trên thư mục làm việc sẽ có 1 thông báo xuất ra màn hình báo `file chưa được theo dõi`( dòng README.md sẽ hiện màu đỏ ), giả sử bạn xóa file này đi thì git cũng không quan tâm. Hiểu đơn giản, git quản lí tập tin nên nếu bạn thay đổi hay tạo mới bất cứ 1 file ( hay thư mục ) mà chưa thông báo cho git thì mọi thay đổi trên file ( thư mục ) đó git sẽ chưa thể quản lí ( theo dõi ) được. Để cập nhật file ( thư mục ) đã được thay đổi, trên terminal các bạn thực  hiện lệnh `git add tên_file` , rồi `git status`:

```
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master*›
╰─➤  git add README.md
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master*›
╰─➤  git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   README.md
```

- Bạn có để ý thấy điều gì ko? Git báo file đã được cập nhật và có 1 file mới `README.md`  màu xanh.  Tuy nhiên, khi thực hiện `git add tên_file`ta mới thông báo cho git là file đã đc cập nhật nhưng chưa hề được đánh dấu version ( hay các phiên làm việc ). Để làm được điều đó, ta thực hiện lệnh `git commit -m "tên lời nhắn"`:

```
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master*›
╰─➤  git commit -m 'add README.md'
[master (root-commit) 43e1e93] add README.md
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
(venv) ╭─phanhoang@phanhoang-PC ~/workspace/test_repo  ‹master›
╰─➤  git status
On branch master
nothing to commit, working directory clean
```

- `Tên lời nhắn`chính là thao tác bạn vừa thực hiện trên thư mục đó. Lời nhắn nên để ở thì hiện tại đơn và nên ngắn gọn, dễ hiểu. Xong khi thực hiện `commit`, ta thấy git tạo ra 1 mã hashcode `[master (root-commit) 43e1e93] add README.md` kèm theo đó là tên lời nhắn vừa thực hiện. Gõ `git status`thì git báo chưa có gì để cập nhật hay hiện tại chưa có bất kì 1 sự thay đổi nào trong thư mục làm việc !


- Để xem lại các commit trước, bạn thực hiện lệnh `git log`:

```
commit 43e1e9398960d2d686bae38a05c269152228b157
Author: huyhoang17 <hoangphan0710@gmail.com>
Date:   --- --- - --:--:-- ---- +0700

    add README.md
(END)
```

- Bạn có để ý thấy 7 kí tự đầu trên mã hashcode và tên commit tương ứng như lúc nãy mình vừa thực hiện lệnh `git commit -m "tên lời nhắn"` ko ? Vậy là bạn đã thực hiện xong commit đầu tiên, việc tiếp theo sẽ thực hành trên github.

__2. Thao tác với Github:__

- __Git__ và __Github__ là 2 thứ hoàn toàn khác nhau. Git là 1 DVCS như mình đã giới thiệu từ ban đầu. Còn Github là 1 dịch vụ cung cấp các repo online mà người dùng sử dụng để tạo các kho chứa của riêng mình.
- Đầu tiên, các bạn truy cập vào [https://github.com](https://github.com) và đăng kí 1 tài khoản.
- Bước tiếp theo khá quan trọng, trên terminal các bạn thực hiện lệnh `ssh-keygen`, việc này sẽ tạo 1 `private key`, 1 `public key`, sau đó copy `public key` để chuẩn bị thực hiện bước tiếp theo (bước tạo ssh-key này bạn có thể xem phần hướng dẫn sử dụng git trên window)

```
╰─➤  ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/phanhoang/.ssh/id_rsa): /home/phanhoang/.ssh/id_rsa_test
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/phanhoang/.ssh/id_rsa_test.
Your public key has been saved in /home/phanhoang/.ssh/id_rsa_test.pub.
The key fingerprint is:
4a:8d:bc:ec:27:5a:c6:01:da:14:a6:61:57:7b:c3:f5 phanhoang@phanhoang-PC
The key's randomart image is:
+--[ RSA 2048]----+
|  o +..   .      |
| . = . o . .     |
|  . o . +   E    |
|   + o + .       |
|  . . = S        |
|     + +         |
|      B          |
|     +. .        |
|    ...o         |
+-----------------+
(venv) ╭─phanhoang@phanhoang-PC ~
╰─➤  cat /home/phanhoang/.ssh/id_rsa_test.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC05XxMT7Nu9X//DrANSxMMP/HcWFD6ntBX0VkXqplIkq9BmHqQr4c6rclfI5P8A8ZMKaNHiH91OjdbJYqkYvW4tvvHl3qDVcc1/5q81iW3MZeCmCroa0Z7cTCD6eHVZcXoHGq/sZ2BBirBckdoKBb9/chJdEzvEPhpQ9ar3SiQNuOuVuiObkgg67sUuZj/2VazV9usVp962aSxrsnwEesTgnIqkLbErHCAaYgaPz4RsH+xYHwogRXF+PzAFF90ec0hPpJCcktKuaiP80JmMR3nPBgnFfu0/ZmgeO28FvA5nkxJTYN+4hQI4bEC6ZCums0MpX7wfSD/iKsRwTctOZMR phanhoang@phanhoang-PC
```

- Sau khi đã copy key, trên tài khoản github, mọi người chọn `settings` > `SSH and GPG keys` > chọn `New SSH keys`. Dán key vừa copy vào `Key`, thêm `Title` và chọn `Add SSH key`.

![Add SSH key](http://i.imgur.com/9Q4AF9H.png)

- Bước tiếp, trên github, các bạn tạo mới 1 `repository` ở góc trên cùng bên phải. Đặt tên repo, description, rồi chọn tạo mới repo:

![Create Repo](http://i.imgur.com/jm8M6Tw.png)

![](http://i.imgur.com/pvE9BcY.png)

- Ở đây có 2 tùy chọn. Thứ nhất là bạn đã có sẵn 1 thư mục trên máy là muốn link thư mục trên local đồng bộ với thư mục trên github, bạn thực hiện lệnh:'

```
git remote add origin `tên đường dẫn đến repo của bạn`
```

- Hoặc đơn giản bạn chỉ muốn kéo repo đó về, thực hiện lệnh:

```
git clone `tên đường dẫn tới repo của bạn`
```

- Ở đây để đơn giản, mình sẽ clone repo về máy:

```
(venv) ╭─phanhoang@phanhoang-PC ~
╰─➤  git clone git@github.com:huyhoang17/test.git
Cloning into 'test'...
warning: You appear to have cloned an empty repository.
Checking connectivity... done.
(venv) ╭─phanhoang@phanhoang-PC ~
╰─➤  ls | grep test
test
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  cd test
```

- Giờ cả repo trên local và trên github đều chưa có bất kì file nào. Ta tạo mới 1 file trên local rồi cũng thực hiện các thao tác cơ bản như ở trên: `git add 'tên file' và git commit -m 'tên lời nhắn'`:

```
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  echo "Hello Git, Github" >> README.md
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master*›
╰─➤  ls
README.md
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master*›
╰─➤  git add README.md
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master*›
╰─➤  git commit -m "add README.md"
[master (root-commit) 026a01e] add README.md
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  git status
On branch master
Your branch is based on 'origin/master', but the upstream is gone.
  (use "git branch --unset-upstream" to fixup)

nothing to commit, working directory clean
```

- Hiện tại repo trên máy mình đã có 1 file `README.md` nhưng bây giờ bạn thử truy cập repo đó trên github thì hoàn toàn chưa thấy file đó. Để thực hiện đẩy file sau khi đã commit lên github, ta thực hiện lệnh:

```
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  git push origin master
Counting objects: 3, done.
Writing objects: 100% (3/3), 237 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:huyhoang17/test.git
 * [new branch]      master -> master
```

- `master` chính là tên nhánh ban đầu bạn làm việc. Ta sẽ bàn về việc tạo nhánh trong phần sau của hướng dẫn. Như bạn đã thấy, git đã thực hiện thành công việc đẩy file lên github. Bây giờ bạn thử truy cập lại repo trên Github mà xem, BINGO ...:

![BINGO !](http://i.imgur.com/PBbEJhc.png)

- Như vậy bây giờ, thư mục trên máy và trên github đã được đồng bộ với nhau. Giả sử bây giờ mình tạo 1 file mới ngày trên github tên `abc.py`. Khi đó để cập nhật file đó xuống dưới local, bạn thực hiện lệnh:

```
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  git pull
Updating 026a01e..0e3215d
Fast-forward
 abc.py | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 abc.py
(venv) ╭─phanhoang@phanhoang-PC ~/test  ‹master›
╰─➤  ls
abc.py  README.md
```

- Đó là 1 số các hướng dẫn cơ bản khi làm việc với git và các dịch vụ quản lí repo như github.

---

### __Phụ lục__

- Git tutorial: [git-scm](https://git-scm.com/book/en/v2)

- [How to add a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

- Điểm khác nhau giữa Github và Gitlab:

    - Giống nhau: Cả hai đều là các dịch vụ quản lí repo ( thư mục chứa mã nguồn của bạn ), không giới hạn số lượng repo bạn tạo ra.

    - Khác nhau:
        - Gitlab cho phép bạn có thể tạo repo private mà không phải trả phí, với Github bạn sẽ phải trả phí khi muốn tạo 1 repo private.
        - Gitlab cung cấp giao diện trực quan hơn, nhiều tùy chọn hơn, thuận tiện hơn trong việc review bài tập của học viên.
