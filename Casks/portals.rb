cask "portals" do
  version "ockam_v0.132.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.132.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "1c278a128c34b5d4065dbd21eb47feb5ca5e21890e3a33af4e267bfa07555172"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.132.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "83cb3a050141191eac62149449759c15b2b81fb19a6824375dcabb18880aae07"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
