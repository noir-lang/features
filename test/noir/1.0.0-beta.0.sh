#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
check "check nargo version" bash -c "nargo --version | grep 'noirc version = 1.0.0-beta.0+7311d8ca566c3b3e0744389fc5e4163741927767'"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
