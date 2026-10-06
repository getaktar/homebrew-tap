cask "aktar" do
  version "0.17.0"
  sha256 "43c1417259d5883f30a8a58c63b51f30561ce181111dce836bc5edb3b80f2e13"

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
