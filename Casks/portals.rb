cask "portals" do
  version "ockam_v0.124.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "84569c9dd703c40c7b8cdb8936b05dac3a29e623784d427d0f4eef7eec0dc716"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "10b90d02dfbf75981e44a006460aca6b44bbe8f3162f35fe9a1bce0824b865a1"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
