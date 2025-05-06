class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.87.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.87.1/forge-x86_64-apple-darwin"
    sha256 "d6fb72eac8237184df16319458f6c10855d993782fb34637b63039ecda6178e9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.87.1/forge-aarch64-apple-darwin"
    sha256 "e01b2488a3f475aab140f845f2a62c7056603ae90ab8fecaf3108db384acebbe"
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
