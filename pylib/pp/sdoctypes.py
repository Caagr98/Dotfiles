class SDoc(object):
	pass


class SLine(SDoc):
	__slots__ = ("indent",)

	def __init__(self, indent):
		assert isinstance(indent, int)
		self.indent = indent

	def __repr__(self):
		return f"SLine({self.indent!r})"


class SAnnotationPush(SDoc):
	__slots__ = ("value",)

	def __init__(self, value):
		self.value = value

	def __repr__(self):
		return f"SAnnotationPush({self.value!r})"


class SAnnotationPop(SDoc):
	__slots__ = ('value', )

	def __init__(self, value):
		self.value = value

	def __repr__(self):
		return f"SAnnotationPop({self.value!r})"
