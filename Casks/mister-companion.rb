cask "mister-companion" do
  version "0.2.20"
  sha256 "8694bd34cd6a124c6f049832028ebfc3c3d27fb7a3437be27f104d9e03c8513c"

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
