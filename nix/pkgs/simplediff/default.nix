{
    stdenv,
    fetchPypi,
    pkgs
}:

pkgs.python3Packages.buildPythonApplication rec {
  name = "simplediff-${version}";
  pname = "simplediff";
  version = "1.0";
  src = fetchPypi {
    inherit pname version;
    hash = "sha256-V0doszxnFBkOrwVd3RrobAcj6JxYFcPwkAJkXGRTYLY=";
  };

}
