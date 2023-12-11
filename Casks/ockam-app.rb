cask "ockam-app" do
  version "ockam_v0.108.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.108.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "5cd3b2f4fc21635d61b7366e653d15792ec223b22ba06a326a2f365ad075fcbc"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.108.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "d2c5d0d7644329c800b40b20278bc384e4acedb312a014d23adbc5d21f4cc6c5"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
