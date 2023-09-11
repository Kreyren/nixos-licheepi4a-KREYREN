{
  stdenv,
  fetchurl,
}:
stdenv.mkDerivation {
  pname = "light_c906_audio-firmware";
  version = "unstable-2023-06-25";

  src = fetchurl {
    url = "https://github.com/chainsx/fedora-riscv-builder/raw/f35095c9f45b42addb1b0d0e9185ca8ff04ed870/firmware/light_c906_audio.bin";
    hash = "sha256-hv9OQhc6cH7swqVrhPhIxgUsgH4JMiOjw+DRWcK9nNQ=";
  };

  buildCommand = ''
    install -Dm444 $src $out/lib/firmware/light_c906_audio.bin
  '';
}
