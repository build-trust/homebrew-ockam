cask "ockam-app" do
  version "ockam_v0.98.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.98.0/ockam.app.aarch64-apple-darwin-swiftui.dmg"
    sha256 "894afd90fb933ba595cc3387cd404e99238b9de56d143e2f76e5de17c0583428"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.98.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "2772a7097109b6e7cadf6f6921a5445e3fa2495cfe1841cb240d3a2cb17c2243"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
