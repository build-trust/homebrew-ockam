cask "portals" do
  version "ockam_v0.131.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.131.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "61018676270d3a6e892bd02fcd1c87141dcfca9abc5dc63dec9e3d4387a0d136"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.131.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "a8d202ae0e62d4f1d91d29fdc52a85f089f816e366fca43d521da47b6a64ef70"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
