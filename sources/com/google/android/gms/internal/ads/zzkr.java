package com.google.android.gms.internal.ads;

import android.util.Log;
import com.facebook.ads.AdError;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpStatus;

public final class zzkr {
    public int height;
    public int number;
    public int type;
    public int width;
    public zzjo zzahh;
    public int zzahl;
    public byte[] zzahm;
    public int zzaho;
    public int zzahp;
    private String zzahv;
    public String zzarl;
    public int zzarm;
    public boolean zzarn;
    public byte[] zzaro;
    public zzkk zzarp;
    public byte[] zzarq;
    public int zzarr;
    public int zzars;
    public int zzart;
    public boolean zzaru;
    public int zzarv;
    public int zzarw;
    public int zzarx;
    public int zzary;
    public int zzarz;
    public float zzasa;
    public float zzasb;
    public float zzasc;
    public float zzasd;
    public float zzase;
    public float zzasf;
    public float zzasg;
    public float zzash;
    public float zzasi;
    public float zzasj;
    public int zzask;
    public long zzasl;
    public long zzasm;
    public boolean zzasn;
    public boolean zzaso;
    public zzkh zzasp;
    public int zzasq;

    private zzkr() {
        this.width = -1;
        this.height = -1;
        this.zzarr = -1;
        this.zzars = -1;
        this.zzart = 0;
        this.zzahm = null;
        this.zzahl = -1;
        this.zzaru = false;
        this.zzarv = -1;
        this.zzarw = -1;
        this.zzarx = -1;
        this.zzary = AdError.NETWORK_ERROR_CODE;
        this.zzarz = HttpStatus.SC_OK;
        this.zzasa = -1.0f;
        this.zzasb = -1.0f;
        this.zzasc = -1.0f;
        this.zzasd = -1.0f;
        this.zzase = -1.0f;
        this.zzasf = -1.0f;
        this.zzasg = -1.0f;
        this.zzash = -1.0f;
        this.zzasi = -1.0f;
        this.zzasj = -1.0f;
        this.zzaho = 1;
        this.zzask = -1;
        this.zzahp = 8000;
        this.zzasl = 0;
        this.zzasm = 0;
        this.zzaso = true;
        this.zzahv = "eng";
    }

    private static boolean zzb(zzpn zzpn) {
        try {
            int zziw = zzpn.zziw();
            if (zziw == 1) {
                return true;
            }
            if (zziw == 65534) {
                zzpn.zzbi(24);
                return zzpn.readLong() == zzkq.zzapn.getMostSignificantBits() && zzpn.readLong() == zzkq.zzapn.getLeastSignificantBits();
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzhw("Error parsing MS/ACM codec private");
        }
    }

    private static List<byte[]> zzd(byte[] bArr) {
        try {
            if (bArr[0] == 2) {
                int i = 1;
                int i2 = 0;
                while (bArr[i] == -1) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + bArr[i];
                int i5 = 0;
                while (bArr[i3] == -1) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                int i7 = i5 + bArr[i3];
                if (bArr[i6] == 1) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i6, bArr2, 0, i4);
                    int i8 = i6 + i4;
                    if (bArr[i8] == 3) {
                        int i9 = i8 + i7;
                        if (bArr[i9] == 5) {
                            byte[] bArr3 = new byte[(bArr.length - i9)];
                            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new zzhw("Error parsing vorbis codec private");
                    }
                    throw new zzhw("Error parsing vorbis codec private");
                }
                throw new zzhw("Error parsing vorbis codec private");
            }
            throw new zzhw("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzhw("Error parsing vorbis codec private");
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public final void zza(zzkc zzkc, int i) {
        char c;
        int i2;
        int i3;
        String str;
        ArrayList arrayList;
        zzht zzht;
        int i4;
        zzpy zzpy;
        byte[] bArr;
        int i5;
        int zzbo;
        List<byte[]> list;
        List<byte[]> list2;
        List<byte[]> list3;
        String str2 = this.zzarl;
        str2.hashCode();
        int i6 = 1;
        switch (str2.hashCode()) {
            case -2095576542:
                if (str2.equals("V_MPEG4/ISO/AP")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str2.equals("V_MPEG4/ISO/SP")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str2.equals("A_MS/ACM")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str2.equals("A_TRUEHD")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str2.equals("A_VORBIS")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str2.equals("A_MPEG/L2")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str2.equals("A_MPEG/L3")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str2.equals("V_MS/VFW/FOURCC")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str2.equals("S_DVBSUB")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str2.equals("V_MPEG4/ISO/ASP")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str2.equals("V_MPEG4/ISO/AVC")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str2.equals("S_VOBSUB")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str2.equals("A_DTS/LOSSLESS")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str2.equals("A_AAC")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str2.equals("A_AC3")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str2.equals("A_DTS")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str2.equals("V_VP8")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str2.equals("V_VP9")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str2.equals("S_HDMV/PGS")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str2.equals("V_THEORA")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str2.equals("A_DTS/EXPRESS")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str2.equals("A_PCM/INT/LIT")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str2.equals("V_MPEGH/ISO/HEVC")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str2.equals("S_TEXT/UTF8")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str2.equals("V_MPEG2")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str2.equals("A_EAC3")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str2.equals("A_FLAC")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str2.equals("A_OPUS")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str3 = "audio/raw";
        switch (c) {
            case 0:
            case 1:
            case '\t':
                str = "application/pgs";
                byte[] bArr2 = this.zzarq;
                str3 = "video/mp4v-es";
                list2 = bArr2 == null ? null : Collections.singletonList(bArr2);
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case 2:
                str = "application/pgs";
                if (zzb(new zzpn(this.zzarq))) {
                    zzbo = zzpt.zzbo(this.zzask);
                    if (zzbo == 0) {
                        int i7 = this.zzask;
                        StringBuilder sb = new StringBuilder("audio/x-unknown".length() + 60);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i7);
                        sb.append(". Setting mimeType to ");
                        sb.append("audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    i3 = zzbo;
                    list3 = null;
                    i2 = -1;
                    arrayList = list3;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "audio/x-unknown".length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown") : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to "));
                }
                str3 = "audio/x-unknown";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
            case 3:
                str = "application/pgs";
                str3 = "audio/true-hd";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case 4:
                str = "application/pgs";
                str3 = "audio/vorbis";
                i3 = -1;
                i2 = 8192;
                arrayList = zzd(this.zzarq);
                break;
            case 5:
                str = "application/pgs";
                str3 = "audio/mpeg-L2";
                arrayList = null;
                i3 = -1;
                i2 = 4096;
                break;
            case 6:
                str = "application/pgs";
                str3 = "audio/mpeg";
                arrayList = null;
                i3 = -1;
                i2 = 4096;
                break;
            case 7:
                str = "application/pgs";
                List<byte[]> zza = zza(new zzpn(this.zzarq));
                if (zza != null) {
                    str3 = "video/wvc1";
                    list2 = zza;
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str3 = "video/x-unknown";
                    list2 = zza;
                }
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case '\b':
                str = "application/pgs";
                byte[] bArr3 = this.zzarq;
                str3 = "application/dvbsubs";
                list2 = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case '\n':
                str = "application/pgs";
                zzpv zzg = zzpv.zzg(new zzpn(this.zzarq));
                list = zzg.zzahg;
                this.zzasq = zzg.zzasq;
                str3 = "video/avc";
                list2 = list;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case 11:
                str = "application/pgs";
                str3 = "application/vobsub";
                list2 = Collections.singletonList(this.zzarq);
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                str = "application/pgs";
                str3 = "audio/vnd.dts.hd";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case '\r':
                str = "application/pgs";
                str3 = "audio/mp4a-latm";
                list2 = Collections.singletonList(this.zzarq);
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                str = "application/pgs";
                str3 = "audio/ac3";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
            case 20:
                str = "application/pgs";
                str3 = "audio/vnd.dts";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                str = "application/pgs";
                str3 = "video/x-vnd.on2.vp8";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case 17:
                str = "application/pgs";
                str3 = "video/x-vnd.on2.vp9";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                str = "application/pgs";
                list2 = null;
                str3 = str;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                str = "application/pgs";
                str3 = "video/x-unknown";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                str = "application/pgs";
                zzbo = zzpt.zzbo(this.zzask);
                if (zzbo == 0) {
                    int i8 = this.zzask;
                    StringBuilder sb2 = new StringBuilder("audio/x-unknown".length() + 60);
                    sb2.append("Unsupported PCM bit depth: ");
                    sb2.append(i8);
                    sb2.append(". Setting mimeType to ");
                    sb2.append("audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str3 = "audio/x-unknown";
                    list2 = null;
                    i3 = -1;
                    list3 = list2;
                    i2 = -1;
                    arrayList = list3;
                    break;
                }
                i3 = zzbo;
                list3 = null;
                i2 = -1;
                arrayList = list3;
            case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                str = "application/pgs";
                zzqb zzi = zzqb.zzi(new zzpn(this.zzarq));
                list = zzi.zzahg;
                this.zzasq = zzi.zzasq;
                str3 = "video/hevc";
                list2 = list;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                str = "application/pgs";
                str3 = "application/x-subrip";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                str = "application/pgs";
                str3 = "video/mpeg2";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                str = "application/pgs";
                str3 = "audio/eac3";
                list2 = null;
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                str = "application/pgs";
                str3 = "audio/x-flac";
                list2 = Collections.singletonList(this.zzarq);
                i3 = -1;
                list3 = list2;
                i2 = -1;
                arrayList = list3;
                break;
            case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                ArrayList arrayList2 = new ArrayList(3);
                arrayList2.add(this.zzarq);
                str = "application/pgs";
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzasl).array());
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzasm).array());
                str3 = "audio/opus";
                i3 = -1;
                i2 = 5760;
                arrayList = arrayList2;
                break;
            default:
                throw new zzhw("Unrecognized codec identifier.");
        }
        int i9 = (this.zzaso ? 1 : 0) | 0 | (this.zzasn ? 2 : 0);
        if (zzpj.zzbc(str3)) {
            zzht = zzht.zza(Integer.toString(i), str3, null, -1, i2, this.zzaho, this.zzahp, i3, arrayList, this.zzahh, i9, this.zzahv);
        } else if (zzpj.zzbd(str3)) {
            if (this.zzart == 0) {
                int i10 = this.zzarr;
                i4 = -1;
                if (i10 == -1) {
                    i10 = this.width;
                }
                this.zzarr = i10;
                int i11 = this.zzars;
                if (i11 == -1) {
                    i11 = this.height;
                }
                this.zzars = i11;
            } else {
                i4 = -1;
            }
            int i12 = this.zzarr;
            float f = (i12 == i4 || (i5 = this.zzars) == i4) ? -1.0f : ((float) (this.height * i12)) / ((float) (this.width * i5));
            if (this.zzaru) {
                if (this.zzasa == -1.0f || this.zzasb == -1.0f || this.zzasc == -1.0f || this.zzasd == -1.0f || this.zzase == -1.0f || this.zzasf == -1.0f || this.zzasg == -1.0f || this.zzash == -1.0f || this.zzasi == -1.0f || this.zzasj == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((int) ((this.zzasa * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzasb * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzasc * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzasd * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzase * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzasf * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzasg * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) ((this.zzash * 50000.0f) + 0.5f)));
                    wrap.putShort((short) ((int) (this.zzasi + 0.5f)));
                    wrap.putShort((short) ((int) (this.zzasj + 0.5f)));
                    wrap.putShort((short) this.zzary);
                    wrap.putShort((short) this.zzarz);
                }
                zzpy = new zzpy(this.zzarv, this.zzarx, this.zzarw, bArr);
            } else {
                zzpy = null;
            }
            zzht = zzht.zza(Integer.toString(i), str3, null, -1, i2, this.width, this.height, -1.0f, arrayList, -1, f, this.zzahm, this.zzahl, zzpy, this.zzahh);
            i6 = 2;
        } else {
            if ("application/x-subrip".equals(str3)) {
                zzht = zzht.zza(Integer.toString(i), str3, (String) null, -1, i9, this.zzahv, this.zzahh);
            } else if ("application/vobsub".equals(str3) || str.equals(str3) || "application/dvbsubs".equals(str3)) {
                zzht = zzht.zza(Integer.toString(i), str3, (String) null, -1, arrayList, this.zzahv, this.zzahh);
            } else {
                throw new zzhw("Unexpected MIME type.");
            }
            i6 = 3;
        }
        zzkh zzc = zzkc.zzc(this.number, i6);
        this.zzasp = zzc;
        zzc.zze(zzht);
    }

    /* synthetic */ zzkr(zzkp zzkp) {
        this();
    }

    private static List<byte[]> zza(zzpn zzpn) {
        try {
            zzpn.zzbj(16);
            if (zzpn.zziy() != 826496599) {
                return null;
            }
            byte[] bArr = zzpn.data;
            for (int position = zzpn.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                }
            }
            throw new zzhw("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzhw("Error parsing FourCC VC1 codec private");
        }
    }
}
