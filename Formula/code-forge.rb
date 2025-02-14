class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.20.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.20.0/forge-x86_64-apple-darwin"
    sha256 "40126b9ddbe8147923e2af420cc1935857fc8350a23d6cba86ee351bfc5a146a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.20.0/forge-aarch64-apple-darwin"
    sha256 "37c2ef6288e1d5cc22a395ad7ccbdaf5fd6284ae720c54ee87cbc94d17ce488b"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
