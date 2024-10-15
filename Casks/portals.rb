cask "portals" do
  version "ockam_v0.135.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.135.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "e111587469d48a25a85cd96e6a98a5eb5d190cdd588d9da450d59e4a636a579e"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.135.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "2e7aa66883789356ffee45b35d463fdd53bcb7eb9e3619401a122ad7fc7ec28e"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
