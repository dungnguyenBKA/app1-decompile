package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.io.Reader;
import java.util.List;
import org.json.JSONException;

public final class zzdnj {
    public final zzdnb zzess;
    public final List<zzdmw> zzhkp;
    public final List<zzdni> zzhkq;

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:44:0x0011 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:49:0x0029 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:47:0x0011 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:53:0x0029 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<com.google.android.gms.internal.ads.zzdmw>] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private zzdnj(android.util.JsonReader r9) {
        /*
        // Method dump skipped, instructions count: 219
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdnj.<init>(android.util.JsonReader):void");
    }

    public static zzdnj zza(Reader reader) {
        try {
            zzdnj zzdnj = new zzdnj(new JsonReader(reader));
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException unused) {
                }
            }
            return zzdnj;
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzdna("unable to parse ServerResponse", e);
        } catch (Throwable th) {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
