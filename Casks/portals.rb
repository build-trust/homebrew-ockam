cask "portals" do
  version "ockam_v0.122.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.122.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "fe27845c2fface097efe5a3ff47bfa0fcd8650eb58fc1b2c8640aabd36e26dad"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.122.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "abb8cc78ff29dc003d75b5df4a154a30a12c17fbd6aac6ae3f29cdf90f0ad269"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
