class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.60.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.60.1/forge-x86_64-apple-darwin"
    sha256 "8f46b92629c0a2c5a492153fbda8d476d695ad7c8def703f0201755fc2b81679"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.60.1/forge-aarch64-apple-darwin"
    sha256 "b3821c744cdd32dc23ebd079ae1bf20ca9db3d1eeaa8c22ecc8e4332e0658737"
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
