require "formula"

class Kre < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10141"
  url "https://github.com/lodejard/homebrew-projectk/releases/download/v1.0.0-alpha3-10141/KRE-mono45-x86-1.0.0-alpha3.10141.nupkg"
  sha1 "dcce1ba6ae6f94a0e8b0f0e6d95559fb7c0cec2a"

  depends_on "kmono" => :recommended

  def install
    libexec.install Dir["*"]
    (libexec + "bin/klr").chmod 0755
    (libexec + "bin/kpm").chmod 0755
    (libexec + "bin/k").chmod 0755
    bin.install_symlink "#{libexec}/bin/klr"
    bin.install_symlink "#{libexec}/bin/kpm"
    bin.install_symlink "#{libexec}/bin/k"
  end

end
