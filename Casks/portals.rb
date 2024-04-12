cask "portals" do
  version "ockam_v0.121.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.121.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "5fefd19afdb5c362e8fabb183383dc2ddc87803c2d160470f378b19f00cd25e0"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.121.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "1ba12f6ce33e1b2167758f6a55c29f6b6b18edf3f8b824be88187a718c87fe06"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
