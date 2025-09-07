class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.114.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.114.3/forge-x86_64-apple-darwin"
    sha256 "5286517f1064f3c18c24cdcc5433247c08f8d034b85dd17c54d5f6b0ab504b8d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.114.3/forge-aarch64-apple-darwin"
    sha256 "fa9814a4f9c47a4cf1705ff4c3cd5a0ae0d724f04188559064efa38a071dc5b2"
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
