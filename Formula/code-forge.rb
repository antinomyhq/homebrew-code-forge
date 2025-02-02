class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.4/forge-x86_64-apple-darwin"
    sha256 "cf985a7bffca4505bcaaf1b2d4e5e6308b59ce105c7379fecf28ef8a9ae3bd99"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.4/forge-aarch64-apple-darwin"
    sha256 "8ee593696f54099d0fb01bb12db585b1238ad1e335cdeffa849e7c470df2aa77"
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
