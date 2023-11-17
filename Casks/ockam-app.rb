cask "ockam-app" do
  version "ockam_v0.104.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.104.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "999da84be40672ace5597341d5550f486ab9d0b16491763e7cf96304b9fc14db"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.104.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "bb9649d9c73b14725055ba319cc1f6a03d64b4d94e66eb4efb83314260e56a4b"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
