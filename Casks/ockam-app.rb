cask "ockam-app" do
  version "ockam_v0.106.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.106.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "90b4d373a5eecf2c90a313d14735d625dc577bbe2934731363cbee2f20fb9fdb"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.106.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "962bf88b9e4855d32d17a7c2b1d66c3083530d6c041785639ff570b1a417520a"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
