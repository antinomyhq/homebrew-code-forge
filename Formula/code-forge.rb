class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.72.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.72.1/forge-x86_64-apple-darwin"
    sha256 "5de0584da33d03008379b8b24a78c8d2bd357e4ec785dbef167d60bc1dad56f6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.72.1/forge-aarch64-apple-darwin"
    sha256 "9d422fd925887e2484c5451b2551cb95919e9dfcf1d703ee483b1c7fd9fc927d"
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
