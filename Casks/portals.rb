cask "portals" do
  version "ockam_v0.121.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.121.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "212c3f3f6076b2978c1959e7407fcd005630cd99e13b62f5ab9b846d88924c5b"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.121.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "4c25ff86520c6dd0c75624ff39fde1ecf266211ebbc0c8df399f6ca5fc2955a1"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
