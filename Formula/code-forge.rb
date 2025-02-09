class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.10.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.10.1/forge-x86_64-apple-darwin"
    sha256 "1dfdbe2f945a140f1b2bb7f892530a9eea894ef485e41533b2da0be78a1b7a85"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.10.1/forge-aarch64-apple-darwin"
    sha256 "4bd4d9817e0ddc13aaf78c54e44582a7ce9da14ab82f73370bb0fa07c5216399"
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
