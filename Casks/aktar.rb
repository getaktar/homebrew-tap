cask "aktar" do
  version "0.6.0"
  sha256 "7e87ef990eef044fdeaa475449f74ef225180aa9bf5c61a00b416935eb5f5482"

  url "https://github.com/getaktar/mac/releases/download/v#{version}/Aktar-#{version}.dmg"
  name "Aktar"
  desc "Menu bar app for uploading files to S3-compatible storage"
  homepage "https://getaktar.com/"

  livecheck do
    url "https://github.com/getaktar/mac/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Aktar.app"

  zap trash: [
    "~/Library/Application Scripts/com.getaktar.mac",
    "~/Library/Caches/com.getaktar.mac",
    "~/Library/Containers/com.getaktar.mac",
  ]
end
