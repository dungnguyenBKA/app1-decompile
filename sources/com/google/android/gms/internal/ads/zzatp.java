package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.io.DataInputStream;
import java.io.IOException;

public final class zzatp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatp> CREATOR = new zzatr();
    private ParcelFileDescriptor zzdxf;
    private Parcelable zzdxg = null;
    private boolean zzdxh = true;

    public zzatp(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzdxf = parcelFileDescriptor;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002f A[SYNTHETIC, Splitter:B:11:0x002f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static <T> android.os.ParcelFileDescriptor zzh(byte[] r5) {
        /*
            r0 = 0
            android.os.ParcelFileDescriptor[] r1 = android.os.ParcelFileDescriptor.createPipe()     // Catch:{ IOException -> 0x001d }
            r2 = 1
            r2 = r1[r2]     // Catch:{ IOException -> 0x001d }
            android.os.ParcelFileDescriptor$AutoCloseOutputStream r3 = new android.os.ParcelFileDescriptor$AutoCloseOutputStream     // Catch:{ IOException -> 0x001d }
            r3.<init>(r2)     // Catch:{ IOException -> 0x001d }
            com.google.android.gms.internal.ads.zzdzv r2 = com.google.android.gms.internal.ads.zzazp.zzeic     // Catch:{ IOException -> 0x001b }
            com.google.android.gms.internal.ads.zzato r4 = new com.google.android.gms.internal.ads.zzato     // Catch:{ IOException -> 0x001b }
            r4.<init>(r3, r5)     // Catch:{ IOException -> 0x001b }
            r2.execute(r4)     // Catch:{ IOException -> 0x001b }
            r5 = 0
            r5 = r1[r5]     // Catch:{ IOException -> 0x001b }
            return r5
        L_0x001b:
            r5 = move-exception
            goto L_0x001f
        L_0x001d:
            r5 = move-exception
            r3 = r0
        L_0x001f:
            java.lang.String r1 = "Error transporting the ad response"
            com.google.android.gms.internal.ads.zzazk.zzc(r1, r5)
            com.google.android.gms.internal.ads.zzayo r1 = com.google.android.gms.ads.internal.zzr.zzkv()
            java.lang.String r2 = "LargeParcelTeleporter.pipeData.2"
            r1.zza(r5, r2)
            if (r3 == 0) goto L_0x0032
            r3.close()     // Catch:{ IOException -> 0x0032 }
        L_0x0032:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatp.zzh(byte[]):android.os.ParcelFileDescriptor");
    }

    /* JADX INFO: finally extract failed */
    private final ParcelFileDescriptor zzwj() {
        if (this.zzdxf == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzdxg.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.zzdxf = zzh(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.zzdxf;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzwj();
        int a = b.a(parcel);
        b.q(parcel, 2, this.zzdxf, i, false);
        b.b(parcel, a);
    }

    /* JADX INFO: finally extract failed */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzdxh) {
            if (this.zzdxf == null) {
                zzazk.zzev("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzdxf));
            try {
                int readInt = dataInputStream.readInt();
                byte[] bArr = new byte[readInt];
                dataInputStream.readFully(bArr, 0, readInt);
                try {
                    dataInputStream.close();
                } catch (IOException unused) {
                }
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(bArr, 0, readInt);
                    obtain.setDataPosition(0);
                    this.zzdxg = creator.createFromParcel(obtain);
                    obtain.recycle();
                    this.zzdxh = false;
                } catch (Throwable th) {
                    obtain.recycle();
                    throw th;
                }
            } catch (IOException e) {
                zzazk.zzc("Could not read from parcel file descriptor", e);
                try {
                    dataInputStream.close();
                } catch (IOException unused2) {
                }
                return null;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (IOException unused3) {
                }
                throw th2;
            }
        }
        return (T) ((SafeParcelable) this.zzdxg);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0030 A[SYNTHETIC, Splitter:B:22:0x0030] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x003c A[Catch:{ IOException -> 0x003f }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static final void zza(java.io.OutputStream r3, byte[] r4) {
        /*
            r0 = 0
            java.io.DataOutputStream r1 = new java.io.DataOutputStream     // Catch:{ IOException -> 0x0019 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0019 }
            int r0 = r4.length     // Catch:{ IOException -> 0x0014, all -> 0x0011 }
            r1.writeInt(r0)     // Catch:{ IOException -> 0x0014, all -> 0x0011 }
            r1.write(r4)     // Catch:{ IOException -> 0x0014, all -> 0x0011 }
            r1.close()     // Catch:{ IOException -> 0x0010 }
        L_0x0010:
            return
        L_0x0011:
            r4 = move-exception
            r0 = r1
            goto L_0x0034
        L_0x0014:
            r4 = move-exception
            r0 = r1
            goto L_0x001a
        L_0x0017:
            r4 = move-exception
            goto L_0x0034
        L_0x0019:
            r4 = move-exception
        L_0x001a:
            java.lang.String r1 = "Error transporting the ad response"
            com.google.android.gms.internal.ads.zzazk.zzc(r1, r4)     // Catch:{ all -> 0x0017 }
            com.google.android.gms.internal.ads.zzayo r1 = com.google.android.gms.ads.internal.zzr.zzkv()     // Catch:{ all -> 0x0017 }
            java.lang.String r2 = "LargeParcelTeleporter.pipeData.1"
            r1.zza(r4, r2)     // Catch:{ all -> 0x0017 }
            if (r0 != 0) goto L_0x0030
            if (r3 == 0) goto L_0x002f
            r3.close()     // Catch:{ IOException -> 0x002f }
        L_0x002f:
            return
        L_0x0030:
            r0.close()     // Catch:{ IOException -> 0x0033 }
        L_0x0033:
            return
        L_0x0034:
            if (r0 != 0) goto L_0x003c
            if (r3 == 0) goto L_0x003f
            r3.close()     // Catch:{ IOException -> 0x003f }
            goto L_0x003f
        L_0x003c:
            r0.close()     // Catch:{ IOException -> 0x003f }
        L_0x003f:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatp.zza(java.io.OutputStream, byte[]):void");
    }
}
