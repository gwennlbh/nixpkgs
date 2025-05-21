{
  fetchFromGitHub,
  fetchgit,
  stdenv,
  cmake,
  python312,
  python312Packages,
}:

stdenv.mkDerivation rec {
  pname = "odri-masterboard-sdk";
  version = "9388c843e569d5bd3cd836f442ddfef43c8a7528";

  src = fetchgit {
    url = "https://github.com/open-dynamic-robot-initiative/master-board";
    rev = version;
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
