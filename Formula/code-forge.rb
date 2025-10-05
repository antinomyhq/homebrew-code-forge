class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.123.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.123.0/forge-x86_64-apple-darwin"
    sha256 "0ad17aa6e28bb77780833103810393c7fe39946eaf0ab87768afde1c068a383c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.123.0/forge-aarch64-apple-darwin"
    sha256 "835c6aee2ced6627bd7c60ddb8e9a63902a8593b3a3b61e709c7be12957e9872"
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
