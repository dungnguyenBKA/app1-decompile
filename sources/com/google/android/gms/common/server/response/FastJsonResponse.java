package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final a CREATOR = new a();
        private final int b;
        protected final int c;
        protected final boolean d;
        protected final int e;
        protected final boolean f;
        protected final String g;
        protected final int h;
        protected final Class<? extends FastJsonResponse> i;
        private final String j;
        private zak k;
        private a<I, O> l;

        Field(int i2, int i3, boolean z, int i4, boolean z2, String str, int i5, String str2, zaa zaa) {
            this.b = i2;
            this.c = i3;
            this.d = z;
            this.e = i4;
            this.f = z2;
            this.g = str;
            this.h = i5;
            if (str2 == null) {
                this.i = null;
                this.j = null;
            } else {
                this.i = SafeParcelResponse.class;
                this.j = str2;
            }
            if (zaa == null) {
                this.l = null;
            } else {
                this.l = (a<I, O>) zaa.i0();
            }
        }

        public final void j0(zak zak) {
            this.k = zak;
        }

        public final boolean k0() {
            return this.l != null;
        }

        public final Map<String, Field<?, ?>> l0() {
            Objects.requireNonNull(this.j, "null reference");
            Objects.requireNonNull(this.k, "null reference");
            return this.k.i0(this.j);
        }

        public final I o(O o) {
            return (I) ((StringToIntConverter) this.l).o(o);
        }

        public String toString() {
            m.a b2 = m.b(this);
            b2.a("versionCode", Integer.valueOf(this.b));
            b2.a("typeIn", Integer.valueOf(this.c));
            b2.a("typeInArray", Boolean.valueOf(this.d));
            b2.a("typeOut", Integer.valueOf(this.e));
            b2.a("typeOutArray", Boolean.valueOf(this.f));
            b2.a("outputFieldName", this.g);
            b2.a("safeParcelFieldId", Integer.valueOf(this.h));
            String str = this.j;
            if (str == null) {
                str = null;
            }
            b2.a("concreteTypeName", str);
            Class<? extends FastJsonResponse> cls = this.i;
            if (cls != null) {
                b2.a("concreteType.class", cls.getCanonicalName());
            }
            a<I, O> aVar = this.l;
            if (aVar != null) {
                b2.a("converterName", aVar.getClass().getCanonicalName());
            }
            return b2.toString();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            int a = b.a(parcel);
            b.k(parcel, 1, this.b);
            b.k(parcel, 2, this.c);
            b.c(parcel, 3, this.d);
            b.k(parcel, 4, this.e);
            b.c(parcel, 5, this.f);
            b.r(parcel, 6, this.g, false);
            b.k(parcel, 7, this.h);
            String str = this.j;
            zaa zaa = null;
            if (str == null) {
                str = null;
            }
            b.r(parcel, 8, str, false);
            a<I, O> aVar = this.l;
            if (aVar != null) {
                zaa = zaa.o(aVar);
            }
            b.q(parcel, 9, zaa, i2, false);
            b.b(parcel, a);
        }
    }

    public interface a<I, O> {
    }

    private static void f(StringBuilder sb, Field field, Object obj) {
        int i = field.c;
        if (i == 11) {
            sb.append(((FastJsonResponse) field.i.cast(obj)).toString());
        } else if (i == 7) {
            sb.append("\"");
            sb.append(j.a((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }

    public abstract Map<String, Field<?, ?>> a();

    /* access modifiers changed from: protected */
    public Object b(Field field) {
        String str = field.g;
        if (field.i == null) {
            return c(str);
        }
        boolean z = c(str) == null;
        Object[] objArr = {field.g};
        if (z) {
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append("get");
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new IllegalStateException(String.format("Concrete field shouldn't be value object: %s", objArr));
        }
    }

    /* access modifiers changed from: protected */
    public abstract Object c(String str);

    /* access modifiers changed from: protected */
    public boolean d(Field field) {
        if (field.e != 11) {
            return e(field.g);
        }
        if (field.f) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    /* access modifiers changed from: protected */
    public abstract boolean e(String str);

    public String toString() {
        Map<String, Field<?, ?>> a2 = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : a2.keySet()) {
            Field<?, ?> field = a2.get(str);
            if (d(field)) {
                Object b = b(field);
                if (((Field) field).l != null) {
                    b = field.o(b);
                }
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (b != null) {
                    switch (field.e) {
                        case 8:
                            sb.append("\"");
                            sb.append(c2.e((byte[]) b));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(c2.f((byte[]) b));
                            sb.append("\"");
                            continue;
                        case 10:
                            androidx.core.app.b.R0(sb, (HashMap) b);
                            continue;
                        default:
                            if (!field.d) {
                                f(sb, field, b);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) b;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        f(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                continue;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
