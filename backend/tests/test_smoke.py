"""Smoke tests — verify imports and package metadata."""

from app import __version__


def test_version_is_string() -> None:
    """Package version is exported as a non-empty string."""
    assert isinstance(__version__, str)
    assert __version__ != ""
