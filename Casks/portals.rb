cask "portals" do
  version "ockam_v0.118.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.118.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "cc6b36464af8fac6fb01b0db4115e6d9c4d15327f8e4dc048c5ad4d668c310b9"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.118.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "93a5c214534cbec57ded0ab699f5ec16503cae67ba8813a4a7944fe901c4cb41"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
