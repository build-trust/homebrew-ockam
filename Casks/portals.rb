cask "portals" do
  version "ockam_v0.124.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "0327569391b421634d0708c4612665fc5b9cc6a3e08d689a3d275edbdf626472"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.124.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "d8043d0b386787b68acd122da7602b0b59526cff9f371daaa87499109b715143"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
