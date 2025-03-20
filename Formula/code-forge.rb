class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.1/forge-x86_64-apple-darwin"
    sha256 "669540a906112334dda9749547fdf2540559d6bdef3d0d7bd9e8bb787a76eea4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.1/forge-aarch64-apple-darwin"
    sha256 "caff20f664805c59d48d3d6cc78a045f8e117103f642beea87bba617f5406860"
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
