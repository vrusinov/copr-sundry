# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

{
  description = "vrusinov sundry flake NUR repository";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  outputs = { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
    in
    rec {
      legacyPackages = forAllSystems (system: import ./nix/default.nix {
        pkgs = import nixpkgs { inherit system; };
      });
      packages = forAllSystems (system: nixpkgs.lib.filterAttrs (_: v: nixpkgs.lib.isDerivation v) self.legacyPackages.${system});

      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          fhs = pkgs.buildFHSEnv {
            name = "fhs-shell";
            targetPkgs = pkgs: [
              pkgs.git
              pkgs.nodejs_24  # For pre-commit hooks
              pkgs.ruby_3_4  # For pre-commit hooks
            ];
          };
        in
        {
          default = fhs.env;
          # default = pkgs.mkShell {
          #   buildInputs = with pkgs; [
          #     git
          #     ruby
          #     nodejs
          #   ];
          # };
        });
    };
}
