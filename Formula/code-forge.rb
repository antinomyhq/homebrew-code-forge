class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.125.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.125.0/forge-x86_64-apple-darwin"
    sha256 "bdb10655003a8a64d90cb17e91a4bca3b17f49ed8e953d941d7a4ec9f0edc194"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.125.0/forge-aarch64-apple-darwin"
    sha256 "2396d7b7a4831557c62399b857c64099152345678da3aab86bc2844db6c8f63c"
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
