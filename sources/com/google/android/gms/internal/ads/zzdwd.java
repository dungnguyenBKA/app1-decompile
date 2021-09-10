package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdwd {
    private final String className;
    private final zzdwg zzhvu;
    private zzdwg zzhvv;
    private boolean zzhvw;

    private zzdwd(String str) {
        zzdwg zzdwg = new zzdwg();
        this.zzhvu = zzdwg;
        this.zzhvv = zzdwg;
        this.zzhvw = false;
        this.className = (String) zzdwl.checkNotNull(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.className);
        sb.append('{');
        zzdwg zzdwg = this.zzhvu.zzhvx;
        String str = "";
        while (zzdwg != null) {
            Object obj = zzdwg.value;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzdwg = zzdwg.zzhvx;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzdwd zzy(@NullableDecl Object obj) {
        zzdwg zzdwg = new zzdwg();
        this.zzhvv.zzhvx = zzdwg;
        this.zzhvv = zzdwg;
        zzdwg.value = obj;
        return this;
    }
}
