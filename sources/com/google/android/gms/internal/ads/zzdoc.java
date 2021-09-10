package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class zzdoc {
    private final Pattern zzhlm;

    public zzdoc() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) zzwr.zzqr().zzd(zzabp.zzczb));
        } catch (PatternSyntaxException unused) {
            pattern = null;
        }
        this.zzhlm = pattern;
    }

    public final String zzgt(String str) {
        Pattern pattern = this.zzhlm;
        if (!(pattern == null || str == null)) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group();
            }
        }
        return null;
    }
}
