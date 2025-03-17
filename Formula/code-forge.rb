class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.46.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.46.1/forge-x86_64-apple-darwin"
    sha256 "e8c4141f0630e610f3304388a6411351d7250e3803394ee94a02756300014ce7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.46.1/forge-aarch64-apple-darwin"
    sha256 "1489a9a9e936a7b3d6cdecd21869b529df40933252672320eddf9ca730195cba"
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
