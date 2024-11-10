import re, strutils  # ознакомьтесь с функцией findAll библиотеки re

var text = """English texts for b3ginners to practice read7ng and comprehension online & for fre3. Pr4acticing your comprehension a | of a written En9lish will both improve your vocabulary and understanding of gramma2r and word order; The texts below are des1gned to help you develop: while giving you an instant evaluation of your progre5s."""
var schars, counter, numbers: int

# Подсчитываем количество спецсимволов
schars = len(re.findAll(r"[.,\\|& ]", text))

# Подсчитываем количество букв "a"
counter = len(re.findAll(r"a", text))

# Собираем все цифры в одну строку
numbers = join(re.findAll(r"\\d", text))

# Не изменяйте код ниже
doAssert schars == 57
doAssert counter == 18
doAssert numbers == "37349215"
