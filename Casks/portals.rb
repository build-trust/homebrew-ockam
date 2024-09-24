cask "portals" do
  version "ockam_v0.134.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.134.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "a0d47ef9fe10fa49ca2f81296ad8053dc6990135416e6f94b93896b9e6d75dad"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.134.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "6ba88a734076c42bb3631d7e0ed0d556272bed096e06f98370a213027403fd0f"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
