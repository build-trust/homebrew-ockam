cask "portals" do
  version "ockam_v0.115.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.115.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "14aad632a742b4dbe087b71cbd0e88230f8e63d747c2dc83bfad44a4af24aa5d"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.115.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "0cd1789dd2eeab16e782994d24fd4cf31ea1b2ee8654bdb8c72cd2ebe33f0246"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
