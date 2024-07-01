cask "portals" do
  version "ockam_v0.128.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.128.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "de1ec96eb710c207efa3e165d5397b0a945867b0592cb86d8b5e28f0f571da28"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.128.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "b594c0e7fd19b7fe5ff87bc414a9138a6e3633286779e6592143afae89d98b13"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
