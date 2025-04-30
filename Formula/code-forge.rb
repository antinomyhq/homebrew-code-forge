class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.79.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.79.3/forge-x86_64-apple-darwin"
    sha256 "08364027e8d22579fd7ccb11bb27bfa4803ec0b545a939de048eac296f6d8f9b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.79.3/forge-aarch64-apple-darwin"
    sha256 "cdfadffe03b6d92c6712cfbd0428abcd681ab41a017982701cf724d83b9b9a79"
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
