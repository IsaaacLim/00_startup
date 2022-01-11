# 00_startup

### Color Palatte

![Color Palatte](https://user-images.githubusercontent.com/75291303/118397973-21df7700-b689-11eb-9691-1a05b919b0aa.jpg)

---

### Scripts Description

| No. | File               | Purpose                                   |
| :-: | ------------------ | ----------------------------------------- |
| 1.  | `bashprofile.sh`   | Setup **BASH** command prompt & aliases   |
| 2.  | `headerinstall.sh` | Install 42Header hotkey _(for WSL Linux)_ |
| 3.  | `vimrc.sh`         | `vim` settings                            |
| 4.  | `zshprompt.sh`     | Setup **ZSH** command prompt              |

---

### Other Contents

- _bash_scripts_ contains the helper scripts for `bashprofile.sh`
- _colorschemes_ contains the vim colorschemes files for `vimrc.sh`
- _42header.vim_ is the file required for `headerinstall.sh`

---

### Resources

- `Shell script` comfirmation prompt [source](https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script)

```
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
fi
```

- Other source links are located directly in each files
