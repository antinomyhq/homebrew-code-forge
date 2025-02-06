class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.4.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.4.0/forge-x86_64-apple-darwin"
    sha256 "b21c2bb0eaab1e654f12051a4c75b58c04f379420f7a8fdf479a885fd0134181"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.4.0/forge-aarch64-apple-darwin"
    sha256 "c696428318bbb27bac186f67ea7a54a80517c4a962b1af6a66808a32e5cc34f8"
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
