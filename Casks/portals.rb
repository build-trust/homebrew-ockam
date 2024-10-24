cask "portals" do
  version "ockam_v0.139.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.139.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "fc57af58443056871b78854429d6346a78e109730703298da0a9fd91ce33296d"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.139.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "da7e3428af2a5acdcd97398e12962996613638640b71ba1fc862743531a40281"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
