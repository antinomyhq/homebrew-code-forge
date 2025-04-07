class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.60.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.60.3/forge-x86_64-apple-darwin"
    sha256 "9080b2e4eaeed6619b5e05bec9499c4ab5ee147328e2891a50497103ba042011"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.60.3/forge-aarch64-apple-darwin"
    sha256 "e4e8ec107bcacebd817bc4a283d495ebdb7bd2fd5e17ebb51683f86d87753eef"
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
