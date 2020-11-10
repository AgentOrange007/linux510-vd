## vd kernel 5.10 for EndeavourOS, Garuda and Arch
#### Features:
- better support for clang with LTO
- graysky's CPU optimisations
- Steam futex/fsync patch
- Patches from SirLucjan's repo
- Clear Linux patches
- optimised defaults for module, kernel and initram compression
- little tweaks to vm/vfs/cfs settings

#### Credits to all kernel devs and:
- Holger Hoffstätte
- SirLucjan (Piotr Gorski)
- LKML
- Manjaro
- Arch
- StackOverflow
- EndeavourOS

**Notes:**
- signing is disabled by default, and an auto-generated key will be used. It can be enabled by setting `_signing=1`. 
- if you decide to enable it, make sure to adapt the paths to your preexisiting keys. See kernel documentation on how to generate keys.
- building with clang is disabled by default, enable by setting `_clang=1`.
