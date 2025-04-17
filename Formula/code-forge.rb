class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.66.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.66.1/forge-x86_64-apple-darwin"
    sha256 "0645d0663e0acb63215a85e01d15855e391f4545707f722e7a38eb8219fb1925"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.66.1/forge-aarch64-apple-darwin"
    sha256 "44c6f5deaa452e4b60d30f44b88597202c54ffffe311b5c3adaa239bc6b14ee4"
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
