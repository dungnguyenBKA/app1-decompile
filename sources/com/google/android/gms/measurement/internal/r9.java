package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcc;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzcj;
import com.google.android.gms.internal.measurement.zzck;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* access modifiers changed from: package-private */
public abstract class r9 {
    final String a;
    final int b;
    Boolean c;
    Boolean d;
    Long e;
    Long f;

    r9(String str, int i) {
        this.a = str;
        this.b = i;
    }

    static Boolean d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    static Boolean e(String str, zzck zzck, i3 i3Var) {
        String str2;
        List<String> list;
        Objects.requireNonNull(zzck, "null reference");
        if (str == null || !zzck.zza() || zzck.zzb() == zzcj.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        zzcj zzb = zzck.zzb();
        zzcj zzcj = zzcj.IN_LIST;
        if (zzb == zzcj) {
            if (zzck.zzh() == 0) {
                return null;
            }
        } else if (!zzck.zzc()) {
            return null;
        }
        zzcj zzb2 = zzck.zzb();
        boolean zzf = zzck.zzf();
        if (zzf || zzb2 == zzcj.REGEXP || zzb2 == zzcj) {
            str2 = zzck.zzd();
        } else {
            str2 = zzck.zzd().toUpperCase(Locale.ENGLISH);
        }
        if (zzck.zzh() == 0) {
            list = null;
        } else {
            list = zzck.zzg();
            if (!zzf) {
                ArrayList arrayList = new ArrayList(list.size());
                for (String str3 : list) {
                    arrayList.add(str3.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        zzcj zzcj2 = zzcj.REGEXP;
        String str4 = zzb2 == zzcj2 ? str2 : null;
        if (zzb2 == zzcj.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!zzf && zzb2 != zzcj2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        zzcc zzcc = zzcc.UNKNOWN_COMPARISON_TYPE;
        switch (zzb2.ordinal()) {
            case 1:
                if (str4 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str4, true != zzf ? 66 : 0).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (i3Var == null) {
                        return null;
                    }
                    i3Var.q().b("Invalid regular expression in REGEXP audience filter. expression", str4);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    static Boolean f(long j, zzcd zzcd) {
        try {
            return h(new BigDecimal(j), zzcd, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean g(String str, zzcd zzcd) {
        if (!d9.A(str)) {
            return null;
        }
        try {
            return h(new BigDecimal(str), zzcd, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean h(BigDecimal bigDecimal, zzcd zzcd, double d2) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Objects.requireNonNull(zzcd, "null reference");
        if (zzcd.zza() && zzcd.zzb() != zzcc.UNKNOWN_COMPARISON_TYPE) {
            zzcc zzb = zzcd.zzb();
            zzcc zzcc = zzcc.BETWEEN;
            if (zzb == zzcc) {
                if (!zzcd.zzg() || !zzcd.zzi()) {
                    return null;
                }
            } else if (!zzcd.zze()) {
                return null;
            }
            zzcc zzb2 = zzcd.zzb();
            if (zzcd.zzb() == zzcc) {
                if (d9.A(zzcd.zzh()) && d9.A(zzcd.zzj())) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(zzcd.zzh());
                        bigDecimal3 = new BigDecimal(zzcd.zzj());
                        bigDecimal2 = bigDecimal5;
                        bigDecimal4 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            } else if (!d9.A(zzcd.zzf())) {
                return null;
            } else {
                try {
                    bigDecimal4 = new BigDecimal(zzcd.zzf());
                    bigDecimal2 = null;
                    bigDecimal3 = null;
                } catch (NumberFormatException unused2) {
                }
            }
            if (zzb2 == zzcc) {
                if (bigDecimal2 == null) {
                    return null;
                }
            } else if (bigDecimal4 == null) {
                return null;
            }
            zzcj zzcj = zzcj.UNKNOWN_MATCH_TYPE;
            int ordinal = zzb2.ordinal();
            boolean z = false;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4 || bigDecimal2 == null) {
                            return null;
                        }
                        if (!(bigDecimal.compareTo(bigDecimal2) == -1 || bigDecimal.compareTo(bigDecimal3) == 1)) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                    } else if (bigDecimal4 == null) {
                        return null;
                    } else {
                        if (d2 != 0.0d) {
                            if (bigDecimal.compareTo(bigDecimal4.subtract(new BigDecimal(d2).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal4.add(new BigDecimal(d2).multiply(new BigDecimal(2)))) == -1) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        }
                        if (bigDecimal.compareTo(bigDecimal4) == 0) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                    }
                } else if (bigDecimal4 == null) {
                    return null;
                } else {
                    if (bigDecimal.compareTo(bigDecimal4) == 1) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
            } else if (bigDecimal4 == null) {
                return null;
            } else {
                if (bigDecimal.compareTo(bigDecimal4) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public abstract int a();

    /* access modifiers changed from: package-private */
    public abstract boolean b();

    /* access modifiers changed from: package-private */
    public abstract boolean c();
}
