class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.36.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.36.1/forge-x86_64-apple-darwin"
    sha256 "26d9d1a5247dda792f72cd8fe2900b0010fb0695d27e9805d37d18cc54b05628"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.36.1/forge-aarch64-apple-darwin"
    sha256 "e56834e2f214d1aa620bab4ce661c53cd81504f85aeb324f9658f3e198f58b1b"
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
