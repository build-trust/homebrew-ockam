cask "ockam-app" do
  version "ockam_v0.93.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.93.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "568dd9083cc42e655f14deec7fe957f04b4afedb44be30c708136a023268df8c"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.93.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "665367c8660a213a998d9d8c4d45de85d980bf148de66916fd76cdd02b4f514e"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
