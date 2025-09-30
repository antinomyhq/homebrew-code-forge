class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.121.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.121.1/forge-x86_64-apple-darwin"
    sha256 "52690f1b1320fc94b393255779389ced112d4c931cedcfe21010986abf857761"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.121.1/forge-aarch64-apple-darwin"
    sha256 "874c51a141c97df9aeacf38955883b0ce6aa8e813cfbbc755800c08138d44c97"
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
