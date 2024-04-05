cask "portals" do
  version "ockam_v0.120.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.120.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "1c8c229bc2f39639a4f717989daf44289186cdd5ebed00e58b70e8a8ea320b8b"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.120.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "5529c3900c6b2fb07ed826caf14bcec18af83a7cef08791aa40ae8c652199d60"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
