class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.83.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.83.0/forge-x86_64-apple-darwin"
    sha256 "1bf4281e56ad17fcc761b4427cd12a12b95b5b0090f80aa4da8c831731282c35"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.83.0/forge-aarch64-apple-darwin"
    sha256 "ded34a50a450e719a82f42b44c9fde2a391a7aba3bcaf261708529ac99a3d5fc"
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
