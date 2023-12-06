cask "ockam-app" do
  version "ockam_v0.107.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.107.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "2ae6865eef8d0ef1bb149adc3d76f25c8bc21938a6b50ac4ec1b1c0d718b3c07"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.107.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "64511149d1bb952d5d569398d8d7701fd974f54957c35caccef4b73d01a04e71"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
