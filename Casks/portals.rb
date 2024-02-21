cask "portals" do
  version "ockam_v0.117.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "7d557929a48a8a349671acd7cdd08c4cbf8d6a9c634f01a271705d795df78708"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "2f2c401694f38174daa4bc2f808f9df6985cb79a4c15043603131235d4b9e631"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
