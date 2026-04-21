# typed: false
# frozen_string_literal: true

# This file is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class K9sHelm < Formula
  desc "A terminal UI for Kubernetes with first-class Helm support — history, rollback, and revision diffs"
  homepage "https://github.com/prash3232/k9s-helm"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prash3232/k9s-helm/releases/download/v#{version}/k9s-helm_#{version}_darwin_arm64.tar.gz"
    else
      url "https://github.com/prash3232/k9s-helm/releases/download/v#{version}/k9s-helm_#{version}_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prash3232/k9s-helm/releases/download/v#{version}/k9s-helm_#{version}_linux_arm64.tar.gz"
    else
      url "https://github.com/prash3232/k9s-helm/releases/download/v#{version}/k9s-helm_#{version}_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "k9s-helm"
  end

  test do
    system "#{bin}/k9s-helm --help"
  end
end
