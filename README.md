bootstrap instruction:
```
# adjust path to yadm as desired
curl -fLo $HOME/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x $HOME/.local/bin/yadm
$HOME/.local/bin/yadm clone https://github.com/mansf-osk/dotfiles.git
# follow instructions from yadm (bootstrap, merging with files already on your system, ...)

# reload shell
source .bashrc
