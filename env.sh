# usage: source env.sh
_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$_root/.venv/bin/activate"
export PATH="$PATH:$HOME/tools/oss-cad-suite/bin"
unset PYTHONPATH
