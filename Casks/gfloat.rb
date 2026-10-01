cask "gfloat" do
  version "1.0.0"
  sha256 "f17ef32649e597b082334be6b8c53f88b4c94fd39a4a7c2c947436539b68969d"

  url "https://github.com/kcd71461/gfloat/releases/download/v#{version}/GFloat.app.zip"
  name "GFloat"
  desc "Floating Google Gemini window for macOS"
  homepage "https://github.com/kcd71461/gfloat"

  deprecate! date: "2026-10-02", because: :unmaintained

  depends_on macos: ">= :sonoma"

  app "GFloat.app"

  zap trash: [
    "~/Library/Preferences/com.kcd71461.GFloat.plist",
  ]
end
