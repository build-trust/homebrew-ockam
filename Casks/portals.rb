cask "portals" do
  version "ockam_v0.125.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.125.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "d57dc207765a4344bea7c68ef27a08af78b2392745602f14573f7b4f834530fb"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.125.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "8a56df0440daac6b858c4474e3ad4664a80dc0dd8a1e0b03075211194b2b8224"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
