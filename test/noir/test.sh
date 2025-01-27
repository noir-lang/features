#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
# See https://github.com/devcontainers/cli/blob/HEAD/docs/features/test.md#dev-container-features-test-lib
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Check that if we install the nightly version of nargo that we end up with a build from the same commit.
INSTALLED_VERSION=$(nargo --version | grep "noirc version")
noirup -n
NIGHTLY_VERSION=$(nargo --version | grep "noirc version")

echo $INSTALLED_VERSION
echo $NIGHTLY_VERSION

check "check nargo version" test "$INSTALLED_VERSION" = "$NIGHTLY_VERSION"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
