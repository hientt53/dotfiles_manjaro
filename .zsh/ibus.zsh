#if hash ibus-deamon 2>/dev/null; then
    export GTK_IM_MODULE=ibus
    export QT_IM_MODULE=ibus
    export XMODIFIERS=@im=ibus
    # Dành cho những phần mềm dựa trên qt4
    export QT4_IM_MODULE=ibus
    # Dành cho những phần mềm dùng thư viện đồ họa clutter
    export CLUTTER_IM_MODULE=ibus
#fi
