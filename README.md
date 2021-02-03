# gitpod-pharo

Add the gitpod extension to your browser, then press the gitpod button when viewing this repository.
A gitpod workspace will open including theia (similar to vscode) and also a novnc brrowser window to
the gitpod workspace where the pharo launcher will be running.

## Explanation

On the road to gtoolkit running within gitpod. As discussed in the discord gtoolkit help channel, there
is a graphics issue running gtoolkit in gitpod related to Skia and/or glutin.

Therefore this repo is a step away from gtoolkit and is using pharo 9.0 for development in the mean time.

Gitpod is a theia/vscode virtual development environment.

The goal for this repo is to implement and demonstrate vscode supoort for smalltalk scripting:

1. (Possibly) a self-contained vscode extension for smalltalk syntax. This necessarily would be implemented in typescript
2. A vscode client using lsp (language server protocol) to get syntax errors and code completions from a running pharo vm
3. Some way of transmitting smalltalk files and selections for execution in the vm and returning the output

**Pharo provides code completion natively in its environment. If there is already some kind of external repl client,
telnet even, that has code completion then please open an issue and inform me to prevent duplicated effort.**

### Notes

The vnc resolution is set [here in pharo.dockerfile](https://github.com/markfirmware/test36/blob/f37b386846177b734fc2cfcbe4ed0ea951a37df5/pharo.dockerfile#L4)

Gitpod does not persist $HOME (/home/gitpod) but does persist /workspace/REPO_NAME.
Therefore pharo is started with:

    HOME=$(pwd) ./pharolauncher/pharo-launcher

as seen in [.gitpod.yml](https://github.com/markfirmware/test36/blob/cbd8f2e34b905e08c9e3e6cdc24a931b78b6d466/.gitpod.yml#L13)