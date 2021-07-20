---
title: "Shell"
description: "I like the fish shell thingy :("
imgURL: "/images/sample.png"
katex: "true"
---

{{<mermaid>}}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
{{</mermaid>}}

# Linux Command Line

### Q. Why use the commandline ?

A commandline is a marvelously expressive way of communcating with the computer.

When we talk about the command line, we are referring to the `shell` which takes keyboard input commands and passes them to the os. Almost all linux distros supply a shell program named `bash` which is an acronym for `b`ourne `a`gain `sh`ell, a reference to the fact that `bash` is an enhanced replacement of `sh`, the original unix shell program written by Steve Bourne.

---
### Q. What are terminal emulators ?
<br>

When using the GUI, we need another program called a `terminal emulator` to interact with the shell.
Examples : Konsole, Terminal etc

---
### Q. What is a shell prompt ?
<br>

A shell prompt is where we type commands, a prompt typically of the format `username@machinename`, followed by the current working directory and a dollar sign is displayed.

If the last character of the prompt is a `#` rather than a `$`, the terminal session has superuser priviledges.

---
### Q. How can we nagivate in the shell ?
<br>

We can use :
  1. Up/Down arrows to see the previous commands.
  2. Left/Right arrow to position the cursor.

---
### Q. What is a virtual consoles ?
<br>

Even if there is no terminal emulator running, several terminal sessions continue to run behind the GUI called `virtual consoles`.

By pressing through `Ctrl+Alt+F1` through `Ctrl+Alt+F6` we can access these sessions.

When a session is accessed, it presents a login prompt into which we can enter our `username` and `password`.

We can return to the GUI desktop by pressing `Alt+F7`.

---
### Q. List some simple commands.
<br>

1. `date` : prints the current date.

```bash
# [singh@x55 ~]$ date
    
Monday 24 May 2021 10:29:11 PM IST
```

2. `cal` : displays calendar of current month.

```bash
# [singh@x55 ~]$ cal

      May 2021      
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31               
```

3. `df` : displays free space on our disk drives.

```bash
# [singh@x55 ~]$ df

Filesystem      Size  Used Avail Use% Mounted on
dev             3.9G     0  3.9G   0% /dev
run             3.9G  1.7M  3.9G   1% /run
/dev/sda1       234G   54G  169G  24% /
tmpfs           3.9G  147M  3.7G   4% /dev/shm
tmpfs           4.0M     0  4.0M   0% /sys/fs/cgroup
tmpfs           3.9G   51M  3.8G   2% /tmp
tmpfs           783M   88K  783M   1% /run/user/1000
/dev/sdb1       458G  148G  287G  34% /run/media/singh/753d0847-f623-4164-81ac-4a97e85c5042
```

4. `free` : displays amount of free memory.

```bash
# [singh@x55 ~]$ free

               total        used        free      shared  buff/cache   available
Mem:            7823        1849        1929         540        4045        5178
Swap:            511           1         510

```

5. `exit` : ends a terminal sessionby closing the terminal emulator window.
```bash
# [singh@x55 ~]$ exit
```

6. `clear` : clears the console.
```bash
# [singh@x55 ~]$ clear
```

---
### Q. What  will happen if a command is not recognised ?
<br>

If we type in a command (say) `abc` which is not recognised by the commandline, it will yield following message :

```bash
# [singh@x55 ~]$ abc

bash: abc: command not found
```
---
### Q. How does linux organises its files ?
<br>

Linux organises its files in what is called a `heirarchial directory system`.

The first directory in the file system is called the `root` directory which contains files and subdirectories, which contains more files and subdirectories and so on ...

linux has a single file system tree, regardless of how many drives or storage devices are attached to the computer.

* `pwd` : displays the current working directory.

```bash
# [singh@x55 ~]$ pwd

/home/singh
```

When we first log into our system (or start a terminal session), our working directory is set to the `home` directory.

Each user account is given it's own home directory, and it is the only place a regular user is allowed to write files.

* `ls` : lists the files and directories of a directory.

```bash
# [singh@x55 ~]$ ls

Desktop  Documents  Downloads  go  MEGA  Music  Pictures  Public  Templates  Videos
```

```bash
ls           # lists files and directories in working directory.
ls path_name # lists files and directories in specified path.
```

We can also specify multiple directories :

```bash
# [singh@x55 ~]$ ls ~ /usr

/home/singh:
Desktop    Downloads  MEGA   Pictures  Templates
Documents  go         Music  Public    Videos

/usr:
bin  include  lib  lib32  lib64  libexec  local  sbin  share  src
```

We can also change the format of the listing :

```bash
# [singh@x55 ~]$ ls -l

total 40
drwxr-xr-x 4 singh singh 4096 May 25 00:26 Desktop
drwxr-xr-x 2 singh singh 4096 May 24 20:29 Documents
drwxr-xr-x 2 singh singh 4096 May 24 20:41 Downloads
drwxr-xr-x 4 singh singh 4096 May 24 18:55 go
drwxr-xr-x 7 singh singh 4096 May 24 20:28 MEGA
drwxr-xr-x 2 singh singh 4096 May 24 02:19 Music
drwxr-xr-x 2 singh singh 4096 May 24 02:36 Pictures
drwxr-xr-x 2 singh singh 4096 May 24 02:19 Public
drwxr-xr-x 2 singh singh 4096 May 24 02:19 Templates
drwxr-xr-x 2 singh singh 4096 May 24 02:19 Videos
```


* `cd` : changes the working directory to the specified path name of desired directory.

```bash
# [singh@x55 ~]$ cd Downloads
# [singh@x55 Downloads]$
```

```bash
cd path_name    # Changes working directory to specified path.
cd              # Changes working directory to your home directory.
cd -            # Changes working directory to previous working directory.
cd ~user_name   # Changes working directory to home directory of specified user.
```

---
### Q. What is the difference between absolute and relative filenames ?
<br>

* `Absolute names` begin with the root directory.

```bash
# [singh@x55 ~]$ cd /usr/bin
# [singh@x55 bin]$
```
Here, the starting `/` in the path refers to root.

* `Relative paths` begin with the current directory.
   
    `. (dot)` refers to the working directory.

    `..  (dot dot)` refers to the working directory's parent directory.
    
```bash
# [singh@x55 ~]$ pwd
/home/singh

# [singh@x55 ~]$ cd ..
# [singh@x55 home]$
```
Here, we often omit `./` as it is implied. So, the following lines yield the same result.
```bash
# [singh@x55 ~]$ cd ./Desktop/
# [singh@x55 Desktop]$

# [singh@x55 ~]$ cd Desktop
# [singh@x55 Desktop]$
```

---
### Q. Name 3 characteristics of filenames in linux.
<br>

1. File names in linux are case sensitive. So `file1` and `File1` are different files.
2. Filenames that begin with a `. (dot)` are hidden.
3. Linux doesn't use file extensions to determine the contents or purpose of files, Although some programs do.

---
### Q. What do you understand by arguments and options ?
<br>

Commands are often followed by one or more `options` that modify their behaviour and further by one or more `arguments`, the items upon which the command acts.

```bash
# syntax :
command -options arguments
```

There are 2 ways to use options :
1. short option : single character (ex : `-a`)
2. long option  : one word (ex : `--all`)

Usage :
```bash
ls -a   # lists all files including hidden ones.
ls -all # lists all files including hidden ones.
```

Alternate:
```bash
file Wall # prints description of file's contents.

Wall: JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, comment: "CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 95", baseline, precision 8, 1920x1080, components 3
```

`-h, --help` is a commonly used option to view documentation for the command/executable.
```bash
cd --help
```
The above command will yield the documentation for `cd`.
Here, the `[] (square brackets)` indicate optional items and a `| (vertical bar)` indicates mutually exclusive items.

```
cd [-L|[-P[-e]]] [dir]
```
The above notation means, that the command `cd` may be optionally followed by either a `-L` or `-P` and further, if the `-P` option is specified the `-e` option may also be included followed by the optional argument `dir`.

--- 
### Q. What is the `less` command used for ?
<br>

It is used to view text files from within the terminal emulator. less is what is called a pager, program that helps you view long files in a page by page view.

```bash
less filename
# to exit less, press `q`
```
---
### Q. Describe the usage of directories found on a typical linux system.
<br>

* `/`    : root directory where everything begins.
* `/bin` : contains binaries required for system to boot and run.
* `/boot`: contains the linux kernel, ram disk and drivers.
* `/dev` : contains device `nodes`.
* `/etc`  : contains system-wide config files.
* `/home` : directory where each user can write files to.
* `/lib`  : contains shared libraries files.
* `/lost+found` : used in case of partial recovery.
* `/media` : On modern systems, contains mount points for removal media for automatic mount.
* `/mnt` : On older systems, contains mount points for removable devices that have been mounted manually.
* `/opt` : used to install optional software. Typically for commercial software products.
* `/proc` : virtual file system maintained by kernel.
* `/root` : home directory for the root account.
* `/sbin` : contains system binaries reserved for superuser.
* `/tmp`  : contains temporary files created by programs.
* `/usr`  : contains all programs and support files used by regular users.
* `/usr/bin` : contains executables installed by your distro or programs comppiled from source.
* `/usr/lib` : shared libraries for `/usr/bin`
* `/usr/share` : contains shared data used by programs in `/usr/bin`
* `/usr/local` : contains programs not installed by your distro but intended for system wide install.
* `/usr/sbin` : contains system administration programs.
* `/usr/share/doc` : contains docs for installed packages.
* `/var` : various databases, spool files etc are located here.
* `/var/log` : contains log files, records of system activity.

---
### Q. What are symbolic links ?
<br>

```bash
ls -l

lrwxrwxrwx  1 singh singh    28 May 25 00:27 .steampid -> /home/singh/.steam/steam.pid
```

As we look around in the directory listings, you might find an entry as above.
Notice the first letter if `l` and the entry has two filenames.

This is a special kind of file called a `symbolic link`, `soft link` or `symlink`.

Suppose a program uses a shared resource named `foo` that has frequent version changes. It would be good to include the file version number in the fiename so interested parties can see the installed version. This presents a problem. If we change the name of the shared resource, we will have to track all the programs that use this shared resource and change the file name for the program.

Here `symbolic links` save the day. Suppose we install version 2.6 of `foo` which has filename `foo-2.6`, and then create a symbolic link simply called `foo` that points to `foo-2.6`.So when a program opens `foo`, it will open `foo-2.6`. When we need to upgrade, we can simple delete the symbolic link to `foo-2.6` and create a new one for `foo-2.7`. Additionally it also helps us keep different version of the program.

---
### Q. What are wildcards ?
<br>

Because the shell uses filenames so much, it provides special characters to help you rapidly specify groups of filenames. These special characters are called `wildcards`.

Using wildcards which is also known as `globbing` allows you to select the filenames based on patterns of character.

* `*` Matches any character.
* `?` Matches any single character.
* `[characters]` Matches any character that is a member of the set characters.
* `[!characters]` Matches any character that is not a memeber of the set characters.
* `[[:class:]]` Matches any character that is a memeber of the specified class.

Commonly used character class :

* `[:alnum:]` Matches any alphanumeric character.
* `[:alpha:]` Matches any alphabetic character.
* `[:digit:]` Matches any numeral.
* `[:lower:]` Matches any lower case letter.
* `[:upper:]` Matches any upper case letter.

Examples of wildcards :

* `*` All files
* `g*` Any file beginning with g
* `b*.txt` Any file beginning with b followed by any characters and ending with .txt
* `Data???` Any file beginning with `Data` followed by exactly three characters.
* `[abc]*` Any file beginning with either a, a b, or a c.
* `BACKUP.[0-9][0-9][0-9]` Any file beginning with `BACKUP` followed by exactly three numerals.
* `[[:upper:]]*` Any file beginning with an upper case letter.
* `[![:digit:]]*` Any file not beginning with a numeral.
* `[[:lower:]123]` Any file ending with a lowercase letter or numerals 1,2 or 3.

Avoid using character range such as `[a-z]` or `[A-Z]` which are traditional unix notation and worked in older systems.

---
### Q. Explan the various file operation commands such as `mkdir`, `cp`, `mv`, `rm` ?
<br>

1. `mkdir` is used to create a directory.
```bash
# [singh@x55 ~]$ mkdir directory...
```
Here the `... (three dots)` indicate that the arguments can be repeated.
```bash
mkdir dirA  # creates a directory named dirA
mkdir dirB dirC dirD # creates directories dirB, dirC and dirD
```

2. `cp` copies files or directories.
```bash
# [singh@x55 ~]$ cp item... directory
```
The above syntax copies multiple items (files or directories) into a directory.

`cp` Options :

* `-i, --interactive` before overwriting an existing file, prompts the user for confirmation. Otherwise silently overwrites files.
* `-r, --recursive` recursively copy directories and their contents. This option is required when copying directories.
* `-u, --update` only copy files that don't exist or are newer than existing corresponding files.
* `-v, --verbose` display informative messages as copy is performed.

Examples :

* `cp dir1/* dir2` : copy all files in `dir1` into `dir2`.
* `cp -r dir1 dir2` : copy contents of `dir1` to `dir2`.

3. `mv` command performs both file moving and renaming depending on how it is used. In either case, the original filename no longer exists after the operation.

```bash
# [singh@x55 ~]$ mv item1 item2
```
Above is used to rename or move item1 to item2.

```bash
# [singh@x55 ~]$ mv item.. directory
```
Above is used to move items fromone directory to another.

`mv` Options :

* `-i, --interactive` : before overwriting files, prompt the user.
* `-u, --update` : only move files that either don't exist or are newer than existing corresponding files.
* `-v, --verbose` : display informative messages while move is performed.

Examples : 

`mv file1 file2` : if file2 exists, it is overwritten with contents of file1. if file2 doesn't exist, it is created. In either case file1 ceases to exist.

`mv file1 file2 dir1` : move file1 and file2 into directory dir1. The directory dir1 must already exist.

4. `rm` command is used to remove (delete) file and directories.

```bash
# [singh@x55 ~]$ rm item...
```

`rm` Options :

* `-i, --interactive` prompts user for confirmation before deleting the file.
* `-r, --recursive` recursively delete directories.This means if a directory being deleted has subdirectories, delete them too. To delete a directory this option must be specified.
* `-f, --force` ignore nonexistent files and do not prompt.
* `-v, --verbose` display informative messages as the deletion is performed.

Example :

* `rm file1` deletes file1 silently.
* `rm -r file1 dir1` delete file1 and dir1 and its contents. 

---
### Q. What is the `ln` command used for ? What are hardlinks ?
<br>

The `ln` command is used to create either hard or symbolic links. It is used in two ways :

1. This creates a hardlink.
```bash
# [singh@x55 ~]$ ln file link
```
2. This creates a sumbolic link.

```bash
# [singh@x55 ~]$ ln -s item link
```

`Hardlinks` are nthe original unix way of creating links, every file has a single hard link that gives the file its name. When we create a hard linkm, we create an additional directory entry for the file. Hardlinks have two limitations :

* A hard link cannnot reference a file outside its own file system. This means a link cannot reference a file that is not on the same disk partition as the link itself.
* A hard link may not reference a dictionary.

With either `hard links` or `symbolic links`, even if the links are deleted, the file remains. And if the file is deleted, the links still remains as a broken link (it wont point to anything).

---
### Q. Showcase all the commands used so far ?
<br>

To practice the commands, let's create a directory named `play` within the home directory.
```bash

mkdir play # create directory named play
ls
Desktop  Documents  Downloads  go  MEGA  Music  Pictures  play  Videos

cd play # change working directory to play
pwd
/home/singh/play

mkdir dir1 dir2 # make directories dir1 and dir2
ls
dir1  dir2

cp -v /etc/passwd . # copy the password file from /etc
'/etc/passwd' -> './passwd'
ls
dir1  dir2  passwd

mv passwd fun # rename `passwd` to `fun`
ls
dir1  dir2  fun

mv fun dir1 # move fun to dir1
ls dir1
fun

mv dir1/fun dir2 # move fun from dir1 to dir2
ls dir2
fun

mv dir2/fun . # move fun from dir2 to current directory
ls
dir1  dir2  fun

# create hard links for fun
ln fun fun-hard 
ln fun dir1/fun-hard
ln fun dir2/fun-hard
# Now we have 4 instance of fun. When we create hardlinks.
```

A file can be thought of to be made up of two parts :
1. The data part containing the file's contents.
2. The name part that holds the file's name.

When we create hardlinks, we are actually creating additional name parts that all refer to the same data part. The system, assigns a chain of disk blocks to what is called an `inode`, which is then associated with the name part.Each hardlink therefore refers to a specific inode containing the file's content.

The `ls` command can reveal this information usinf the `-i` option.
The first field below is the inode number and as we can see the indoe number for `fun` and `fun-hard` is the same, which confirms they are the same file.
```bash
# ls -li

total 16
8391610 drwxr-xr-x 2 singh singh 4096 May 25 17:09 dir1
8392300 drwxr-xr-x 2 singh singh 4096 May 25 17:09 dir2
8392301 -rw-r--r-- 4 singh singh 1939 May 25 16:56 fun
8392301 -rw-r--r-- 4 singh singh 1939 May 25 16:56 fun-hard
```

Creating symbolic links :

Symbolic links create a special type of file that contains a text pointer to the target file or directory.

```bash
ln -s fun fun-sym # create a symbolic link using `-s` option
ln -s ../fun dir1/fun-sym
ln -s ../fun dir2/fun-sym 
```
When we create a symbolic link, we are creating a text description of where the target file is relative to the symbolic link.

```bash
ls -l dir1

total 4
-rw-r--r-- 4 singh singh 1939 May 25 16:56 fun-hard
lrwxrwxrwx 1 singh singh    6 May 25 17:30 fun-sym -> ../fun
```

The listing above shows that fun-sym is a symbolic link by the leading `l` in the first field and that it points to `../fun`, which is correct. Relative to the location of `fun-sym`, fun is in the directory above it.

We can also use absolute pathname to create symbolic links, however using relative pathnames is more desirable because it allows a directory tree containing symbolic links and their referenced files to be renamed and/or moved without breaking the links.

---
### Q. What exactly are commands ?
<br>

A command can be one of the following four types :
1. An executable program 
2. A commmand (like ls, cd) built into shell itself i.e `shell builtins`.
3. A shell function which are miniature shell scripts incorporated into an environment.
4. An alias i.e commands we define ourselves, built from other commands.

We can identify the type of command using the `type` command.

```bash
# [singh@x55 ~]$ type cd
cd is a shell builtin
```

We can display an executable's location using `which` command.
It works only for executable programs, not builtins or alias.
```bash
# [singh@x55 ~]$ which go
/usr/local/go/bin/go
# [singh@x55 ~]$ which ls
/usr/bin/ls
```
---
### Q. What is the `man` program used for ?
<br>

Most executable programs intended for command line use provide a formal piece of documentation called the `manual` or `man page`. A special paging program called `man` is used to view them.

```bash
man ls
```

On most linux systems, man uses less to view the page. A manual typically contains :
1. user commands.
2. programming interfaces for kernel system calls.
3. programming interfaces to the c library.
4. special files such as device nodes.
5. file formats.
6. games and amusements such as screen savers.
7. miscellaneous
8. system administration commands.

---
### Q. What is the `apropos` program used for ?
<br>

`apropos` is used to search the list of man pages for possible matches based on a search term. it's cude but sometimes useful.

```bash
apropos partition
```
The above command displays all matches for the term `partition` in the man pages.

---
### Q. What is the `whatis` program used for ?
<br>

The `whatis` program displays the name and a one-line description of a man page matching a specified keyword.

```bash
# [singh@x55 ~]$ whatis ls
ls (1)               - list directory contents
ls (1p)              - list directory contents
```

---
### Q. What is the `info` program used for ?
<br>

The GNU project provides an alternative to man pages for their programs, called `infos`.Info manuals are displayed using a reader program named `info`. Info pages are hyperlinked much like webpages.

The info program reads info files which are tree strcutureed into indivudual `nodes`, each containing a single topic. Info files contain hyperlinks that can move you from one node to another.

```bash
info coreutils
```

---
### Q. How can we create our own commands ?
<br>

We can create a program based on existing commands using the `alias` command.

```bash
# [singh@x55 Desktop]$ alias foo='cd ~;ls'
# [singh@x55 Desktop]$ foo
Desktop  Documents  Downloads  go  MEGA  Music  Pictures  play  Videos
# [singh@x55 ~]$ type foo
foo is aliased to 'cd ~;ls;'
```

To remove an alias, the `unalias` command is used :
```bash
unalias foo
type foo
bash: type: foo: not found
```

We can also alias existing commands, like ls command is often aliased to add color support.
```bash
type ls
ls is aliased to `ls --color=auto'
```

To see all the aliases, we can use the `alias` command without arguments.
```bash
alias

alias cp='cp -i'
alias df='df -h'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias free='free -m'
alias grep='grep --colour=auto'
alias ls='ls --color=auto'
alias more='less'
alias np='nano -w PKGBUILD'
```

---
### Q. What do you mean by standard input and output ?
<br>

Many of the programs that we have used so far produce output of some kind. This output often consists of two types :

1. The program's result i.e the data the program is designed to produce.
2. status and error messages that tell us how the program is getting along.

If we look at programs like `ls`, we can see that ir displays its results and its errors on the screen.

Keeping the unix theme of `everything is a file`, programs such as `ls` actually send their result to a special file called `standard output` (often expressed as `stdout`) and their status messages to another file called `standard error` (often expressed as `stderr`).

By default, both `stdout` and `stderr` are linked to the screen and not saved into a disk file.

In addition, manyu programs take input from a facility called `standard input (stdin)`, which is, by default, attached to the `keyboard`.

`I/O redirection` allows us to change where the output goes and where the input comes from.

---
### Q. How can we redirect stdout ?.
<br>

I/O redirection allows us to redefine where stdout goes. To redirect it to another file instead of the screen, we use the `> (redirection operator)`

```bash
ls -l /usr/bin > ls-output.txt
```
The above command redirects output from the `ls` command to a file named `ls-output.txt`. The file is rewritten (from the beginning) if it exists, otherwise a new file is created.

Hence, we can use the following code to empty a file or create an empty file.
```bash
> ls-output.txt
```

To be able to append data to a file instead of truncating it, we use the `>> (redirection operator)`.
```bash
ls > tmp.txt # rewrites stdout to tmp.txt
ls /sys >> tmp.txt # appends stdout to tmp.txt
```
If the file does not exist, it is created.

---
### Q. How can we redirect stderr ?
<br>

Redirecting the standard error lacks the ease of a dedicated redirection opearator. To redirect `stderr`, we must refer to its file descriptor.

A program can produce output on any of the several numbered file streams. While we have referred to the first three as `stdin`, `stdout` and `stderr`, the shell references them internally as file descriptors 0, 1 and 2 respectively.

```bash
ls -l /bin/usr 2> ls-error.txt
```
The file descriptor 2 is placed immediately before the redirection opearator to perform the redirection of `stderr` to the file `ls-error.txt`

Redirecting `stdout` and `stderr` to single file :

Method 1 : Using this we perform two redirection. First we redirect `stdout` to ls-output.txt then we redirect file descriptor 2 (`stderr`) to file descriptor 1 (`stdout`) using notation `2>&1`.
```bash
ls -l ~ /bin/usr > ls-output.txt 2>&1
```

Method 2 : Here we use a single notation `&>` to redirect both `stdout` and `stderr` to file `ls-output.txt`.
```bash
ls -l ~ /bin/usr &> ls-output.txt
```
We can also use this notation to append `stdout` or `stderr`.
```bash
ls -l /usr /bin/usr &>> ls-output.txt
```

---
### Q. How can we dispose unwanted output ?
<br>

We can dispose unwanted output (errors, status messages) by redirecting to a special file called `/dev/null`. This file is a system file often referred to as `bit bucket`, which accepts input but does nothing with it.
```bash
ls -l /bin/usr 2> /dev/null
```

---
### Q. How can we redirect `stdin` ?
<br> 

The `cat` command reads one or more files and copies them to the standard output. It displays files without paging. It is often used to view short text files.

```bash
cat filename
```

If `cat` is not given any arguments, it reads from the `stdin`.

```bash
cat
the quick brown fox jumps over the the lazy dog

the quick brown fox jumps over the the lazy dog
```

---
### Q. What are pipelines ?
<br> 

