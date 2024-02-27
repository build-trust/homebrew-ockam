cask "portals" do
  version "ockam_v0.117.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "29869da5b4b42759b30ce606e4ee496d7429aec516edf7660d492cd9b890ea34"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "fbc75acd678e4d4884803b8ae50fbc69a34989ea6e8fe67863a0e11eda8c8b16"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
