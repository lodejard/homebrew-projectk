require "formula"

class Projectk < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10141"
  url "https://www.myget.org/F/aspnetvnext/api/v2/package/KRE-mono45-x86/1.0.0-alpha3-10141"
  sha1 "dcce1ba6ae6f94a0e8b0f0e6d95559fb7c0cec2a"

  depends_on "kmono" => :recommended

  def install
    bin.install Dir["bin/k"]
    bin.install Dir["bin/kpm"]
  end

end
