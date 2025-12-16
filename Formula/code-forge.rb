class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.12.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.12.0/forge-x86_64-apple-darwin"
    sha256 "6f0fb2b181bff4de0fa75df8f92ee1c5b763e236ac92eb9ad4cee5b72174f89d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.12.0/forge-aarch64-apple-darwin"
    sha256 "3aae69af44e23aa3a7ee4ebabf9a916a9eb5e009bacf43e222ba69f9fc428486"
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
