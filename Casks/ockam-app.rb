cask "ockam-app" do
  version "ockam_v0.94.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.94.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "8123dc0b7232f76ef2149b0db1497a3c7a39d85971ec492ef1a826339101031e"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.94.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "53d41dcc7efde5b0a9827d2168bcff60fa7770716bcc10ca10531a7ca2a97030"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
