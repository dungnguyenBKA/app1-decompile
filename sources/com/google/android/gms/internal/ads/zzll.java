package com.google.android.gms.internal.ads;

import android.util.Log;
import org.apache.http.HttpHeaders;

/* access modifiers changed from: package-private */
public final class zzll {
    private static final int zzayn = zzpt.zzbh("nam");
    private static final int zzayo = zzpt.zzbh("trk");
    private static final int zzayp = zzpt.zzbh("cmt");
    private static final int zzayq = zzpt.zzbh("day");
    private static final int zzayr = zzpt.zzbh("ART");
    private static final int zzays = zzpt.zzbh("too");
    private static final int zzayt = zzpt.zzbh("alb");
    private static final int zzayu = zzpt.zzbh("com");
    private static final int zzayv = zzpt.zzbh("wrt");
    private static final int zzayw = zzpt.zzbh("lyr");
    private static final int zzayx = zzpt.zzbh("gen");
    private static final int zzayy = zzpt.zzbh("covr");
    private static final int zzayz = zzpt.zzbh("gnre");
    private static final int zzaza = zzpt.zzbh("grp");
    private static final int zzazb = zzpt.zzbh("disk");
    private static final int zzazc = zzpt.zzbh("trkn");
    private static final int zzazd = zzpt.zzbh("tmpo");
    private static final int zzaze = zzpt.zzbh("cpil");
    private static final int zzazf = zzpt.zzbh("aART");
    private static final int zzazg = zzpt.zzbh("sonm");
    private static final int zzazh = zzpt.zzbh("soal");
    private static final int zzazi = zzpt.zzbh("soar");
    private static final int zzazj = zzpt.zzbh("soaa");
    private static final int zzazk = zzpt.zzbh("soco");
    private static final int zzazl = zzpt.zzbh("rtng");
    private static final int zzazm = zzpt.zzbh("pgap");
    private static final int zzazn = zzpt.zzbh("sosn");
    private static final int zzazo = zzpt.zzbh("tvsh");
    private static final int zzazp = zzpt.zzbh("----");
    private static final String[] zzazq = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpHeaders.TRAILER, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private static zzmn zza(int i, String str, zzpn zzpn) {
        int readInt = zzpn.readInt();
        if (zzpn.readInt() == zzkw.zzawc) {
            zzpn.zzbj(8);
            return new zzmn(str, null, zzpn.zzbk(readInt - 16));
        }
        String valueOf = String.valueOf(zzkw.zzat(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static zzmn zzb(int i, String str, zzpn zzpn) {
        int readInt = zzpn.readInt();
        if (zzpn.readInt() == zzkw.zzawc && readInt >= 22) {
            zzpn.zzbj(10);
            int readUnsignedShort = zzpn.readUnsignedShort();
            if (readUnsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(readUnsignedShort);
                String sb2 = sb.toString();
                int readUnsignedShort2 = zzpn.readUnsignedShort();
                if (readUnsignedShort2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(readUnsignedShort2);
                    sb2 = sb3.toString();
                }
                return new zzmn(str, null, sb2);
            }
        }
        String valueOf2 = String.valueOf(zzkw.zzat(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x003a A[Catch:{ all -> 0x02bb }] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0041 A[Catch:{ all -> 0x02bb }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.ads.zzmh.zza zzd(com.google.android.gms.internal.ads.zzpn r14) {
        /*
        // Method dump skipped, instructions count: 706
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzll.zzd(com.google.android.gms.internal.ads.zzpn):com.google.android.gms.internal.ads.zzmh$zza");
    }

    private static int zze(zzpn zzpn) {
        zzpn.zzbj(4);
        if (zzpn.readInt() == zzkw.zzawc) {
            zzpn.zzbj(8);
            return zzpn.readUnsignedByte();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzmo zza(int i, String str, zzpn zzpn, boolean z, boolean z2) {
        int zze = zze(zzpn);
        if (z2) {
            zze = Math.min(1, zze);
        }
        if (zze < 0) {
            String valueOf = String.valueOf(zzkw.zzat(i));
            Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
            return null;
        } else if (z) {
            return new zzmn(str, null, Integer.toString(zze));
        } else {
            return new zzmj("und", str, Integer.toString(zze));
        }
    }
}
