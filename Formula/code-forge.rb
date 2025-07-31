class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.104.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.104.2/forge-x86_64-apple-darwin"
    sha256 "1a0024d752627bd6f376d70311179724c646cb95dbd8a81640d9f164e3eac91f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.104.2/forge-aarch64-apple-darwin"
    sha256 "67d77f18a67cc419c08f098f757291203a3acf733aee63cf8721445cae941099"
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
