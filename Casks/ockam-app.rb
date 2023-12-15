cask "ockam-app" do
  version "ockam_v0.110.0"
  name "Ockam"
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"

  if Hardware::CPU.arm?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.110.0/ockam.app.aarch64-apple-darwin.dmg"
    sha256 "a4804e23d8bfe4bf94ec3f6fa5d45748fb32895d30310494140afb094301d505"
   end

  if Hardware::CPU.intel?
    url "https://github.com/build-trust/ockam/releases/download/ockam_v0.110.0/ockam.app.x86_64-apple-darwin.dmg"
    sha256 "51361e506dcb09269d4e2cc887360b6a91fd7ba94dcb8568035a2e51d6931c7d"
  end

  depends_on formula: "ockam"
  app "Ockam.app"
  uninstall quit: "io.ockam.app"
end
