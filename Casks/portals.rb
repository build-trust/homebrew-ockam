cask "portals" do
  version "ockam_v0.126.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "4f2672f8e96b73b128583e21efcb9740b82d5d7733c4abafb8e6f0fdb5d4fa37"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "a59d92393500d26ccb3a9fc3b275b8a17e2fe1038d3f33461acbbaad45c4cd15"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
