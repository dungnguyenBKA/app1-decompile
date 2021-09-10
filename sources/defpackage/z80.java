package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: z80  reason: default package */
public class z80<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    protected z80() {
        Type superclassTypeParameter = getSuperclassTypeParameter(getClass());
        this.type = superclassTypeParameter;
        this.rawType = (Class<? super T>) d70.h(superclassTypeParameter);
        this.hashCode = superclassTypeParameter.hashCode();
    }

    private static AssertionError buildUnexpectedTypeError(Type type2, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder("Unexpected type. Expected one of: ");
        for (Class<?> cls : clsArr) {
            sb.append(cls.getName());
            sb.append(", ");
        }
        sb.append("but got: ");
        sb.append(type2.getClass().getName());
        sb.append(", for type token: ");
        sb.append(type2.toString());
        sb.append('.');
        return new AssertionError(sb.toString());
    }

    public static z80<?> get(Type type2) {
        return new z80<>(type2);
    }

    public static z80<?> getArray(Type type2) {
        return new z80<>(d70.a(type2));
    }

    public static z80<?> getParameterized(Type type2, Type... typeArr) {
        return new z80<>(d70.j(null, type2, typeArr));
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return d70.b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    private static boolean matches(Type type2, Type type3, Map<String, Type> map) {
        return type3.equals(type2) || ((type2 instanceof TypeVariable) && type3.equals(map.get(((TypeVariable) type2).getName())));
    }

    private static boolean typeEquals(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map<String, Type> map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            if (!matches(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof z80) && d70.d(this.type, ((z80) obj).type);
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Deprecated
    public boolean isAssignableFrom(Class<?> cls) {
        return isAssignableFrom((Type) cls);
    }

    public final String toString() {
        return d70.m(this.type);
    }

    public static <T> z80<T> get(Class<T> cls) {
        return new z80<>(cls);
    }

    @Deprecated
    public boolean isAssignableFrom(Type type2) {
        if (type2 == null) {
            return false;
        }
        if (this.type.equals(type2)) {
            return true;
        }
        Type type3 = this.type;
        if (type3 instanceof Class) {
            return this.rawType.isAssignableFrom(d70.h(type2));
        }
        if (type3 instanceof ParameterizedType) {
            return isAssignableFrom(type2, (ParameterizedType) type3, new HashMap());
        }
        if (!(type3 instanceof GenericArrayType)) {
            throw buildUnexpectedTypeError(type3, Class.class, ParameterizedType.class, GenericArrayType.class);
        } else if (!this.rawType.isAssignableFrom(d70.h(type2)) || !isAssignableFrom(type2, (GenericArrayType) this.type)) {
            return false;
        } else {
            return true;
        }
    }

    z80(Type type2) {
        Objects.requireNonNull(type2);
        Type b = d70.b(type2);
        this.type = b;
        this.rawType = (Class<? super T>) d70.h(b);
        this.hashCode = b.hashCode();
    }

    @Deprecated
    public boolean isAssignableFrom(z80<?> z80) {
        return isAssignableFrom(z80.getType());
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:14:0x0024 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    private static boolean isAssignableFrom(Type type2, GenericArrayType genericArrayType) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (!(genericComponentType instanceof ParameterizedType)) {
            return true;
        }
        if (type2 instanceof GenericArrayType) {
            type2 = ((GenericArrayType) type2).getGenericComponentType();
        } else if (type2 instanceof Class) {
            type2 = (Class) type2;
            while (type2.isArray()) {
                type2 = type2.getComponentType();
            }
        }
        return isAssignableFrom(type2, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean isAssignableFrom(Type type2, ParameterizedType parameterizedType, Map<String, Type> map) {
        if (type2 == null) {
            return false;
        }
        if (parameterizedType.equals(type2)) {
            return true;
        }
        Class<?> h = d70.h(type2);
        ParameterizedType parameterizedType2 = null;
        if (type2 instanceof ParameterizedType) {
            parameterizedType2 = (ParameterizedType) type2;
        }
        if (parameterizedType2 != null) {
            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
            TypeVariable<Class<?>>[] typeParameters = h.getTypeParameters();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                Type type3 = actualTypeArguments[i];
                TypeVariable<Class<?>> typeVariable = typeParameters[i];
                while (type3 instanceof TypeVariable) {
                    type3 = map.get(((TypeVariable) type3).getName());
                }
                map.put(typeVariable.getName(), type3);
            }
            if (typeEquals(parameterizedType2, parameterizedType, map)) {
                return true;
            }
        }
        for (Type type4 : h.getGenericInterfaces()) {
            if (isAssignableFrom(type4, parameterizedType, new HashMap(map))) {
                return true;
            }
        }
        return isAssignableFrom(h.getGenericSuperclass(), parameterizedType, new HashMap(map));
    }
}
