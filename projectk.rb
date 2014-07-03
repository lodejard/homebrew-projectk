require "formula"

class Projectk < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10072"
  url "https://www.myget.org/F/aspnetvnext/api/v2/package/KRE-mono45-x86/1.0.0-alpha3-10072"
  sha1 "0b9c4a332fc34959745f0b1af6b0f5aff0445a08"

  depends_on "mono" => :recommended

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "kvm"
    assert $?.success?
  end

  def caveats
    "This requires >=Mono 3.4.1"
  end

end
