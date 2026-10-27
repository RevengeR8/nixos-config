{
  
  description = "Endix Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, ... }: {
    nixosConfigurations.Endix = 
      nixpkgs.lib.nixosSystem {
      	system = "x86_64-linux";

	modules = [
	  ./configuration.nix

	  home-manager.nixosModules.home-manager

	  {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.nik = import ./home.nix;
	  }

	  {
	    environment.systemPackages = [
              zen-browser.packages."x86_64-linux".twilight
	    ];
	  }
	];
      };
  };

}

