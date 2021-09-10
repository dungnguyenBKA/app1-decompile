package com.google.android.gms.internal.ads;

import com.vungle.warren.error.VungleException;

final class zzenx {
    static String zzan(zzejr zzejr) {
        zzeoa zzeoa = new zzeoa(zzejr);
        StringBuilder sb = new StringBuilder(zzeoa.size());
        for (int i = 0; i < zzeoa.size(); i++) {
            byte zzfz = zzeoa.zzfz(i);
            if (zzfz == 34) {
                sb.append("\\\"");
            } else if (zzfz == 39) {
                sb.append("\\'");
            } else if (zzfz != 92) {
                switch (zzfz) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (zzfz < 32 || zzfz > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzfz >>> 6) & 3) + 48));
                            sb.append((char) (((zzfz >>> 3) & 7) + 48));
                            sb.append((char) ((zzfz & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzfz);
                            continue;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
