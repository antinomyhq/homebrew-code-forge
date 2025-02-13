class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.18.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.18.0/forge-x86_64-apple-darwin"
    sha256 "434eebc1222dbda90c671bf18ca44e809ff1a514a9b2077408f094faf613bec6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.18.0/forge-aarch64-apple-darwin"
    sha256 "e03d95c14b401c012f72b2e7d20f777c2edac14204fb86cab9c024b51cde0e31"
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
