cask "portals" do
  version "ockam_v0.114.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.114.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "f47cad932017ea9152eb52e1722cb8e81602ba775d9ab5eca1ed48bfc78f7136"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.114.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "d543135eabd58621febc4334163d047c40c058dd6b64bc7c5e4de18a6b1fe515"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
