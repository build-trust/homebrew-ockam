cask "portals" do
  version "ockam_v0.124.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "99d0a63e42b682ec7f305299fe20288a5415ad465048375a21db5e41b06e0771"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "08d431c4007f921ea262ef95202b130612668547e0b725e49e0354a50fa90084"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
