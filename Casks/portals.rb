cask "portals" do
  version "ockam_v0.119.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.119.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "44216ea4514584226d2eabe103196be95671df9642a59e83d146f4569b5b1a14"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.119.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "94bc6b7e14e00126808fee192de78870260031d3cc36dad4293cbfe32aa7c4f1"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
