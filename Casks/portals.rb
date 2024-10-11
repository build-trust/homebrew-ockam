cask "portals" do
  version "ockam_v0.135.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.135.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "09b612ce6d2c5b3d766c5cb8d287c5dee78bab04e6fb627c66cbaf1f3102935f"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.135.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "e93b5cb7f4da7999f64fa7a19b45e5b2b6deffdda98b290326c047bfbd6edef0"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
