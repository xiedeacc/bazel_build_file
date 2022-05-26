def register_all_toolchains():
    native.register_toolchains(
        "//toolchains:gcc8_arm_armv7_none_musleabi_xcompile_toolchain",
        ###############################################################
        "//toolchains:gcc10_arm_aarch64_none_elf_xcompile_toolchain",
        "//toolchains:gcc10_arm_aarch64_none_gnueabi_xcompile_toolchain",
        "//toolchains:gcc10_arm_armv7_none_eabi_xcompile_toolchain",
        "//toolchains:gcc10_arm_armv7_none_gnueabihf_xcompile_toolchain",
        ###############################################################
        "//toolchains:gcc11_arm_aarch64_none_elf_xcompile_toolchain",
        "//toolchains:gcc11_arm_aarch64_none_gnueabi_xcompile_toolchain",
        "//toolchains:gcc11_arm_aarch64_none_musleabi_xcompile_toolchain",
        "//toolchains:gcc11_arm_armv7_none_eabi_xcompile_toolchain",
        "//toolchains:gcc11_arm_armv7_none_gnueabihf_xcompile_toolchain",
        "//toolchains:gcc11_arm_armv7_none_musleabi_xcompile_toolchain",
        "//toolchains:windows_mingw_x86_64_toolchain",
    )
