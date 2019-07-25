if [[ -d $HOME/Android/Sdk ]]; then
    export ANDROID_HOME=$HOME/Android/Sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    alias run_emulator="cd $HOME/Android/Sdk/emulator && ./emulator -avd pinkykitten &"
    alias run_emulator_sm="cd $HOME/Android/Sdk/emulator && ./emulator -avd pinkykitten_sm &"
fi
