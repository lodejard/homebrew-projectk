require "formula"

class Projectk < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10047"
  url "https://www.myget.org/F/aspnetvnext/api/v2/package/KRE-mono45-x86/1.0.0-alpha3-10047"
  sha1 "4d83a5a6fe3ec01c9730d9dc2226aaf750ee104e"

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
