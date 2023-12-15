cask "portals" do
  version "ockam_v0.110.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.111.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "bf9143360d367a140c399080a9f8dad194653c684f8cd964dba18f212fde4247"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.111.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "e6640ee18c4c9e53dcd0720b7ed55b2f8d44bbbcfcddbf388600311e9ef7a713"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.app"
end
