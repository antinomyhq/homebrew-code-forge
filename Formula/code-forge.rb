class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.98.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.98.0/forge-x86_64-apple-darwin"
    sha256 "dd5d913d376ba0ccf5bbb481e5b20c31a2afdccaeb5962dbe4d05aa4790f39bf"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.98.0/forge-aarch64-apple-darwin"
    sha256 "2770bb6df4a1ee060ec1729844fcee0b066984abfc4230de95977cdbeca472c0"
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
