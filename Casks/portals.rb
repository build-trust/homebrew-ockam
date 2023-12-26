cask "portals" do
  version "ockam_v0.114.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.114.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "874cde48cc7b29d6296d786b48abdf1be99e6b5fde0c479581913d6ab1e1a9bf"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.114.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "986a911d78e2dc6369d910dcb95c88d2a2486ee3b0663673d4fdf424396594b9"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
