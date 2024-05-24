cask "portals" do
  version "ockam_v0.124.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "bddcca8a812c63750a461a248b82367758bd9f61fae9895b513ec52b778c82d0"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "5c6eb7cc514248f3e7d0b9651dd6cec1468ac87e0b9c5c71c9e7af183d590e9c"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
