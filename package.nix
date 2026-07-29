{ pkgs, ... }:
pkgs.stdenvNoCC.mkDerivation {
  pname = "gallant-font";
  version = "1.0";
  src = ./.;
  dontBuild = true;
  dontConfigure = true;
  installPhase = ''
    mkdir -p $out/share/fonts/truetype/ $out/share/consolefonts/
    cp gallant.ttf $out/share/fonts/truetype/
    cp gallant.psf $out/share/consolefonts/
  '';
  meta = with pkgs.lib; {
    description = "Sun Microsystems Console Font";
    license = licenses.bsd2;
    platforms = platforms.linux;
  };
}
