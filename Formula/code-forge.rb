class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.103.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.103.0/forge-x86_64-apple-darwin"
    sha256 "ab76747ecf20dda0de485ab2fd4a19e96e321c721edb9c3cac8c3adf05c164b4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.103.0/forge-aarch64-apple-darwin"
    sha256 "1cb495aa8e40a8410e2efcb87437cd7f9e80b02250512fc02a5f0d6340fee5af"
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
