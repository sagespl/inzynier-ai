#!/bin/bash

set -eou pipefail

POETRY_LOCATION="$HOME/opt/poetry"

function install_poetry() {
  echo "=============== INSTALLING POETRY ==============="
  python3 -m venv "$POETRY_LOCATION"
  "$POETRY_LOCATION"/bin/pip install poetry==1.6.1
  $POETRY_LOCATION/bin/poetry completions bash >> $HOME/.bash_completion
  echo -e "\nPATH=\"$POETRY_LOCATION/bin:\$PATH\"\n" >> $HOME/.profile
}
