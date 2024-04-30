cask "portals" do
  version "ockam_v0.123.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.123.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "7e3b4c3a4de901ca8a263c7dec0eadae363503d73d4d20a33d8cc03697903221"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.123.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "4d090b5c96ed155707b83b332161ece687e1277b4f0e811523a9b5993f05ffdc"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
