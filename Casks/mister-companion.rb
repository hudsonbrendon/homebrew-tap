cask "mister-companion" do
  version "0.2.0"
  sha256 "0e64f851d6af2ae438b73d7b2a4efda953981783610da82e24264032be8e882d"

  url "https://github.com/hudsonbrendon/mister-companion/releases/download/v#{version}/MiSTer-Companion-#{version}-arm64.dmg",
      verified: "github.com/hudsonbrendon/mister-companion/"
  name "MiSTer Companion"
  desc "Cross-platform desktop companion for MiSTer FPGA"
  homepage "https://github.com/hudsonbrendon/mister-companion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "MiSTer Companion.app"

  zap trash: "~/Library/Application Support/mister-companion"
end
