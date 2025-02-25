class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.25.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.25.0/forge-x86_64-apple-darwin"
    sha256 "67cb88bac6c49447d8d937225f593a88a7eaa5c3b1a7ee67b305345190775f6b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.25.0/forge-aarch64-apple-darwin"
    sha256 "da2b3559e15c07cd5b73e04631a9f5eed37a906871c3c065375a24bd8495bdeb"
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
