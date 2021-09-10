package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Properties;

/* renamed from: d70  reason: default package */
public final class d70 {
    static final Type[] a = new Type[0];

    /* access modifiers changed from: private */
    /* renamed from: d70$a */
    public static final class a implements GenericArrayType, Serializable {
        private final Type b;

        public a(Type type) {
            this.b = d70.b(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && d70.d(this, (GenericArrayType) obj);
        }

        public Type getGenericComponentType() {
            return this.b;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        public String toString() {
            return d70.m(this.b) + "[]";
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: d70$b */
    public static final class b implements ParameterizedType, Serializable {
        private final Type b;
        private final Type c;
        private final Type[] d;

        public b(Type type, Type type2, Type... typeArr) {
            Type type3;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                androidx.core.app.b.h(z);
            }
            if (type == null) {
                type3 = null;
            } else {
                type3 = d70.b(type);
            }
            this.b = type3;
            this.c = d70.b(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.d = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                Objects.requireNonNull(this.d[i]);
                d70.c(this.d[i]);
                Type[] typeArr3 = this.d;
                typeArr3[i] = d70.b(typeArr3[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && d70.d(this, (ParameterizedType) obj);
        }

        public Type[] getActualTypeArguments() {
            return (Type[]) this.d.clone();
        }

        public Type getOwnerType() {
            return this.b;
        }

        public Type getRawType() {
            return this.c;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.d) ^ this.c.hashCode();
            Type type = this.b;
            return hashCode ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            int length = this.d.length;
            if (length == 0) {
                return d70.m(this.c);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(d70.m(this.c));
            sb.append("<");
            sb.append(d70.m(this.d[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(d70.m(this.d[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: d70$c */
    public static final class c implements WildcardType, Serializable {
        private final Type b;
        private final Type c;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            androidx.core.app.b.h(typeArr2.length <= 1);
            androidx.core.app.b.h(typeArr.length == 1);
            if (typeArr2.length == 1) {
                Objects.requireNonNull(typeArr2[0]);
                d70.c(typeArr2[0]);
                androidx.core.app.b.h(typeArr[0] != Object.class ? false : z);
                this.c = d70.b(typeArr2[0]);
                this.b = Object.class;
                return;
            }
            Objects.requireNonNull(typeArr[0]);
            d70.c(typeArr[0]);
            this.c = null;
            this.b = d70.b(typeArr[0]);
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && d70.d(this, (WildcardType) obj);
        }

        public Type[] getLowerBounds() {
            Type type = this.c;
            if (type == null) {
                return d70.a;
            }
            return new Type[]{type};
        }

        public Type[] getUpperBounds() {
            return new Type[]{this.b};
        }

        public int hashCode() {
            Type type = this.c;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.b.hashCode() + 31);
        }

        public String toString() {
            if (this.c != null) {
                StringBuilder q = ic.q("? super ");
                q.append(d70.m(this.c));
                return q.toString();
            } else if (this.b == Object.class) {
                return "?";
            } else {
                StringBuilder q2 = ic.q("? extends ");
                q2.append(d70.m(this.b));
                return q2.toString();
            }
        }
    }

    public static GenericArrayType a(Type type) {
        return new a(type);
    }

    public static Type b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new a(b(cls.getComponentType())) : cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    static void c(Type type) {
        androidx.core.app.b.h(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    public static boolean d(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if (!(ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                return false;
            }
            return true;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return d(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                return false;
            }
            return true;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                return false;
            }
            return true;
        }
    }

    public static Type e(Type type, Class<?> cls) {
        Type i = i(type, cls, Collection.class);
        if (i instanceof WildcardType) {
            i = ((WildcardType) i).getUpperBounds()[0];
        }
        if (i instanceof ParameterizedType) {
            return ((ParameterizedType) i).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    static Type f(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                if (interfaces[i] == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(interfaces[i])) {
                    return f(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return f(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type[] g(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type i = i(type, cls, Map.class);
        if (i instanceof ParameterizedType) {
            return ((ParameterizedType) i).getActualTypeArguments();
        }
        return new Type[]{Object.class, Object.class};
    }

    public static Class<?> h(Type type) {
        String str;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            androidx.core.app.b.h(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(h(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return h(((WildcardType) type).getUpperBounds()[0]);
            }
            if (type == null) {
                str = "null";
            } else {
                str = type.getClass().getName();
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + str);
        }
    }

    static Type i(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        androidx.core.app.b.h(cls2.isAssignableFrom(cls));
        return k(type, cls, f(type, cls, cls2));
    }

    public static ParameterizedType j(Type type, Type type2, Type... typeArr) {
        return new b(null, type2, typeArr);
    }

    public static Type k(Type type, Class<?> cls, Type type2) {
        return l(type, cls, type2, new HashSet());
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:85:? */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:84:0x004b */
    private static Type l(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        do {
            int i = 0;
            if (type2 instanceof TypeVariable) {
                typeVariable = (TypeVariable) type2;
                if (collection.contains(typeVariable)) {
                    return type2;
                }
                collection.add(typeVariable);
                GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type f = f(type, cls, cls2);
                    if (f instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        int length = typeParameters.length;
                        while (i < length) {
                            if (typeVariable.equals(typeParameters[i])) {
                                type2 = ((ParameterizedType) f).getActualTypeArguments()[i];
                                continue;
                            } else {
                                i++;
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                type2 = typeVariable;
                continue;
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = (Class) type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type l = l(type, cls, componentType, collection);
                        return componentType == l ? cls3 : new a(l);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type l2 = l(type, cls, genericComponentType, collection);
                    return genericComponentType == l2 ? genericArrayType : new a(l2);
                } else if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type l3 = l(type, cls, ownerType, collection);
                    boolean z = l3 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    while (i < length2) {
                        Type l4 = l(type, cls, actualTypeArguments[i], collection);
                        if (l4 != actualTypeArguments[i]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i] = l4;
                        }
                        i++;
                    }
                    return z ? new b(l3, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                } else {
                    boolean z2 = type2 instanceof WildcardType;
                    WildcardType wildcardType = type2;
                    if (z2) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type l5 = l(type, cls, lowerBounds[0], collection);
                            wildcardType = wildcardType2;
                            if (l5 != lowerBounds[0]) {
                                return new c(new Type[]{Object.class}, l5 instanceof WildcardType ? ((WildcardType) l5).getLowerBounds() : new Type[]{l5});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type l6 = l(type, cls, upperBounds[0], collection);
                                wildcardType = wildcardType2;
                                if (l6 != upperBounds[0]) {
                                    return new c(l6 instanceof WildcardType ? ((WildcardType) l6).getUpperBounds() : new Type[]{l6}, a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                }
            }
        } while (type2 != typeVariable);
        return type2;
    }

    public static String m(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
