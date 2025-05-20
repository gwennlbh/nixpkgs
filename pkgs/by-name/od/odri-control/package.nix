{
  fetchFromGitHub,
  fetchgit,
  stdenv,
  cmake,
  yaml-cpp,
  eigen,
}:

stdenv.mkDerivation rec {
  pname = "odri";
  version = "1.0.1";

  src = fetchgit {
    url = "https://github.com/open-dynamic-robot-initiative/odri_control_interface";
    # repo = "odri_control_interface";
    rev = "v${version}";
    # sha256 = "sha256-jeZFgAW8C+UCeW+TtV1fNJZR7yuWcpiQnepsbkNanPg=";
    hash = "sha256-NGsgrSyhD2fFTm/IqgdqXw7aMEwD7QSsPDhjDm+50qQ=";
    fetchSubmodules = true;
  };


  nativeBuildInputs = [ cmake yaml-cpp eigen ];
}


