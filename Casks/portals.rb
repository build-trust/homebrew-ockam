cask "portals" do
  version "ockam_v0.124.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "f9f188e5332666bb9428e4074cb0bd5da420900b08d752bd3ae9068cae78f19b"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "5cbd474a6aa3a9cdf2e1fb905f859c1aeaca986c7fa9865fc9c087587b5263a0"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
