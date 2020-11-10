# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer (vd): torvic9

pkgbase=linux510-vd
pkgname=('linux510-vd' 'linux510-vd-headers')
_basekernel=5.10
_kernelname=-vd
_sub=0
_rc=rc3
pkgver=${_basekernel}.${_sub}${_rc}
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
source=(https://git.kernel.org/torvalds/t/linux-${_basekernel}-${_rc}.tar.gz
    #https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-${pkgver}.tar.{xz,sign}
    # the main kernel config files
    'config.x86_64' 'config.x270' 'config.zen2' 'x509.genkey' "${pkgbase}.preset"
    #
    # Prepatch from stable-queue
    #"prepatch-${_basekernel/./}-g${_stablequeue}.patch"
    #
    # patchsets
    0001-sched-tip-picks-20201110.patch
    0002-sched-delayed-thread-migration.patch
    0003-vfs-hho-patches.patch
    0004-update-to-zstd-146.patch
    0005-futex-proton-v3-sirlucjan.patch
    #0006-syscall-user-dispatch-v6.patch
    # Arch patches
    0007-arch-patches510-${_archpatch}.patch::https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.9/arch-patches-v5/0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-C.patch
    # CPU patches
    0008-graysky-cpu-optimizations.patch
    0009-init-kconfig-enable-O3.patch
    # Clear Linux
    0010-clearlinux-tweak-intel-cpuidle.patch
    0011-clearlinux-add-config-opt-for-raid6-bench.patch
    # fix barrier_data on clang
    0012-fix-barrier_data-on-clang.patch
    # RAPL for AMD 17h+19h
    0013-powercap-enable-rapl-for-fam17h-and-fam19h.patch
    # Nuvoton nc677x driver
    0014-i2c-nuvoton-nc677x-hwmon-driver-git.patch::https://gitlab.com/CalcProgrammer1/OpenRGB/-/raw/master/OpenRGB.patch
    #
    # MANJARO Patches
    #
    # vd patches
    1001-add-acpi_call-module.patch
    1002-tune-vm-mm-and-vfs-settings.patch
    1003-tune-cfs-settings.patch
    1004-tune-cpufreq-ondemand-settings.patch
    1005-optimize-compression-options.patch
    #
    # Project C (BMQ+PDS)
    #2001-projectc59-${_prjc}.patch::https://gitlab.com/alfredchen/linux-prjc/uploads/e8077274ea1c74e0c9f5bce44be51243/prjc_v5.9-r1.patch
    #2002-projectc59-${_prjc}.patch::https://gitlab.com/alfredchen/linux-prjc/-/commit/c6e352a26de8e46f5737fed2b876516df82adad1.patch
    #
    # Cachy scheduler (xanmod)
    # 3001-cachy-5.9-${_cachy}.patch::https://raw.githubusercontent.com/hamadmarri/cachy-sched/master/patches/v5.9/cachy-5.9-${_cachy}.patch
    #
)

validpgpkeys=(
  'ABAF11C65A2970B130ABE3C479BE3E4300411886'  # Linus Torvalds
  '647F28654894E3BD457199BE38DBBDC86092693E'  # Greg Kroah-Hartman
)

sha256sums=('6d9f639bbfa060ffa35440b3ae4b2242f004cee891c3a03ffcd6b42bb3f9fc23'
            '759d0cb374578762f270a6e308a1b0fb69bf6c283d164d08ad89b98db4649a05'
            'b13308947048c603cf45d9cc3ff7b1e012ed20cbc2189f938dbea171de3302eb'
            'de09b83dc3ec14e23d5fca678ee1f198c00e32c4cb5014b3d1d47aa58e4bb730'
            'ab010dc5ef6ce85d352956e5996d242246ecd0912b30f0b72025c38eadff8cd5'
            'a61304615276572501cc8ad67929c6fc7e7f176b7abc89916b7ba7a9ce7ffc2b'
            '02c6c7aec6579116303291543f557ac1e31424fef1a732a6fe05fcf595708849'
            '4e45313d48c2a914b24e5debd7eb6b92b7214513eb06a3bfcc57b437070bf7f0'
            '5fefb657188604fc438ab2c1d3857e564eff4900388aeaacdf8789193984aab2'
            '4976b4de940b27a31fd9b4655abbdc5b61120135b63a822d925ff16e097747bf'
            'd2d114ec89abf5f8f02564f7bf66a8f6a5c119fd51340feef5a53c0999388a21'
            'b8e9973780dd75f630733a6e323897486d4d9f27d63ebefac48190e247767072'
            '429b41a987aa1a3b4975474d8b3ca2817a418435f4886e747140deed978ce284'
            'b0fa9afb5505298ba88dae3cc48d1efa0b5e8482e289122c3435ac7a7505fa32'
            'b78ab97a629579ebc27ff175eacc9162a07c9b925cebd91099c97ef509bd117d'
            'b817e7da8f4901cf2dda0f2fe7b9d8243f32a42d5729e953521ef18eec7a8eb9'
            '8fe4aa91dc4f85b04e78defd6f2b3ec318c7790731951f60b775d0e31faf4e00'
            'a5e9d15b5ccc27a65324453a7e8ae1a6fd84d5baadc9ad989de1399ee332b9f5'
            'e7d724ac15daf428aa1e6a03737e5c1d040892d55fda8a66897fcac9323f285c'
            'af447298e1c2f2dbad913df54cac31b1923acbb2fa6dcaf8f397ce3e4f319970'
            'f7a36231b794022d49e53f464d25e48f2eebf6266c2cbe5756c63aa3bf03bae7'
            'acca50a9ffee480f29bd7de6e8b5963dc0d37d3103871d75bcffdb2acce6c82d'
            '5df5b9a78427d3ab031b71f0f6a5a5ebb601fa11ff51ba65b8c2c82b0f354d4b'
            '161548d5116c32e62f261b21156369b544e1eddbacbf487dfe36c14bff6107bf')

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
	CLANGOPTS="LLVM=1"
	source+=('clang-lto-20201109.patch')
	sha256sums+=('084b5781b65ef285dfc5c779ab08be343ffa42cdc498c6916ad4e593e704db5d')
else
	CLANGOPTS=""
fi

TBOLD=$(tput bold)
TNORMAL=$(tput sgr0)

prepare() {

  cd "${srcdir}/linux-${_basekernel}-${_rc}"

  echo "-${_kernelname/-/}" > localversion.10-pkgname
  echo "-${pkgrel}" > localversion.20-pkgrel

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}`date +%Y%m%d`"

  echo -e "\n${TBOLD}* APPLYING PATCHES${TNORMAL}"
  
  # reverts needed for futex_wait_multiple FIX-ME!
  #patch -R -Np1 -i ../remove-needless-gotos.revert
  #patch -R -Np1 -i ../remove-put_futex_key.revert

  # apply patch from the source array (should be a pacman feature)
  local filename filename2
  for filename in "${source[@]}"; do
  	if [[ "$filename" =~ \.patch$ || "$filename" =~ \.diff$ ]]; then
		filename="${filename%%::*}"
		filename2="${filename#*-}"
        	echo -e "\n---- Applying patch ${TBOLD}${filename2%%.*}${TNORMAL}:"
        	patch -Np1 -i "../${filename}"
  	fi
  done

  # kernel config
  echo -e "\n${TBOLD}* KERNEL CONFIGURATION${TNORMAL}"
  local _config
  echo "---- Select configuration file:"
  echo "${TBOLD}1)${TNORMAL} Default"
  echo "${TBOLD}2)${TNORMAL} Zen2"
  echo "${TBOLD}3)${TNORMAL} X270"
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
  make $CLANGOPTS prepare
  make $CLANGOPTS -s kernelrelease > version
  printf '\n'
  printf "  Prepared %s version %s" "$pkgbase" "$(<version)"
  printf '\n'
  read -p "---- Enter 'y' for nconfig: " NCONFIG
  [[ $NCONFIG = "y" ]] && make $CLANGOPTS nconfig || continue

  # rewrite configuration
  yes "" | make $CLANGOPTS config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}-${_rc}"

  # build!
  make $CLANGOPTS $MAKEFLAGS LOCALVERSION= bzImage modules
  make $CLANGOPTS -C tools/bootconfig
}

package_linux510-vd() {
  pkgdesc="The ${pkgbase/linux/Linux} vd kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27')
  optdepends=('crda: to set the correct wireless channels of your country')
  provides=(VIRTUALBOX-GUEST-MODULES)
  replaces=(linux510-vd-virtualbox-guest-modules)

  cd "${srcdir}/linux-${_basekernel}-${_rc}"

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

  echo -e "\n${TBOLD}* INSTALLING MODULES${TNORMAL}"
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

  cd "${srcdir}/linux-${_basekernel}-${_rc}"
  local kernver="$(<version)"
  local _builddir="${pkgdir}/usr/lib/modules/${kernver}/build"

  echo -e "\n${TBOLD}* INSTALLING HEADERS${TNORMAL}"
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
  echo -e "\n${TBOLD}* REMOVING UNNEEDED FILES${TNORMAL}"
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
  echo -e "\n${TBOLD}* STRIPPING${TNORMAL}"
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
