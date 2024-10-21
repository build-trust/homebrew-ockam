cask "portals" do
  version "ockam_v0.137.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.137.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "d35dd53d0d08ac6939378ff8970a24386eca6fdf9b4f2d702ba6effc1b616867"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.137.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "87a27b8a48f4d57c02a4be67423f31644ab905faf2dd919ff774e40d5d409d16"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
