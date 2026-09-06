{
  
  description = "Endix Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.Endix = 
      nixpkgs.lib.nixosSystem {
      	system = "x86_64-linux";

	modules = [
	  ./configuration.nix
	];
      };
  };

}

