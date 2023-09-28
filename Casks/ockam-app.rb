cask "ockam-app" do
  version "ockam_v0.95.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.95.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "9cedd65714cca9d2cf58b0bfac277bd783e81174295b3188124f5f7b4e73f83d"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.95.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "2aa74503554f97c1e8eecb238704ce418c561ec8e41386129d2be78793dc262f"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
