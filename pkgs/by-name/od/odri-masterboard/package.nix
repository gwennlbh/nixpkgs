{
  fetchFromGitHub,
  fetchgit,
  stdenv,
  cmake,
  python312,
  python312Packages,
}:

stdenv.mkDerivation rec {
  pname = "odri-masterboard";
  version = "1c152c810dbb5e8c7bea0a3139b06e9d2286ad72";

  src = fetchgit {
    #url = "https://github.com/open-dynamic-robot-initiative/master-board";
    url = "https://github.com/gwennlbh/master-board";
    # repo = "odri_control_interface";
    rev = version;
    # sha256 = "sha256-jeZFgAW8C+UCeW+TtV1fNJZR7yuWcpiQnepsbkNanPg=";
    hash = "sha256-3vx3bOQkFnZXZ4jSh89Se7T8t6VpfL+JV3sVHz8+X78=";
    sparseCheckout = [
      "sdk/master_board_sdk"
    ];
    fetchSubmodules = true;
  };

  sourceRoot = "${src.name}/sdk/master_board_sdk";

  nativeBuildInputs = [
    cmake
    python312
    python312Packages.boost
  ];
}
