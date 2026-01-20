{
  description = "NVF Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };
  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
      {
      packages.${system} = {
        default =
          (inputs.nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [
              ./keymaps
              ./autocommands
              ./options
              ./plugins
              ./languages
              {
                config.vim = {
                };
              }
            ];
          }).neovim;
      };
    };
}
