makepkg-tidy-bleachbit
===

A `libmakepkg` tidy extension that uses `bleachbit` to remove various
unnecessary files from packages.
For the moment, only removes unused locales, based on `bleachbit`'s own logic
for what counts as an unused locale.
You should be CAREFUL about using this if you use multiple locales.

## Installation
Drop `tidy_bleachbit.sh` into `/usr/share/makepkg/tidy`.
I'm not providing an AUR package since this could remove files you actually want
and I haven't tested it extensively.

To enable it during a `makepkg` run, see below.

## Usage

Add one or more of the following to the `OPTIONS` array used by `makepkg`.
This can be done on a per-`PKGBUILD` basis, or in `/etc/makepkg.conf`.

- `bleachbit`: removed unused locales.

I may extend this in future to enable more features.

For example, my `OPTIONS` array in `/etc/makepkg.conf` is the following:

```
OPTIONS=(strip docs !libtool !staticlibs emptydirs zipman purge ect bleachbit !debug)
```
