class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.114.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.114.1/forge-x86_64-apple-darwin"
    sha256 "742b98e07327084279b5206dcbbff31886fe830e1c374d4d5d5d480a21fad6a8"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.114.1/forge-aarch64-apple-darwin"
    sha256 "6eb9d2aca7bd1a1a413496d9880a7f7b864c0957812728506fdfa90a8097c39c"
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
