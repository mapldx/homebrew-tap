cask "juno" do
  version "0.1.0"
  sha256 "0b02b77895d971e0821c539e37e698a0dd61b2c1df5e344bb4f19e9812e6016d"

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
