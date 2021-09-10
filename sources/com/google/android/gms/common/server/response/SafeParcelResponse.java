package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.core.app.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.j;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new e();
    private final int b;
    private final Parcel c;
    private final int d = 2;
    private final zak e;
    private final String f;
    private int g;
    private int h;

    SafeParcelResponse(int i, Parcel parcel, zak zak) {
        this.b = i;
        Objects.requireNonNull(parcel, "null reference");
        this.c = parcel;
        this.e = zak;
        if (zak == null) {
            this.f = null;
        } else {
            this.f = zak.o();
        }
        this.g = 2;
    }

    private static void g(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(j.a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(c2.e((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(c2.f((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                b.R0(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(ic.C(26, "Unknown type = ", i));
        }
    }

    private final void h(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().h, entry);
        }
        sb.append('{');
        int z = a.z(parcel);
        boolean z2 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get(65535 & readInt);
            if (entry2 != null) {
                if (z2) {
                    sb.append(",");
                }
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append((String) entry2.getKey());
                sb.append("\":");
                if (field.k0()) {
                    switch (field.e) {
                        case 0:
                            Object valueOf = Integer.valueOf(a.t(parcel, readInt));
                            if (((FastJsonResponse.Field) field).l != null) {
                                valueOf = field.o(valueOf);
                            }
                            i(sb, field, valueOf);
                            break;
                        case 1:
                            Object b2 = a.b(parcel, readInt);
                            if (((FastJsonResponse.Field) field).l != null) {
                                b2 = field.o(b2);
                            }
                            i(sb, field, b2);
                            break;
                        case 2:
                            Object valueOf2 = Long.valueOf(a.v(parcel, readInt));
                            if (((FastJsonResponse.Field) field).l != null) {
                                valueOf2 = field.o(valueOf2);
                            }
                            i(sb, field, valueOf2);
                            break;
                        case 3:
                            Object valueOf3 = Float.valueOf(a.q(parcel, readInt));
                            if (((FastJsonResponse.Field) field).l != null) {
                                valueOf3 = field.o(valueOf3);
                            }
                            i(sb, field, valueOf3);
                            break;
                        case 4:
                            Object valueOf4 = Double.valueOf(a.o(parcel, readInt));
                            if (((FastJsonResponse.Field) field).l != null) {
                                valueOf4 = field.o(valueOf4);
                            }
                            i(sb, field, valueOf4);
                            break;
                        case 5:
                            Object a = a.a(parcel, readInt);
                            if (((FastJsonResponse.Field) field).l != null) {
                                a = field.o(a);
                            }
                            i(sb, field, a);
                            break;
                        case 6:
                            Object valueOf5 = Boolean.valueOf(a.m(parcel, readInt));
                            if (((FastJsonResponse.Field) field).l != null) {
                                valueOf5 = field.o(valueOf5);
                            }
                            i(sb, field, valueOf5);
                            break;
                        case 7:
                            Object g2 = a.g(parcel, readInt);
                            if (((FastJsonResponse.Field) field).l != null) {
                                g2 = field.o(g2);
                            }
                            i(sb, field, g2);
                            break;
                        case 8:
                        case 9:
                            Object d2 = a.d(parcel, readInt);
                            if (((FastJsonResponse.Field) field).l != null) {
                                d2 = field.o(d2);
                            }
                            i(sb, field, d2);
                            break;
                        case 10:
                            Bundle c2 = a.c(parcel, readInt);
                            HashMap hashMap = new HashMap();
                            for (String str : c2.keySet()) {
                                hashMap.put(str, c2.getString(str));
                            }
                            HashMap hashMap2 = hashMap;
                            if (((FastJsonResponse.Field) field).l != null) {
                                hashMap2 = field.o(hashMap);
                            }
                            i(sb, field, hashMap2);
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException(ic.C(36, "Unknown field out type = ", field.e));
                    }
                } else if (field.f) {
                    sb.append("[");
                    int[] iArr = null;
                    Parcel[] parcelArr = null;
                    boolean[] zArr = null;
                    BigDecimal[] bigDecimalArr = null;
                    double[] dArr = null;
                    float[] fArr = null;
                    long[] jArr = null;
                    BigInteger[] bigIntegerArr = null;
                    switch (field.e) {
                        case 0:
                            int x = a.x(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (x != 0) {
                                iArr = parcel.createIntArray();
                                parcel.setDataPosition(dataPosition + x);
                            }
                            int length = iArr.length;
                            for (int i = 0; i < length; i++) {
                                if (i != 0) {
                                    sb.append(",");
                                }
                                sb.append(Integer.toString(iArr[i]));
                            }
                            break;
                        case 1:
                            int x2 = a.x(parcel, readInt);
                            int dataPosition2 = parcel.dataPosition();
                            if (x2 != 0) {
                                int readInt2 = parcel.readInt();
                                bigIntegerArr = new BigInteger[readInt2];
                                for (int i2 = 0; i2 < readInt2; i2++) {
                                    bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
                                }
                                parcel.setDataPosition(dataPosition2 + x2);
                            }
                            b.Q0(sb, bigIntegerArr);
                            break;
                        case 2:
                            int x3 = a.x(parcel, readInt);
                            int dataPosition3 = parcel.dataPosition();
                            if (x3 != 0) {
                                jArr = parcel.createLongArray();
                                parcel.setDataPosition(dataPosition3 + x3);
                            }
                            int length2 = jArr.length;
                            for (int i3 = 0; i3 < length2; i3++) {
                                if (i3 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Long.toString(jArr[i3]));
                            }
                            break;
                        case 3:
                            int x4 = a.x(parcel, readInt);
                            int dataPosition4 = parcel.dataPosition();
                            if (x4 != 0) {
                                fArr = parcel.createFloatArray();
                                parcel.setDataPosition(dataPosition4 + x4);
                            }
                            int length3 = fArr.length;
                            for (int i4 = 0; i4 < length3; i4++) {
                                if (i4 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Float.toString(fArr[i4]));
                            }
                            break;
                        case 4:
                            int x5 = a.x(parcel, readInt);
                            int dataPosition5 = parcel.dataPosition();
                            if (x5 != 0) {
                                dArr = parcel.createDoubleArray();
                                parcel.setDataPosition(dataPosition5 + x5);
                            }
                            int length4 = dArr.length;
                            for (int i5 = 0; i5 < length4; i5++) {
                                if (i5 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Double.toString(dArr[i5]));
                            }
                            break;
                        case 5:
                            int x6 = a.x(parcel, readInt);
                            int dataPosition6 = parcel.dataPosition();
                            if (x6 != 0) {
                                int readInt3 = parcel.readInt();
                                bigDecimalArr = new BigDecimal[readInt3];
                                for (int i6 = 0; i6 < readInt3; i6++) {
                                    byte[] createByteArray = parcel.createByteArray();
                                    bigDecimalArr[i6] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
                                }
                                parcel.setDataPosition(dataPosition6 + x6);
                            }
                            b.Q0(sb, bigDecimalArr);
                            break;
                        case 6:
                            int x7 = a.x(parcel, readInt);
                            int dataPosition7 = parcel.dataPosition();
                            if (x7 != 0) {
                                zArr = parcel.createBooleanArray();
                                parcel.setDataPosition(dataPosition7 + x7);
                            }
                            int length5 = zArr.length;
                            for (int i7 = 0; i7 < length5; i7++) {
                                if (i7 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Boolean.toString(zArr[i7]));
                            }
                            break;
                        case 7:
                            String[] h2 = a.h(parcel, readInt);
                            int length6 = h2.length;
                            for (int i8 = 0; i8 < length6; i8++) {
                                if (i8 != 0) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(h2[i8]);
                                sb.append("\"");
                            }
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            int x8 = a.x(parcel, readInt);
                            int dataPosition8 = parcel.dataPosition();
                            if (x8 != 0) {
                                int readInt4 = parcel.readInt();
                                Parcel[] parcelArr2 = new Parcel[readInt4];
                                for (int i9 = 0; i9 < readInt4; i9++) {
                                    int readInt5 = parcel.readInt();
                                    if (readInt5 != 0) {
                                        int dataPosition9 = parcel.dataPosition();
                                        Parcel obtain = Parcel.obtain();
                                        obtain.appendFrom(parcel, dataPosition9, readInt5);
                                        parcelArr2[i9] = obtain;
                                        parcel.setDataPosition(dataPosition9 + readInt5);
                                    } else {
                                        parcelArr2[i9] = null;
                                    }
                                }
                                parcel.setDataPosition(dataPosition8 + x8);
                                parcelArr = parcelArr2;
                            }
                            int length7 = parcelArr.length;
                            for (int i10 = 0; i10 < length7; i10++) {
                                if (i10 > 0) {
                                    sb.append(",");
                                }
                                parcelArr[i10].setDataPosition(0);
                                h(sb, field.l0(), parcelArr[i10]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.e) {
                        case 0:
                            sb.append(a.t(parcel, readInt));
                            break;
                        case 1:
                            sb.append(a.b(parcel, readInt));
                            break;
                        case 2:
                            sb.append(a.v(parcel, readInt));
                            break;
                        case 3:
                            sb.append(a.q(parcel, readInt));
                            break;
                        case 4:
                            sb.append(a.o(parcel, readInt));
                            break;
                        case 5:
                            sb.append(a.a(parcel, readInt));
                            break;
                        case 6:
                            sb.append(a.m(parcel, readInt));
                            break;
                        case 7:
                            String g3 = a.g(parcel, readInt);
                            sb.append("\"");
                            sb.append(j.a(g3));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] d3 = a.d(parcel, readInt);
                            sb.append("\"");
                            sb.append(c2.e(d3));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] d4 = a.d(parcel, readInt);
                            sb.append("\"");
                            sb.append(c2.f(d4));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle c3 = a.c(parcel, readInt);
                            Set<String> keySet = c3.keySet();
                            keySet.size();
                            sb.append("{");
                            boolean z3 = true;
                            for (String str2 : keySet) {
                                if (!z3) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str2);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(j.a(c3.getString(str2)));
                                sb.append("\"");
                                z3 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel e2 = a.e(parcel, readInt);
                            e2.setDataPosition(0);
                            h(sb, field.l0(), e2);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z2 = true;
            }
        }
        if (parcel.dataPosition() == z) {
            sb.append('}');
            return;
        }
        throw new a.C0049a(ic.C(37, "Overread allowed size end=", z), parcel);
    }

    private final void i(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.d) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                g(sb, field.c, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        g(sb, field.c, obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0005, code lost:
        if (r0 != 1) goto L_0x001a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final android.os.Parcel k() {
        /*
            r2 = this;
            int r0 = r2.g
            if (r0 == 0) goto L_0x0008
            r1 = 1
            if (r0 == r1) goto L_0x0010
            goto L_0x001a
        L_0x0008:
            android.os.Parcel r0 = r2.c
            int r0 = com.google.android.gms.common.internal.safeparcel.b.a(r0)
            r2.h = r0
        L_0x0010:
            android.os.Parcel r0 = r2.c
            int r1 = r2.h
            com.google.android.gms.common.internal.safeparcel.b.b(r0, r1)
            r0 = 2
            r2.g = r0
        L_0x001a:
            android.os.Parcel r0 = r2.c
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.k():android.os.Parcel");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> a() {
        zak zak = this.e;
        if (zak == null) {
            return null;
        }
        return zak.i0(this.f);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public Object c(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public boolean e(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        n.i(this.e, "Cannot convert to JSON on client side.");
        Parcel k = k();
        k.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        h(sb, this.e.i0(this.f), k);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zak zak;
        int a = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.k(parcel, 1, this.b);
        com.google.android.gms.common.internal.safeparcel.b.p(parcel, 2, k(), false);
        int i2 = this.d;
        if (i2 == 0) {
            zak = null;
        } else if (i2 == 1) {
            zak = this.e;
        } else if (i2 == 2) {
            zak = this.e;
        } else {
            throw new IllegalStateException(ic.C(34, "Invalid creation type: ", this.d));
        }
        com.google.android.gms.common.internal.safeparcel.b.q(parcel, 3, zak, i, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a);
    }
}
