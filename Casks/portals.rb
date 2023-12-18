cask "portals" do
  version "ockam_v0.112.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.112.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "26fccdeba4c889f825224e53040cb4218197fc30ac832f6122913fc113747625"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.112.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "3838969da6eeae5528744edb7808f7052fa2595a637b78b470fe1ec7b4d4abb0"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
