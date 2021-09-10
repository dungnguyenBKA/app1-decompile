package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdwt {
    @NullableDecl
    public static String emptyToNull(@NullableDecl String str) {
        return zzdwh.emptyToNull(str);
    }

    public static boolean zzar(@NullableDecl String str) {
        return zzdwh.zzhl(str);
    }

    public static String zzb(@NullableDecl String str, @NullableDecl Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            objArr[i2] = zzz(objArr[i2]);
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + valueOf.length());
        int i3 = 0;
        while (i < objArr.length && (indexOf = valueOf.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) valueOf, i3, indexOf);
            sb.append(objArr[i]);
            i3 = indexOf + 2;
            i++;
        }
        sb.append((CharSequence) valueOf, i3, valueOf.length());
        if (i < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String zzhm(@NullableDecl String str) {
        return zzdwh.zzhm(str);
    }

    private static String zzz(@NullableDecl Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb = new StringBuilder(ic.m(hexString, name.length() + 1));
            sb.append(name);
            sb.append('@');
            sb.append(hexString);
            String sb2 = sb.toString();
            Logger logger = Logger.getLogger("com.google.common.base.Strings");
            Level level = Level.WARNING;
            String valueOf = String.valueOf(sb2);
            logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder p = ic.p(name2.length() + ic.m(sb2, 9), "<", sb2, " threw ", name2);
            p.append(">");
            return p.toString();
        }
    }
}
