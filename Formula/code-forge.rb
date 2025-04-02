class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.56.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.56.0/forge-x86_64-apple-darwin"
    sha256 "a126605506d651c5b469f7c13051ce44a163f92f6040e873fb74b9f0da44294f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.56.0/forge-aarch64-apple-darwin"
    sha256 "c428390f6c7c161b4d3ee7dbdeb6daadbf64f84f0c48360656a3d964e47b78d0"
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
