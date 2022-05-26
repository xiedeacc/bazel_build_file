def register_all_execution_platforms():
    native.register_execution_platforms(
        "//platforms:linux_gcc8_armv7_none_musleabi",
        #####################################################
        "//platforms:linux_gcc10_aarch64_none_elf",
        "//platforms:linux_gcc10_aarch64_none_gnueabi",
        "//platforms:linux_gcc10_armv7_none_eabi",
        "//platforms:linux_gcc10_armv7_none_gnueabihf",
        #####################################################
        "//platforms:linux_gcc11_aarch64_none_elf",
        "//platforms:linux_gcc11_aarch64_none_gnueabi",
        "//platforms:linux_gcc11_aarch64_none_musleabi",
        "//platforms:linux_gcc11_armv7_none_eabi",
        "//platforms:linux_gcc11_armv7_none_gnueabihf",
        "//platforms:linux_gcc11_armv7_none_musleabi",
        "//platforms:windows_mingw_x86_64",
    )
