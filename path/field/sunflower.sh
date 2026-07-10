export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && cd ../.. && pwd)

if [ ! -d "$MACRO_DIR/variables/" ]; then
    mkdir $MACRO_DIR/variables/
fi

