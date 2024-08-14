cask "portals" do
  version "ockam_v0.133.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.133.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "09fa18e6597739f02b8bef12e1470c43a6ccacecb859bd38aa5965c5407a0162"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.133.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "666a44c19587ca2417d841149be96813a891f315b1158659c043ae85d1473cf1"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
