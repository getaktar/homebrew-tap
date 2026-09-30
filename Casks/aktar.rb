cask "aktar" do
  version "0.9.1"
  sha256 "d2512ff3cc5d059fdc7e0d5fb629d70243549eab8610cb9658d93a189f6e8cc7"

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
