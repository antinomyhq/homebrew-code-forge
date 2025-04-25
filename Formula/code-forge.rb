class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.3/forge-x86_64-apple-darwin"
    sha256 "7cfa9949a2ef6f1c589de89a9729d1662b38a9ce519001dc84e6944530dc19cd"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.3/forge-aarch64-apple-darwin"
    sha256 "20b90826a95d930c0ae1dc8e40d3ef2e9285f7f50040bb08a26a267f19bdb744"
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
