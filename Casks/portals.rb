cask "portals" do
  version "ockam_v0.113.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.113.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "f6acc208b4c9c11c5dd0d58682f883e9e15114c998b91537e4af91d0b09f7942"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.113.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "5b7d58e4363c0b789d65326f7cbdaa7302eca5fb55cac49c9938b62afeacfea2"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
