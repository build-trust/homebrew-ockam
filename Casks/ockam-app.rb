cask "ockam-app" do
  version "ockam_v0.105.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.105.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "cce407a3a47ae337fbe37dce84d4c2f3fadd7a06f1380b903c689ab2f066ddb8"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.105.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "042966c97ee103fdc83543efb0a24fe871d407ba5ec47f6360cd6ecedb227fb3"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
