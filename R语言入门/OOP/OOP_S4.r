#S4对象系统是一种标准的R语言面向对象实现方式，S4对象有明确的类定义，参数定义，参数检查，继承关系，实例化等的面向对象系统的特征。
# 创建一个S4对象Person
setClass("Person",slots=list(name="character",age="numeric"))

# 创建Person的子类
setClass("Son",slots=list(father="Person",mother="Person"),contains="Person")

# 实例化Person对象
father<-new("Person",name="F",age=44)
mother<-new("Person",name="M",age=39)

# 实例化一个Son对象
son<-new("Son",name="S",age=16,father=father,mother=mother)

# 查看son对象的name属性
son@name
#[1] "S"

# 查看son对象的age属性
son@age
#[1] 16

# 查看son对象的father属性
son@father

# 查看son对象的mother属性
slot(son,"mother")

# 检查son类型
typeof(son)"

