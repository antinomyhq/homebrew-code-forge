class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.8.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.8.0/forge-x86_64-apple-darwin"
    sha256 "2860c918b68869e3862ca20a24ab56c93f7435ca69ea68c71380f8815e4dd09a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.8.0/forge-aarch64-apple-darwin"
    sha256 "88cec72424d08883d4c10431661ce2058348b09175256e92b6c1f4878cdc6c48"
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
