cask "ockam-app" do
  version "ockam_v0.96.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.96.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "98e278df2c7565cf95b95ebde0df22c88a4519cef92b489b2976627f46f65467"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.96.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "3eef23937948adf6c6f13282f9d9f93388c9ece5f0072aaa0130d5c26287ea1d"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
