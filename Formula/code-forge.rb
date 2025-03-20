class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.2/forge-x86_64-apple-darwin"
    sha256 "8670bf874d719a763ae1935fec20fc735cc6cf6eb25328b3b96a381eb0c404ca"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.2/forge-aarch64-apple-darwin"
    sha256 "67e55ffcb971cf1751964b720efc03397fadc71e178f0d0fdf192e65c56851e2"
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
