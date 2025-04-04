class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.59.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.59.1/forge-x86_64-apple-darwin"
    sha256 "d83bc3100068fbf2dec2a4bae430886236f7ae3a6d8c29852494f690b0a7236b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.59.1/forge-aarch64-apple-darwin"
    sha256 "30b5336ea58aedd617e447a227055387166faf9b8a962e4f327608e44537ec12"
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
