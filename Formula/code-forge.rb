class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.114.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.114.2/forge-x86_64-apple-darwin"
    sha256 "1adc26b9fa6b29a365c23c20ddcb8d6d829637be703120302b7ef66ccb7c3659"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.114.2/forge-aarch64-apple-darwin"
    sha256 "ecf420681b4348598c8662627ff2414f2d5f304350ff2e4e153a3430ed4de8dd"
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
