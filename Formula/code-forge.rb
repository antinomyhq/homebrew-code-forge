class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.7.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.7.1/forge-x86_64-apple-darwin"
    sha256 "a8fbc4a3e53231ba80c423d60f8104e342e7c0975a632c3e25ce5b43e03eac76"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.7.1/forge-aarch64-apple-darwin"
    sha256 "932d80c8b3e972cea6de49430718529e2e18b4ec668bde49c1340a421970e357"
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
