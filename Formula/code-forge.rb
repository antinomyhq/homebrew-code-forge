class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.40.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.40.0/forge-x86_64-apple-darwin"
    sha256 "d7e3a0411cfaba4521ab14aefa51f251e35824f7ae139279f8416d004d8a632b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.40.0/forge-aarch64-apple-darwin"
    sha256 "18757fc3b65d7e1dd97aad1d61f9763c88dc75a5ba1bdbf7765d21203b816852"
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
