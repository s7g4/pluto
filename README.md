# ZED-PLUTO: Zed Extension for Pluto
This Zed extension provides syntax highlighting support for the pluto language, using the [tree-sitter-pluto](https://github.com/s7g4/tree-sitter-pluto) parser.

Refer to the official Zed documentation for language extensions at [https://zed.dev/docs/extensions/languages](https://zed.dev/docs/extensions/languages).

## Steps to Set Up the ZED-PLUTO Extension

### Step 1: Create the Extension

1. Create a new directory for your Zed extension (e.g., `ZED-PLUTO`).

2. Create the `extension.toml` File  
Inside the `ZED-PLUTO` directory, create a file named `extension.toml` with the basic info and the following content:

```toml
[grammars.pluto]
repository = "https://github.com/pupli/tree-sitter-pluto"
commit = "COMMITID"  # Replace COMMITID with the actual commit ID you want to use
```

3. Configure the Language in `config.toml`  
Inside a `language/cypher` directory, create a `config.toml` file with basic configuration settings for the Cypher extension.

4. Define Syntax Highlighting Rules  
Inside the `language/cypher` directory, create a file named `highlights.scm` and define the rules for syntax highlighting. These rules specify how different Cypher elements (like keywords, functions, and operators) are highlighted.

### Step 2: Load as a "Dev Extension"

1. Download the extension source (for example, from the repository or your local copy).

2. Open Zed.

3. Go to **Extensions** in the menu.

4. Click **Install Dev Extension** and point to the extracted or local `ZED-PLUTO` folder.

The extension should appear in the Extensions list once loaded successfully.

### Step 3: Test the Extension

1. Create a new file with a `.pluto` extension in Zed.


## References and Acknowledgments

Many thanks to the following resources for guidance and support in creating this extension:

- [Installing Extensions in Zed](https://zed.dev/docs/extensions)
- [Zed Decoded: Extensions Blog Post](https://zed.dev/blog/extensions)
- Extension structure inspiration from [s7g4/tree-sitter-pluto](https://github.com/s7g4/tree-sitter-pluto)
