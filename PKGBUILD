# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer (vd): torvic9

pkgbase=linux510-vd
pkgname=('linux510-vd' 'linux510-vd-headers')
_basekernel=5.10
_kernelname=-vd
_sub=0
#_rc=rc7
pkgver=${_basekernel}.${_sub}
pkgrel=1
_archpatch=20201109
_prjc="r1"
_cachy="r8"
_stablequeue=d9b497915
arch=('x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git' 'libelf')
options=('!strip')
source=(https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.{xz,sign}
    #https://git.kernel.org/torvalds/t/linux-${_basekernel}-${_rc}.tar.gz
    # the main kernel config files
    'config.x86_64' 'config.x270' 'config.zen2' 'x509.genkey' "${pkgbase}.preset"
    #
    # Prepatch from stable-queue
    #"prepatch-${_basekernel/./}-g${_stablequeue}.patch"
    #
    # sched/core patches
    0001-sched-tip-picks-20201203.patch
    # RAPL for AMD 17h+19h
    0002-powercap-enable-rapl-for-fam17h-and-fam19h.patch
    # little inlining fix for gcc/asm
    0003-asm-force-inlining-of-get_order.patch
    # zstd 1.4.6 from terrelln
    0004-update-to-zstd-146-v7.patch
    # timers/core updates
    0005-timers-core-20201211.patch
    # Arch patches
    0006-arch-patches510-${_archpatch}.patch::https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.9/arch-patches-v5/0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-C.patch
    # CPU patches
    0007-graysky-cpu-optimizations.patch
    0008-enable-O3-for-all-archs-and-add-option-for-O1.patch
    # Clear Linux
    0009-clearlinux-tweak-intel-cpuidle.patch
    0010-clearlinux-add-config-opt-for-raid6-bench.patch
    # page_poison fixes
    0011-mm-page_poison-fixes-next.patch
    # vt fixes
    0012-vt-keyboard-fixes.patch
    # Nuvoton nc677x driver
    0013-i2c-nuvoton-nc677x-hwmon-driver-git.patch::https://gitlab.com/CalcProgrammer1/OpenRGB/-/raw/master/OpenRGB.patch
    # AMD enhancements
    0014-dma-add-support-for-amd-ptdma-controller-driver.patch
    0015-x86-set-and-use-cpu_die_id-on-amd-based-systems.patch
    0016-acpi-add-processor-to-the-ignore-PSD-override-list.patch
    # amdgpu
    0017-drm-amdgpu-disable-gfxoff-if-vcn-busy.patch
    # cpuidle polling patch
    0018-cpuidle-select-polling-interval-based-on-cstate-with-a-longer-target-residency.patch
    # sched: select idle cpu from cpumask
    0019-sched-fair-select-idle-cpu-from-idle-cpumask-for-task-wakeup-v7.patch
    #
    # futex_wait_multiple
    #1001-futex-futex_wait_multiple-krisman.patch
    1001-futex-valve-integ-20201126.patch
    # x86/entry and core/entry with syscall user dispatcher
    1002-x86-entry-20201029.patch
    1003-core-entry-20201202.patch
    #
    # MANJARO Patches
    #
    # vd patches
    2001-add-acpi_call-module.patch
    2002-tune-vm-mm-and-vfs-settings.patch
    2003-tune-cfs-settings.patch
    2004-tune-cpufreq-ondemand-settings.patch
    2005-optimise-kernel-and-module-compression.patch
    # ntfs3 driver
    2006-ntfs-rw-gpl-driver-implementation-by-paragon-v14.patch
    #
    # Project C (BMQ+PDS)
    #3001-projectc510-${_prjc}.patch::https://gitlab.com/alfredchen/linux-prjc/uploads/e8077274ea1c74e0c9f5bce44be51243/prjc_v5.9-r1.patch
    #3002-projectc510-${_prjc}.patch::https://gitlab.com/alfredchen/linux-prjc/-/commit/c6e352a26de8e46f5737fed2b876516df82adad1.patch
    #
    # i10 i/o scheduler
    #4001-i10-io-sched.patch::https://raw.githubusercontent.com/i10-kernel/upstream-linux/master/0001-iosched-Add-i10-I-O-Scheduler.patch
)

validpgpkeys=(
  'ABAF11C65A2970B130ABE3C479BE3E4300411886'  # Linus Torvalds
  '647F28654894E3BD457199BE38DBBDC86092693E'  # Greg Kroah-Hartman
)

sha256sums=('dcdf99e43e98330d925016985bfbc7b83c66d367b714b2de0cbbfcbf83d8ca43'
            'SKIP'
            '7dbe0995b0a2fbdaae14e631afd34f5aca6f1758672d2a7c8b204d9fc8621ee7'
            'e9276f5cadf69f23d6576c3b284eed5dd6ad061cb68c1e80f3bab51b1526da3c'
            '07782cffdd0a324e4c67e16fa51296a8f70f362c8072e02b68acfb46840cc3e5'
            'ab010dc5ef6ce85d352956e5996d242246ecd0912b30f0b72025c38eadff8cd5'
            'a61304615276572501cc8ad67929c6fc7e7f176b7abc89916b7ba7a9ce7ffc2b'
            '2b90cce6f5880356402e0c628bb500eab8117e6c21c77d492b0a324af21de3e1'
            'a5e9d15b5ccc27a65324453a7e8ae1a6fd84d5baadc9ad989de1399ee332b9f5'
            'c3df7ad6f491a68c56841379f6c59688143e13df2e67e05ec751634caeaab753'
            'e784b4613dd8fcb8c065fe36df5f78f9bc7174c5b923b2384da031e79ee6ba7c'
            '9323dc442ede2b5824955b4d958f887a3b2173d45395ad4492566f370760c7af'
            'b8e9973780dd75f630733a6e323897486d4d9f27d63ebefac48190e247767072'
            '429b41a987aa1a3b4975474d8b3ca2817a418435f4886e747140deed978ce284'
            '3d38fc4052b999b67aaed9fe9a4ba6ffd778ffbf7e94a66d5577391dbd08d12a'
            'b78ab97a629579ebc27ff175eacc9162a07c9b925cebd91099c97ef509bd117d'
            'b817e7da8f4901cf2dda0f2fe7b9d8243f32a42d5729e953521ef18eec7a8eb9'
            'a63e51c72ce769b6abdf71408a8556f7fc8eb96078e3173f0d07f4c45929d602'
            '4eaf4b72718637dbd6acd7c88215bf4ac7de1f6a7fc2b484ed7b565bfb8651b1'
            'e7d724ac15daf428aa1e6a03737e5c1d040892d55fda8a66897fcac9323f285c'
            '1f47d3e3956c41b47656f675a90fad9e318c7133ffe663dc0fd2c9aa0fbfeb3e'
            '162049ed45fbd4e0e2e8bc566978df0b39baece6f32b162c24fe742ecb441589'
            '5000348583882523ef3c36df27eabf4355e83d0605081a3bf5d4aaa28e518162'
            '53d63d9ac1250893921c45931f4e9ab9584e24ae8e72f4eca2f78d2faf59713a'
            '052b51392dc7f1c24fc354d5a21d87a78489a1999850a14b543502ed2009b653'
            '38cc1e32ad7def316a4da8410642bfbd1b727be325f558d533af9512a922d784'
            '5dace545bf5047cbac01bc587ee4cf369600ee66b92d9f30f1229c00ae887ffa'
            '95bcb856f9b8b787703ea39b484661ef31341f0e218d863f8450975c29796516'
            'b41115f256a5d41a06897b9544660a6a02977642e68a985e0ad32b764944c82d'
            '7fd689f4ec88364d1ac00007e6f1e273ee9b53cae187e0f70e7f810303dc9303'
            'f7a36231b794022d49e53f464d25e48f2eebf6266c2cbe5756c63aa3bf03bae7'
            'acca50a9ffee480f29bd7de6e8b5963dc0d37d3103871d75bcffdb2acce6c82d'
            '5df5b9a78427d3ab031b71f0f6a5a5ebb601fa11ff51ba65b8c2c82b0f354d4b'
            'a1dce936358ba3e95eaa9b18f6b53c5d643885f88cac4e538cdb7fa31fb00011'
            '9390f913c48aee12a92cec7690efc8de1a02d66fe0cd8cee0178ab1f115236d0')

export KBUILD_BUILD_USER=$pkgbase
export KBUILD_BUILD_HOST=eos
export KBUILD_BUILD_TIMESTAMP="$(date -Ru${SOURCE_DATE_EPOCH:+d @$SOURCE_DATE_EPOCH})"

# signing
_signing=0
# edit the paths below to point to your signing keys
_key="$HOME/build/keys/vd510-kernel-key.pem"
_pubkey="$HOME/build/keys/vd510-kernel-pubkey.pem"

# custom clang path
# export PATH=/opt/clang11/bin:$PATH
_clang=0

if [[ ${_clang} -eq 1 ]]; then
	LLVMOPTS="LLVM=1 LLVM_IAS=1"
	CLANGOPTS="CC=clang LD=ld.lld"
	source+=('clang-lto-20201211.patch')
	sha256sums+=('906275255d28c3ebe8b5604e74a43bb7b5bc885ebc9290094aa1520c57948e22')
else
	LLVMOPTS=""
	CLANGOPTS=""
fi

TB=$(tput bold)
TN=$(tput sgr0)

prepare() {

  cd "${srcdir}/linux-${_basekernel}"

  echo "-${_kernelname/-/}" > localversion.10-pkgname
  echo "-${pkgrel}" > localversion.20-pkgrel

  echo -e "\n${TB}* APPLYING PATCHES${TN}"

  # apply patch from the source array (should be a pacman feature)
  local filename filename2
  for filename in "${source[@]}"; do
  	if [[ "$filename" =~ \.patch$ || "$filename" =~ \.diff$ ]]; then
		filename="${filename%%::*}"
		filename2="${filename#*-}"
        	echo -e "\n---- Applying patch ${TB}${filename2%%.*}${TN}:"
        	patch -Np1 -i "../${filename}"
  	fi
  done

  # kernel config
  echo -e "\n${TB}* KERNEL CONFIGURATION${TN}"
  local _config
  echo "---- Select configuration file:"
  echo "${TB}1)${TN} Default"
  echo "${TB}2)${TN} Zen2"
  echo "${TB}3)${TN} X270"
  while true ; do
  	read -p "Enter number (1-3): " _config
	  case ${_config} in
		1) cat ../config.x86_64 > ./.config && break ;;
		2) cat ../config.zen2 > ./.config && break ;;
		3) cat ../config.x270 > ./.config && break ;;
		*) echo "Please enter a number (1-3)!" && continue ;;
  	  esac
  done

  if [[ ${_signing} -eq 1 ]] ; then
    cat ${_key} > ./certs/vd510-kernel-key.pem
    cat ${_pubkey} > ./certs/vd510-kernel-pubkey.pem
    sed -i "s|signing_key|vd510-kernel-key|" ./.config
    sed -ri "s|^(CONFIG_SYSTEM_TRUSTED_KEYS=).*|\1\"certs/vd510-kernel-pubkey.pem\"|" ./.config
  else
    cat ../x509.genkey > ./certs/x509.genkey
  fi

  # get kernel version
  make $LLVMOPTS prepare
  make $LLVMOPTS -s kernelrelease > version
  printf '\n'
  printf "  Prepared %s version %s" "$pkgbase" "$(<version)"
  printf '\n'
  read -p "---- Enter 'y' for nconfig: " NCONFIG
  [[ $NCONFIG = "y" ]] && make $LLVMOPTS nconfig || continue

  # rewrite configuration
  yes '' | make $LLVMOPTS config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  # build!
  make $LLVMOPTS $MAKEFLAGS LOCALVERSION= bzImage modules
  make $CLANGOPTS -C tools/bootconfig
}

package_linux510-vd() {
  pkgdesc="The ${pkgbase/linux/Linux} vd kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27')
  optdepends=('crda: to set the correct wireless channels of your country')
  provides=(VIRTUALBOX-GUEST-MODULES)
  replaces=(linux510-vd-virtualbox-guest-modules)

  cd "${srcdir}/linux-${_basekernel}"

  local kernver="$(<version)"
  local modulesdir="$pkgdir/usr/lib/modules/$kernver"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}

  # systemd expects to find the kernel here to allow hibernation
  # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
  install -Dm644 "$(make $CLANGOPTS -s image_name)" "$modulesdir/vmlinuz"

  # Used by mkinitcpio to name the kernel
  echo "${pkgbase}" | install -Dm644 /dev/stdin "$modulesdir/pkgbase"
  #echo "${kernelbase}-${CARCH}" | install -Dm644 /dev/stdin "$modulesdir/kernelbase"

  # make room for external modules
  local _extramodules="extramodules-${pkgbase}"
  ln -s "../${_extramodules}" "$modulesdir/extramodules"
  # add real version for building modules and running depmod from hook
  echo "${kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  echo -e "\n${TB}* INSTALLING MODULES${TN}"
  make $CLANGOPTS $MAKEFLAGS LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" INSTALL_MOD_STRIP=1 modules_install

  # remove build and source links
  rm $modulesdir/source
  rm $modulesdir/build
  [[ -f ./certs/vd510-kernel-key.pem ]] && rm ./certs/vd510-kernel-key.pem

  # add mkinitcpio preset (not strictly needed)
  install -Dm644 "$srcdir/${pkgbase}.preset" "$pkgdir/etc/mkinitcpio.d/${pkgbase}.preset"
}

package_linux510-vd-headers() {
  pkgdesc="Header files and scripts for building modules for ${pkgbase/linux/Linux} vd kernel"

  cd "${srcdir}/linux-${_basekernel}"
  local kernver="$(<version)"
  local _builddir="${pkgdir}/usr/lib/modules/${kernver}/build"

  echo -e "\n${TB}* INSTALLING HEADERS${TN}"
  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers System.map version vmlinux localversion.* || exit 32
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile
  install -Dt "${_builddir}/arch/x86" -m644 "arch/x86/Makefile"
  #mkdir "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  # add objtool for external module building and enabled VALIDATION_STACK option
  install -Dt "${_builddir}/tools/objtool" tools/objtool/objtool
  # add bootconfig tool
  install -Dt "${_builddir}/tools/bootconfig" tools/bootconfig/bootconfig

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  cp -t "${_builddir}/arch/x86" -a "arch/x86/include"
  install -Dt "${_builddir}/arch/x86/kernel" -m644 "arch/x86/kernel/asm-offsets.s"
  #install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/macros.s"

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

  # remove unneeded stuff
  echo -e "\n${TB}* REMOVING UNNEEDED FILES${TN}"
  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */x86/ ]] && continue
    rm -r "${_arch}"
  done

  # remove files already in linux-docs package
  rm -r "${_builddir}/Documentation"

  # remove broken symlinks
  find -L "${_builddir}" -type l -printf 'Removing %P\n' -delete

  # remove loose objects"
  find "${_builddir}" -type f -name '*.o' -printf 'Removing %P\n' -delete

  # strip scripts directory
  echo -e "\n${TB}* STRIPPING${TN}"
  local file
  while read -rd '' file; do
    case "$(file -bi "$file")" in
      application/x-sharedlib\;*)      # Libraries (.so)
        strip -v $STRIP_SHARED "$file" ;;
      application/x-archive\;*)        # Libraries (.a)
        strip -v $STRIP_STATIC "$file" ;;
      application/x-executable\;*)     # Binaries
        strip -v $STRIP_BINARIES "$file" ;;
      application/x-pie-executable\;*) # Relocatable binaries
        strip -v $STRIP_SHARED "$file" ;;
    esac
  done < <(find "${_builddir}" -type f -perm -u+x ! -name vmlinux -print0)
  
  strip -v $STRIP_STATIC "${_builddir}/vmlinux"
}
