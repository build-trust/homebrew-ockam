cask "ockam-app" do
  version "ockam_v0.103.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.103.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "a3337b8140f10d16844f3ddec3fbd1c0ca956ff6ffb5905bf0637e7c60cd10d8"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.103.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "69c9eadfec39a09320d4c2a838f9624fb1989d07cce7d2cccc8594f09ef3ace7"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
