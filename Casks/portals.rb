cask "portals" do
  version "ockam_v0.130.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.130.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "ad6d75fd78e9bda7c73a41a87d1374769e3a9b2f30485dc5a97aabae87cdc7b9"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.130.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "151708731c8cb1c4214505f8e0801057c201d8d791b05f5f851a13e647d9ebd3"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
