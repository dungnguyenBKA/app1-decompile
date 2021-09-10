package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

public class a {

    /* renamed from: com.google.android.gms.common.internal.safeparcel.a$a  reason: collision with other inner class name */
    public static class C0049a extends RuntimeException {
        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public C0049a(java.lang.String r4, android.os.Parcel r5) {
            /*
                r3 = this;
                int r0 = r5.dataPosition()
                int r5 = r5.dataSize()
                java.lang.String r1 = java.lang.String.valueOf(r4)
                int r1 = r1.length()
                int r1 = r1 + 41
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>(r1)
                r2.append(r4)
                java.lang.String r4 = " Parcel: pos="
                r2.append(r4)
                r2.append(r0)
                java.lang.String r4 = " size="
                r2.append(r4)
                r2.append(r5)
                java.lang.String r4 = r2.toString()
                r3.<init>(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.a.C0049a.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    private static void A(Parcel parcel, int i, int i2) {
        int x = x(parcel, i);
        if (x != i2) {
            String hexString = Integer.toHexString(x);
            StringBuilder sb = new StringBuilder(ic.m(hexString, 46));
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(x);
            throw new C0049a(ic.n(sb, " (0x", hexString, ")"), parcel);
        }
    }

    private static void B(Parcel parcel, int i, int i2) {
        if (i != i2) {
            String hexString = Integer.toHexString(i);
            StringBuilder sb = new StringBuilder(ic.m(hexString, 46));
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(i);
            throw new C0049a(ic.n(sb, " (0x", hexString, ")"), parcel);
        }
    }

    public static BigDecimal a(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + x);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static BigInteger b(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + x);
        return new BigInteger(createByteArray);
    }

    public static Bundle c(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + x);
        return readBundle;
    }

    public static byte[] d(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + x);
        return createByteArray;
    }

    public static Parcel e(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, x);
        parcel.setDataPosition(dataPosition + x);
        return obtain;
    }

    public static <T extends Parcelable> T f(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + x);
        return createFromParcel;
    }

    public static String g(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + x);
        return readString;
    }

    public static String[] h(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + x);
        return createStringArray;
    }

    public static ArrayList<String> i(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + x);
        return createStringArrayList;
    }

    public static <T> T[] j(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + x);
        return tArr;
    }

    public static <T> ArrayList<T> k(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + x);
        return createTypedArrayList;
    }

    public static void l(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            throw new C0049a(ic.C(37, "Overread allowed size end=", i), parcel);
        }
    }

    public static boolean m(Parcel parcel, int i) {
        A(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static Boolean n(Parcel parcel, int i) {
        int x = x(parcel, i);
        if (x == 0) {
            return null;
        }
        B(parcel, x, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static double o(Parcel parcel, int i) {
        A(parcel, i, 8);
        return parcel.readDouble();
    }

    public static Double p(Parcel parcel, int i) {
        int x = x(parcel, i);
        if (x == 0) {
            return null;
        }
        B(parcel, x, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float q(Parcel parcel, int i) {
        A(parcel, i, 4);
        return parcel.readFloat();
    }

    public static Float r(Parcel parcel, int i) {
        int x = x(parcel, i);
        if (x == 0) {
            return null;
        }
        B(parcel, x, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static IBinder s(Parcel parcel, int i) {
        int x = x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (x == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + x);
        return readStrongBinder;
    }

    public static int t(Parcel parcel, int i) {
        A(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer u(Parcel parcel, int i) {
        int x = x(parcel, i);
        if (x == 0) {
            return null;
        }
        B(parcel, x, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long v(Parcel parcel, int i) {
        A(parcel, i, 8);
        return parcel.readLong();
    }

    public static Long w(Parcel parcel, int i) {
        int x = x(parcel, i);
        if (x == 0) {
            return null;
        }
        B(parcel, x, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int x(Parcel parcel, int i) {
        return (i & -65536) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    public static void y(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + x(parcel, i));
    }

    public static int z(Parcel parcel) {
        int readInt = parcel.readInt();
        int x = x(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if ((65535 & readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new C0049a(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = x + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new C0049a(ic.c(54, "Size read is invalid start=", dataPosition, " end=", i), parcel);
    }
}
