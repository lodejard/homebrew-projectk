require "formula"

class Projectk < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10047"
  url "https://www.myget.org/F/aspnetvnext/api/v2/package/KRE-mono45-x86/1.0.0-alpha3-10047"
  sha1 "dee7facc7a25fb667baa7d1295835bc66194f350"

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
