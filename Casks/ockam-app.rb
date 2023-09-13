cask "ockam-app" do
  version "ockam_v0.92.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.92.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "354d99a97cf8e02b739d311325999424d16a5f782d83701c0351bab86dce2ef0"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.92.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "ba7484cca3fa461e14bdb792e81a3126161ce099f755e489c52cb12ca89969ec"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
