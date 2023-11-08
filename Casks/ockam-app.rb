cask "ockam-app" do
  version "ockam_v0.102.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.102.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "9274411e4757df65724657ddad73d37734a9096797540b18ecb1350ea1f7bfdf"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.102.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "de704e3e86f18c1ae4e64f4f4cd1be2e872837011e3844ed9d2d6418a7fc24c9"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
