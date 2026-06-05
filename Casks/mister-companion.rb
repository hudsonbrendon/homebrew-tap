cask "mister-companion" do
  version "0.2.11"
  sha256 "b751ba32acbd03bedc79c8f17fbec8a0706e5a55efe74a4a67a3e5a5764a79f7"

  url "https://github.com/hudsonbrendon/mister-companion/releases/download/v#{version}/MiSTer-Companion-#{version}-arm64.dmg"
  name "MiSTer Companion"
  desc "Cross-platform desktop companion for MiSTer FPGA"
  homepage "https://github.com/hudsonbrendon/mister-companion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "MiSTer Companion.app"

  # The app is ad-hoc signed but not Apple-notarized (no paid Developer ID), so macOS
  # would otherwise show the Gatekeeper "could not verify" prompt. Strip the download
  # quarantine after install so it opens with a normal double-click.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MiSTer Companion.app"]
  end

  zap trash: "~/Library/Application Support/mister-companion"
end
