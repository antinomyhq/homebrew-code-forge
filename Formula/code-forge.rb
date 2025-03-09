class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.33.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.33.0/forge-x86_64-apple-darwin"
    sha256 "414f448d74fa4e4e32d52b6a706e43255cc1fb9291b6c18695af042cf44a2433"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.33.0/forge-aarch64-apple-darwin"
    sha256 "d13bbd99e156a2c3edcc48f0399ffdebfdd320b983b619ddb144f7e73addc964"
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
