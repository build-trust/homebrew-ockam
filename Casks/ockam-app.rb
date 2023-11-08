cask "ockam-app" do
  version "ockam_v0.102.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.102.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "83bb08b6700695dc7f002eb05c2f1467bd41b9e8e073022f4a49bd4fe0ee37cf"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.102.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "d5ee1e92618a788c21b6d991d6d1ec3ed2130fd001d0c28befa1c5cac5477884"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
