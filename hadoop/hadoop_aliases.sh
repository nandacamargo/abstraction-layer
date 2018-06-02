# bash aliases and functions useful for working on input and out directories
#

# input and output directories
in=/tmp/test/input-dir out=/tmp/test/output-dir

# list files in input directory
alias ls-input="hdfs dfs -ls $in"

# list files in output directory
alias ls-output="hdfs dfs -ls $out"

# clean input directory
alias clean-input="hdfs dfs -rm $in/*"

# clean output directory
alias clean-output="hdfs dfs -rm $out/*"

# convenient alias to run dtcli from code repository
alias apex="$HOME/src/apex-core/engine/src/main/scripts/apex"

# copy local file (argument) to input directory
function put-file ( ) {
    hdfs dfs -put "$1" "$in"
}

# make local copy of output file (argument) from output directory
function get-file ( ) {
    hdfs dfs -get "$out/$1" "$1".out
}

