<img height=100 align="right" src="https://fosskers.github.io/aura/logo.png">

# Aura

#### Links

[GitHub](https://github.com/fosskers/aura)

[Docs](https://fosskers.github.io/aura/introduction.html)

#### Useful commands

##### Updating packages
- `sudo aura -Sayu` updates all official packages.
- `sudo aura -Aayu` updates all AUR packkages.

##### Searching packages
- `aura -Ss <word>` searches package from the official repos.
- `aura -As <word>` searches package from the AUR.
- `aura -Asr <word>` searches package from both official and repos. `--head[=N]` shows N first results only (10 by default).

##### Installing packages
- `aura -Ap <pkg>` shows PKGBUILD file.
- `aura -Aa <pkg>` installs package and removes makedepends.
- `aura -A --hotedit <pkg>` will let you edit a PKGBUILD file before building.
- `aura -Ax <pkg>` displays makepkg output.
- `aura -Ak <pkg>` shows PKGBUILD changes.
- `aura -A --noconfirm <pkg>` accepts all prompts automatically.

##### Removing packages
- `sudo aura -Rsu <pkg>` removes package and all unneeded dependencies.

##### Querying system
- `aura -Q` provides list of installed packages.
- `aura -Qi <pkg>` searches and shows information about package.
- `aura -Qs <regexp>` searches locally-installed package.
- `aura -Ql <pkg>` discovers which files are brought in by a package. Use `grep` to filter result: `aura -Ql <pkg> | grep bin`.
- `aura -Qo <file>` discovers what package owns a certain file.

##### Cache
Pacman and Aura store built packages in `/var/cache/pacman/pkg/`.
- `aura -Cs <pkg>` shows what's available in the chache.
- `aura -C <pkg>` downgrades package.
- `sudo aura -Cc <int>` 
- `sudo aura -Sc` removes the tarballs of uninstalled packages.
- `sudo aura -Scc` removes all tarballs.

##### Orphan packages
- `aura -O` displays all orphans.
- `sudo -Oj` uninstalls all orphans.

##### Snapshots
Aura saves snapshots to `/var/cache/aura/states/`.
- `aura -Bl` shows existing snapshots.
- `sudo aura -B` creates snapshot.
- `sudo aura -Br` restores a package set.
- `sudo aura -Bc <int>` clears out old saved states. Change `pinned` field from `false` to `true` inside the `.json` file of a state in order to `-Bs` command don't remove them.

##### Logs
- `aura -L` opens log file in `less`.
- `aura -Ls <regexp>` returns matched lines.
- `aura -Li <pkg>` opens all logs for a package.
