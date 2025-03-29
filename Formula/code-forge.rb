class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.0/forge-x86_64-apple-darwin"
    sha256 "d4f64b1ac3e0b9f3b7b55d5438b2c0d08cf3cc22b8c2656f70578f909eb67cb7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.0/forge-aarch64-apple-darwin"
    sha256 "71a748da23ee55a08f4d49cd1353c32b073eff6bfd9d8ee4fdca71e16a379a26"
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
