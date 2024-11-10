import sequtils, strutils, os  # Все нужные библиотеки уже подключены
import utils  # Рекомендуем ознакомиться для выполнения задания :)

const RootDir = "folder"
var dirs, files, exts: seq[string]

# Получаем список папок с заменой пробелов на "_"
dirs = utils.getDirs(RootDir).mapIt(it.replace(" ", "_"))

# Получаем список файлов без пути к папке
files = utils.getFiles(RootDir).mapIt(splitFile(it).name)

# Сохраняем расширения всех файлов
exts = utils.getFiles(RootDir).mapIt(getFileExtension(it))

# Не изменяйте код ниже
import sets
doAssert(
    len(@["folder/f_4/ff1", "folder/f_3/ff1", "folder/f_5", "folder/f_5/ff1", "folder/f_8", "folder/f_1", "folder/f_3", "folder", "folder/f_3/ff2", "folder/f_4", "folder/f_7", "folder/f_2", "folder/f_4/ff_2", "folder/f_6", "folder/f_9"].toHashSet - dirs.toHashSet) == 0 or
    len(@["folder\\f_4\\ff1", "folder\\f_3\\ff1", "folder\\f_5", "folder\\f_5\\ff1", "folder\\f_8", "folder\\f_1", "folder\\f_3", "folder", "folder\\f_3\\ff2", "folder\\f_4", "folder\\f_7", "folder\\f_2", "folder\\f_4\\ff_2", "folder\\f_6", "folder\\f_9"].toHashSet - dirs.toHashSet) == 0
)
doAssert len(@["file.4.some", "ff1.txt", "1.dat", "ff2.ext", "f3.text", "123.klm", "file.1.txt", "file.1.txt", "file.3.txt", "file.1.txt", "file.2.txt", "file 2.txt"].toHashSet - files.toHashSet) == 0
doAssert len(@[".some", ".txt", ".dat", ".txt", ".txt", ".txt", ".txt", ".text", ".klm", ".txt", ".ext", ".txt"].toHashSet - exts.toHashSet) == 0
