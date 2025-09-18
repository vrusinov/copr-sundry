{
    stdenv,
    fetchPypi,
    pkgs
}:

pkgs.python3Packages.buildPythonApplication rec {
  pname = "simplediff";
  version = "1.1";
  src = fetchPypi {
    inherit pname version;
    hash = "sha256-2ynoLGTswIPjYwi1hPxImFIlQh+Fy2TYmTKTNK3jK9o=";
  };

}
