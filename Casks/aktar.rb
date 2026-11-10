cask "aktar" do
  version "0.21.0"
  sha256 "b9445a0e7b5c07b057f777b83e060121ada88468baf28405a588ea94fe2f103b"

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
