# wrtng



## ~/. reason for making this
The reason I'm creating wrtng is to have a program on the command line for my notes, todo and blogs.
I enjoyed using [jrnl](https://jrnl.sh/) but wanted something easier to install and sync with git, when looking for more information I found an [addition](https://marmelab.com/blog/2018/11/08/a-developers-diary.html) to [did.txt](https://theptrk.com/2018/07/11/did-txt-file/) and this gave me a starting point for creating my own solution. 

## ~/. functionality
- [x] Editing in vim 
- [x] Install with git
- [x] Markdown support (view and edit your notes with github.com)
- [ ] Easy viewing with the cli
- [ ] Supports multiple journals (notes, todo, blogs, etc.)
- [ ] Sync with git
- [ ] Support for other editors (ghostwriter)

## ~/. installation
Clone this repository:
```
git clone https://github.com/vPlien/wrtng.git
```

Add the following line to your .zshrc:
```
alias wrtng "~/path/to/wrtng.sh"
```

## ~/. usage
Start wrtng: 
```
wrtng
```
Vim will open with the date and time above your message, you can start typing right away.

For navigation use the arrow keys or press `escape` and use `hjkl` 

For the following functions press `escape` and then type the command:

save `:w` , quit `:q` , save and quit `:x`


View/edit logs:
```
vim ~/.wrtng/year/month/date.txt
```

