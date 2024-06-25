cask "portals" do
  version "ockam_v0.127.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.127.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "17d5fcaad373a986406cef4031461d52daef78fa6286c4cac0706ff7ed0dc276"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.127.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "be3d54201a74ee1a19a2d714a6ce2d50bbe79f7eac7d21a57b2ae9789583c28e"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
