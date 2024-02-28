cask "portals" do
  version "ockam_v0.117.0"
  name "Portals, by Ockam"
  desc "Privately share TCP services from your Mac with anyone, anywhere."
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "40a110a7f2bd749d78c7ae001537a1b918a381b9793cb2dc046de8c17405f6be"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.117.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "d4039e42ddbcf5eebb8df8be36da1c86694eda6c5b4c29485a6f4a790b0cb180"
  end

  depends_on formula: "ockam"
  app "Portals, by Ockam.app"
  uninstall quit: "io.ockam.Ockam"
end
