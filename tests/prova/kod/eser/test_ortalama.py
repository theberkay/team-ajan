"""Çalıştırma: python -m unittest test_ortalama.py"""
import unittest

from ortalama import agirlikli_ortalama, gecti_mi, ortalama


class OrtalamaTesti(unittest.TestCase):
    def test_ortalama(self):
        self.assertEqual(ortalama([40, 60]), 50)

    def test_agirlikli(self):
        self.assertEqual(agirlikli_ortalama([50, 100], [0.5, 0.5]), 75)

    def test_gecer(self):
        self.assertTrue(gecti_mi(70))

    def test_esikte_kalir(self):
        # 50 alan öğrenci kalır
        self.assertFalse(gecti_mi(50))


if __name__ == "__main__":
    unittest.main()
