# latexjob

dependencies:
  -  [Difftastic](https://github.com/Wilfred/difftastic): for diff 2 latex file[^1]
    
Here are my shell script for everyday latex routine, such as: build, clean, diff, minify and lint

Activate the script 
``` sh
sudo chmod +x latex.sh
```

For convinient, after activating the script, you can alias it for short, I use 'dtex' command, 

``` sh
# save this into .bashrc or .zshrc
alias dtex = sh /path/to/your/script/latex.sh
```
[^1]: I choose `difftastic` for diff, instead of latexdiff, because it work on tex file, so we can easily edit later, while `latexdiff` export to `pdf` for viewing only.
