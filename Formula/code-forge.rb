class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.96.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.96.1/forge-x86_64-apple-darwin"
    sha256 "c6e57a067ab5d20390f705b9b714c254e2435b68b96a0ad8c0d8a68c9f55893b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.96.1/forge-aarch64-apple-darwin"
    sha256 "8028f039a8b992fb5f424c04599c0df013918a487bc47b0c8765c74b834d0334"
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
