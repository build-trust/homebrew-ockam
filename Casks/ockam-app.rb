cask "ockam-app" do
  version "ockam_v0.99.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.99.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "e9e3e8b46e31d222e6595e0cba356ee71e5e348e3abcfd59fb352ff223450aec"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.99.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "4f87d0bca47657f6f64fb71a51bcadbc80ccdb05ea1c7b95ae8c685cf2377014"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
