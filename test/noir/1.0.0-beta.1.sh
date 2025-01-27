#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
check "check nargo version" bash -c "nargo --version | grep 'noirc version = 1.0.0-beta.1+03b58fa2dfcc8acc8cf5198b1b23b55676fbdb02'"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
