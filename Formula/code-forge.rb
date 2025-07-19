class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.5"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.5/forge-x86_64-apple-darwin"
    sha256 "58ee94429aef2d926ab5fc382145899f1956253fd1e0468a62ecdb78fd78c4c2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.5/forge-aarch64-apple-darwin"
    sha256 "780937edfb806e91311c4540bef591a1a79ad11071e694e37aeb246323b6b81c"
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
