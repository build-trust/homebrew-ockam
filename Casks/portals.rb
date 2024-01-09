cask "portals" do
  version "ockam_v0.116.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.116.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "de8ad510353241b9e1a48d4f58f552a5cd5eb2010c4b8702b61587b0b7636c3d"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.116.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "3ad6e21b858541a17a074f3cbf70e8510dd69ee9cfce16eddca2ddd2974b9763"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
