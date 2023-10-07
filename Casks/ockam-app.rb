cask "ockam-app" do
  version "ockam_v0.97.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.97.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "d389e5d8b9bfc81406c0af9ea04a31d8f29eabbe1f59596bfa60b792d3a05f30"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.97.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "6350d553e30f2418ca0d4c29ed852cbfa7ec47263e75984aab1c1f6c3d5fe054"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
