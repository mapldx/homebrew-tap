cask "juno" do
  version "0.1.0"
  sha256 "5ee9e089a01c2fa7450fc431bfadfd122677a969da0fa3600560f935d85101de"

  url "https://github.com/mapldx/homebrew-tap/releases/download/juno-v#{version}/Juno-#{version}-macos-arm64.zip",
      verified: "github.com/mapldx/homebrew-tap/"
  name "Juno"
  desc "Low-bit GGUF inference with Arm SME2"
  homepage "https://github.com/mapldx/juno"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Juno.app"
  binary "#{appdir}/Juno.app/Contents/Helpers/juno"
end
