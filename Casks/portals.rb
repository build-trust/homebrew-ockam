cask "portals" do
  version "ockam_v0.140.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "72788957dca757972b1b1f35032ffdf559b84c19368bfc48404c7d8f3505ba04"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "f41ab620b484879bb931a4a956172003ea31714e9449387687bdfdb196b97417"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
