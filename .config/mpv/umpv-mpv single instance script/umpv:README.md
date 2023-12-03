# umpv: Unified mpv Player

## Installation

1. Check if either `~/bin` or `~/.local/bin` is in your PATH:

    ```bash
    echo $PATH
    ```

2. Copy the `umpv` script to the desired directory (e.g., `~/bin` or `~/.local/bin`).

3. Make the script executable:

    ```bash
    chmod u+x umpv
    ```

4. If everything works as expected, add an alias to use `umpv` instead of `mpv` by adding the following line to your `.bashrc` or `.bash_profile`:

    ```bash
    alias mpv='umpv'
    ```

5. Logout and login again for the changes to take effect.

6. Follow umpv:KDE.md for KDE integration.

## Usage

- Launch videos with `umpv`:

    ```bash
    umpv file1.mp4
    ```

- To replace the current `umpv` instance with a new file, use the `--replace` option:

    ```bash
    umpv --replace file2.mp4
    ```

## Source

- Find the latest version and contribute on [GitHub Source for umpv](https://github.com/mpv-player/mpv/blob/master/TOOLS/umpv).

Now, calling `mpv` in your terminal should invoke `umpv` instead.

---

