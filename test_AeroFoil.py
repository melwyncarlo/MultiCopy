import subprocess

def test_main():
	test_proc = subprocess.call(['sh', 'if freecad MultiCopy.FCMacro & then echo "True"; kill $!; else echo "False"; fi'])
	print (test_proc)
