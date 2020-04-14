# wrtng

## ~/. reason for making this
The reason I'm creating wrtng is to have a program on the command line for my notes, todo and blogs.
I enjoyed using [jrnl](https://jrnl.sh/) but wanted something easier to install and sync with git, when looking for more information I found an [addition](https://marmelab.com/blog/2018/11/08/a-developers-diary.html) to [did.txt](https://theptrk.com/2018/07/11/did-txt-file/) and this gave me a starting point for creating my own solution. 

## ~/. functionality
- [x] Editing in vim 
- [x] Portable (easy to clone with git as long as you have bash and minimal dependencies)
- [ ] Easy viewing with the cli
- [ ] Supports multiple journals (notes, todo, blogs, etc.)
- [ ] Install and sync with git
- [ ] Markdown support (for easy viewing and editing on github, exporting to blog, etc.) 

## ~/. installation
Clone this repository:
```
git clone https://github.com/vPlien/wrtng.git
```

Add the following line to your .bashrc or .zshrc:
```
alias wrtng "~/path/to/wrtng.sh"
```

### ~/. usage
Start wrtng: 
```
wrtng
```
Vim will open with the date and time above your message, you can start typing right away.

For navigation use the arrow keys or press escape and use: `hjkl` For the following functions press escape and then type the command: Save: `:w` , Quit: `:q` , Save and quit: `:x`

View/edit logs:
```
vim ~/.wrtng/year/month/date.txt
```
Edit log of today:
```
wrtng
```

