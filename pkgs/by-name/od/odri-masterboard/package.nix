{
  fetchFromGitHub,
  fetchgit,
  stdenv,
  cmake,
}:

stdenv.mkDerivation rec {
  pname = "odri";
  version = "1.0.1";

  src = fetchgit {
    url = "https://github.com/open-dynamic-robot-initiative/master-board";
    # repo = "odri_control_interface";
    rev = "v${version}";
    # sha256 = "sha256-jeZFgAW8C+UCeW+TtV1fNJZR7yuWcpiQnepsbkNanPg=";
    hash = "sha256-8Yw79we53PE9HHu2j95DR4PJi/MZVtunpFA2at7+4Uk=";
    sparseCheckout = [
      "sdk/master_board_sdk"
    ];
    fetchSubmodules = true;
  };

  sourceRoot = "${src.name}/sdk/master_board_sdk";

  nativeBuildInputs = [ cmake ];
}


