class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.79.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.79.1/forge-x86_64-apple-darwin"
    sha256 "ff9035179160e97b51188aa870a728e6e23a5a24b9d7cebe1be413c42fb8782b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.79.1/forge-aarch64-apple-darwin"
    sha256 "ff2fea58b2551e4728161f26fdd46d5397cc19adc06e25a4b88f15233a16d31a"
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
