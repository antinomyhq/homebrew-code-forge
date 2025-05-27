class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.1/forge-x86_64-apple-darwin"
    sha256 "36ab483e6f575df7fd459f2eabed8eeac0eeef08c90889623bc2120a6d272aef"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.1/forge-aarch64-apple-darwin"
    sha256 "22f0229f9886444cbd8421d2a14f578c0ad708cdf2772740f05853d3aa696cb1"
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
