# LANGUAGE must be set by en_US
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# Editor
export EDITOR=nvim

# Pager
export PAGER=less

# Less status line
export LESS='-R -f -X -i -P ?f%f:(stdin). ?lb%lb?L/%L.. [?eEOF:?pb%pb\%..]'
export LESSCHARSET='utf-8'

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[00;44;37m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# spark
# export SPARK_HOME=$HOME/Developer/opt/spark-1.4.0-bin-hadoop2.7
export SPARK_HOME=$HOME/Developer/opt/spark-2.4.5-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$PATH
# export PYSPARK_PYTHON=python3

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# java
# Check installed versions with '/usr/libexec/java_home -V'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
