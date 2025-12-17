class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.12.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.12.2/forge-x86_64-apple-darwin"
    sha256 "59893221576dd2172ab67791b5292fbb9a75b5f5822bfee1878af201b121b111"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.12.2/forge-aarch64-apple-darwin"
    sha256 "1af095d3629962605a088d11f265b8f325859e2a4cac4dbdad3de93b2992bd74"
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
