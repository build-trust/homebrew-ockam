cask "ockam-app" do
  version "ockam_v0.100.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.100.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "c46808cb428ab478a27d22c78be501f6b97e21d59c5746122ba4f61374e817ad"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.100.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "7ce5544d28a922234f73195e7f0800db435bc82b82eb5a79e4f321fbb9746021"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
