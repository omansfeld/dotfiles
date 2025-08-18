if status is-interactive
    # Commands to run in interactive sessions can go here
end

# variable exports
set -gx NSS_DIR /Users/omansfeld/git/neqo_deps/nss
set -gx DYLD_LIBRARY_PATH /Users/omansfeld/git/neqo_deps/dist/Debug/lib

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/omansfeld/google-cloud-sdk/path.fish.inc' ]; . '/Users/omansfeld/google-cloud-sdk/path.fish.inc'; end
