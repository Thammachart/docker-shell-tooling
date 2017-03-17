CURRENT_DIR="$(dirname "$0")"

is_root() {
    [ $(id -u) -eq 0 ] && return $TRUE || return $FALSE
}

. $CURRENT_DIR/docker.sh
. $CURRENT_DIR/java.sh
. $CURRENT_DIR/php.sh
. $CURRENT_DIR/python.sh
. $CURRENT_DIR/golang.sh
. $CURRENT_DIR/node.sh
. $CURRENT_DIR/haskell.sh
. $CURRENT_DIR/clojure.sh
