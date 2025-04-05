class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.60.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.60.0/forge-x86_64-apple-darwin"
    sha256 "ebed7e3d36cafe846683a03582ab640464ef81456fc82f85170750495b2bb19a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.60.0/forge-aarch64-apple-darwin"
    sha256 "0b358e944702e2dda6b64f5dba347bd44493967895148660e91395a33c5edf0c"
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
