import unittest
# 自作モジュールのインポート方法に関しては以下の資料を参照
# https://chaika.hatenablog.com/entry/2018/08/24/090000
# https://zenn.dev/suyaa/articles/cbc691a4797e61
import sys
import pathlib
# base.pyのあるディレクトリの絶対パスを取得
current_dir = pathlib.Path(__file__).resolve().parent
# モジュールのあるパスを追加
sys.path.append( str(current_dir) + '/../' )
from src.match import addition

class MathTest(unittest.TestCase):
    def test_addition(self):
        actual = addition(3,4)
        expected = 7 # 実行結果と一致
        self.assertEqual(actual, expected)

if __name__ == '__main__':
    get_instance = MathTest()
    get_instance.test_addition()