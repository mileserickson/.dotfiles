# Aliases
alias ll="ls -la"
alias con="sudo cu -s 9600 -l /dev/tty.usbserial"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias jn='jupyter notebook --no-browser'

# Add AWS keys to environment
export AWS_CREDENTIALS_FILE=$HOME/.aws/credentials.csv
export AWS_ACCESS_KEY_ID=$(tail -n 1 $AWS_CREDENTIALS_FILE | cut -f 2 -d ,)
export AWS_SECRET_ACCESS_KEY=$(tail -n 1 $AWS_CREDENTIALS_FILE | cut -f 3 -d ,)

# Set pager, editor, command editor 
export PAGER=/usr/bin/less
export EDITOR=vim
set -o vi

# Hadoop/Spark
export HADOOP_HOME=`brew info hadoop | grep /usr | cut -f 1 -d " " | tail -n 1`/libexec
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native/:$LD_LIBRARY_PATH
export SPARK_HOME=`brew info apache-spark | grep /usr | cut -f 1 -d " " | tail -n 1`/libexec
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/Cellar/go/latest/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# Hive
export HIVE_HOME=/usr/local/Cellar/hive/1.2.1/libexec
export HCAT_HOME=/usr/local/Cellar/hive/1.2.1/libexec/hcatalog
export JAVA_HOME="$(/usr/libexec/java_home)"

# OneBusAway API
source $HOME/.secrets/oba.sh

# Define Colors
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Customize command prompt
source $HOME/.dotfiles/bin/git-prompt.sh
source $HOME/.dotfiles/bin/bash-completion.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# Add ~/bin to $PATH
export PATH=$HOME/bin:$PATH

# Postgres
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# Texlive
export PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-darwin/"

# Anaconda
export PATH="/Users/miles/anaconda/bin:$PATH"

