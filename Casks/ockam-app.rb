cask "ockam-app" do
  version "ockam_v0.106.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.106.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "c7d8e0816a3da34e7032a343e0f7aa90fbaf35b270df2f6e89a3b37ac9773003"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.106.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "47b60a1245d607b7dbd6b87a17fcfe18605719b4e9ee7577cb017f34f9f005f6"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
