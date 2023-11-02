cask "ockam-app" do
  version "ockam_v0.101.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.101.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "c9e160c66b6700216ca6b768ae7db3a62e4891c1c38f2cfe96bb51398c240730"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.101.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "039d2c167c6ead46f8fc95a0a4d9b8fccead518608ee3d0bdbae66af4ade9725"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
