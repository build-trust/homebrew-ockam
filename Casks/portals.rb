cask "portals" do
  version "ockam_v0.138.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.138.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "fd0a9467bcc6e062227af3770ab5c9ed4c6014d9887ade98e7b04c5d4dd5de98"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.138.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "390f11fd1aa6fd039a21eb3298d4dec284b8857f58c1932b06182dea0cae033e"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
