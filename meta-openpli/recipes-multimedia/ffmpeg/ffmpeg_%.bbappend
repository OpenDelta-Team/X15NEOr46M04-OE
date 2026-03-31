
PACKAGECONFIG[theora] = ""

EXTRA_OECONF = "${@bb.utils.contains("TARGET_ARCH", "mipsel", "--enable-mipsfpu --extra-libs=-latomic --disable-mips32r5 --disable-mipsdsp --disable-mipsdspr2 \
               --disable-loongson2 --disable-loongson3 --disable-mmi --disable-msa", "", d)} \
               --disable-x86asm \
               "

ERROR_QA:remove = "file-rdeps arch"

INSANE_SKIP:${PN} = "installed-vs-shipped"
