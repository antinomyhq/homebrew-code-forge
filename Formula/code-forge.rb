class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.99.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.99.1/forge-x86_64-apple-darwin"
    sha256 "13b81cbc1bd676cde28dc19ce29d1af927262c008855e909c4b7339b241174db"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.99.1/forge-aarch64-apple-darwin"
    sha256 "840881b4b9148a146c0a4ab13cb563444935d4ae0c8d627b0a105f9d11924e4d"
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
