cask "aktar" do
  version "0.14.0"
  sha256 "228860e030cebadc569dbf9f8e7304873d3d1a1175efcdbd32b500db38d01dec"

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
