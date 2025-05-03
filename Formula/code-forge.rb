class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.85.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.85.0/forge-x86_64-apple-darwin"
    sha256 "045a7cb72f7b40cb07e8a3d16b227d5cc9951ba35e39f684217301f5eca87064"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.85.0/forge-aarch64-apple-darwin"
    sha256 "b020cd616322cfad8326a81ace4deac6d4193b92ab23038bdeba44e4f6d1c803"
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
