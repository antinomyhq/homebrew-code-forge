class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.109.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.109.1/forge-x86_64-apple-darwin"
    sha256 "92ea55c2b6dcdcd3cec95006b972119b6bb77f18ae4f76076de4f7067bba171d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.109.1/forge-aarch64-apple-darwin"
    sha256 "848ecc123e632b4b3f618a134d23f8638ad1f122f049b9e2b5fcb7c8bf6bcc3c"
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
