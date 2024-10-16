cask "portals" do
  version "ockam_v0.136.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.136.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "615c0d16993a421882eaed01682833d01ac46610aa5d524c6d4fce07ce8a4934"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.136.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "8673ecc8b77b2be54a50490ec6ab32f7ed7e748fe72676c8f2061b9e2b01da62"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
