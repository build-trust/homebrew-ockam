cask "ockam_app" do
  version "ockam_v0.91.0"
  name "Ockam App"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.91.0/Ockam_App_aarch64-apple-darwin.dmg"
    sha256 "af9b622e2fccdb8f5e93d2486158f4fc275802ed94b46b7b781d760be82e2e33"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.91.0/Ockam_App_x86_64-apple-darwin.dmg"
    sha256 "aaa0524fff58e8cb131437725402e091f97064f2a82be4b64e2423ee04aa0c0e"
  end

  depends_on formula: "ockam"
  app "Ockam App.app"
  uninstall quit: "io.ockam.app"
end
