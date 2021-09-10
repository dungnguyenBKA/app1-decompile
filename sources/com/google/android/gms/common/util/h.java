package com.google.android.gms.common.util;

import java.util.regex.Pattern;

public class h {
    static {
        Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
        Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
        Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:29:0x0063 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.Map<java.lang.String, java.lang.String> a(java.net.URI r6, java.lang.String r7) {
        /*
            java.util.Map r0 = java.util.Collections.emptyMap()
            java.lang.String r6 = r6.getRawQuery()
            if (r6 == 0) goto L_0x0063
            int r1 = r6.length()
            if (r1 <= 0) goto L_0x0063
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Scanner r1 = new java.util.Scanner
            r1.<init>(r6)
            java.lang.String r6 = "&"
            r1.useDelimiter(r6)
        L_0x001f:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L_0x0063
            java.lang.String r6 = r1.next()
            java.lang.String r2 = "="
            java.lang.String[] r6 = r6.split(r2)
            int r2 = r6.length
            if (r2 == 0) goto L_0x005b
            int r2 = r6.length
            r3 = 2
            if (r2 > r3) goto L_0x005b
            r2 = 0
            r2 = r6[r2]
            java.lang.String r2 = java.net.URLDecoder.decode(r2, r7)     // Catch:{ UnsupportedEncodingException -> 0x0054 }
            r4 = 0
            int r5 = r6.length
            if (r5 != r3) goto L_0x0050
            r3 = 1
            r6 = r6[r3]
            java.lang.String r4 = java.net.URLDecoder.decode(r6, r7)     // Catch:{ UnsupportedEncodingException -> 0x0049 }
            goto L_0x0050
        L_0x0049:
            r6 = move-exception
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>(r6)
            throw r7
        L_0x0050:
            r0.put(r2, r4)
            goto L_0x001f
        L_0x0054:
            r6 = move-exception
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>(r6)
            throw r7
        L_0x005b:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "bad parameter"
            r6.<init>(r7)
            throw r6
        L_0x0063:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.h.a(java.net.URI, java.lang.String):java.util.Map");
    }
}
