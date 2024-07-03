cask "portals" do
  version "ockam_v0.129.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.129.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "d8f88e641fafea6110370a1f36776995b8491b50d19a3430962ba2e4dff3c313"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.129.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "beebc70c4fa49849c72ed9896f8800a7802e5a1e209564f72b64567a3b1fdca4"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
