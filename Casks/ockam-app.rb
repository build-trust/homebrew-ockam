cask "ockam-app" do
  version "ockam_v0.109.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.109.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "1b4783cdabc1d09599bdaccdb7229eebdda62ed21e4bb0bd306df587318ed668"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.109.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "67b95535f422f9acf5e3da586aa685256c9514f29f59f84436971aa7890e7763"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
