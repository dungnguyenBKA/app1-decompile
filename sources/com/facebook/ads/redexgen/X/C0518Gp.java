package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Gp  reason: case insensitive filesystem */
public final class C0518Gp {
    public static byte[] A01;
    public static String[] A02;
    public static final Pattern A03 = Pattern.compile(A03(161, 26, 61));
    public static final Pattern A04 = Pattern.compile(A03(3, 12, 60));
    public final StringBuilder A00 = new StringBuilder();

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 88);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A01 = new byte[]{116, 22, 48, 76, 56, 55, 79, 91, 77, 94, 76, 56, 55, 79, 77, 66, 54, 42, 35, 4, 28, 11, 6, 3, 14, 74, 11, 6, 3, 13, 4, 7, 15, 4, 30, 74, 28, 11, 6, 31, 15, 80, 74, 106, 77, 85, 66, 79, 74, 71, 3, 66, 77, 64, 75, 76, 81, 3, 85, 66, 79, 86, 70, 25, 3, 42, 18, 16, 9, 9, 16, 23, 30, 89, 27, 24, 29, 89, 26, 12, 28, 89, 10, 28, 13, 13, 16, 23, 30, 67, 89, 118, 78, 76, 85, 85, 76, 75, 66, 5, 70, 80, 64, 5, 82, 76, 81, 77, 5, 71, 68, 65, 5, 77, 64, 68, 65, 64, 87, 31, 5, 22, 45, 40, 45, 44, 52, 45, 99, 32, 54, 38, 99, 48, 38, 55, 55, 42, 45, 36, 99, 51, 1, 6, 18, 16, 16, 39, 17, 1, 52, 5, 22, 23, 1, 22, 36, 95, 35, 81, 34, 59, 77, 57, 54, 78, 76, 57, 22, 78, 72, 72, 91, 57, 22, 78, 77, 57, 54, 78, 76, 77, 75, 79, 76, 90, 65, 41, 36, 33, 47, 38, 120, 116, 105, 82, 18, 19, 21, 30, 4, 21, 2, 91, 80, 90, 103, 116, 99, 56, 54, 63, 62, 35, 56, 63, 54, 113, 36, 63, 34, 36, 33, 33, 62, 35, 37, 52, 53, 113, 52, 63, 37, 56, 37, 40, 107, 113, 118, 119, 33, 44, 35, 42, 44, 37, 38, 52, 23, 18, 21, 30, 49, 41, 74, 78, 67, 67, 75, 66, 7, 11, 26, 25, 11, 20, 8, 18, 15, 18, 20, 21, 67, 88, 86, 89, 69, 109, 119, 100, 123, 121, 126, 107, 120, 126, 99, 52};
    }

    public static void A06() {
        A02 = new String[]{"BH2zNHpX", "Dnuq9wFIL2", "vBkvmD9EAd5t9FTNthVuCuoibAfWrGUa", "Nhu3hv03L3KjBzyMucsPwsjdroL1", "9TVwE8RhMB8DaYr8DWqJ6OPYy1", "9JupfOkL4WUcaojH", "ecCz7RACP0dYyLgy5uflHn", "VPA8JBGLf77hbCQNqSGQ8FIxNIe4WZlE"};
    }

    static {
        A06();
        A05();
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A00(String str) {
        char c;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A03(197, 6, 40))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (str.equals(A03(254, 6, 127))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                boolean equals = str.equals(A03(HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 3, 102));
                if (A02[3].length() != 10) {
                    A02[5] = "MJ40TcK0DidUTvS4";
                    if (equals) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case 109757538:
                if (str.equals(A03(281, 5, 82))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            return 0;
        }
        if (c == 1 || c == 2) {
            return 1;
        }
        if (c == 3) {
            return 2;
        }
        Log.w(A03(141, 15, 60), A03(43, 22, 123) + str);
        return RecyclerView.UNDEFINED_DURATION;
    }

    public static int A01(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public static Layout.Alignment A02(String str) {
        char c;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A03(197, 6, 40))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (str.equals(A03(254, 6, 127))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (str.equals(A03(HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 3, 102))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (str.equals(A03(244, 4, 24))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (str.equals(A03(272, 5, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals(A03(281, 5, 82))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0 || c == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (c == 2 || c == 3) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (c == 4 || c == 5) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        Log.w(A03(141, 15, 60), A03(18, 25, 50) + str);
        return null;
    }

    public static String A04(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return null;
        }
        return C0556Ic.A0n(trim, A03(156, 5, 39))[0];
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x004b, code lost:
        if (r4 != false) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x008f, code lost:
        if (r4 != false) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x011f, code lost:
        if (r4 != false) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x012a, code lost:
        if (r4 != false) goto L_0x004d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void A07(android.text.SpannableStringBuilder r5, com.facebook.ads.redexgen.X.C0513Gk r6, int r7, int r8) {
        /*
        // Method dump skipped, instructions count: 314
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0518Gp.A07(android.text.SpannableStringBuilder, com.facebook.ads.redexgen.X.Gk, int, int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void A08(java.lang.String r6, android.text.SpannableStringBuilder r7) {
        /*
        // Method dump skipped, instructions count: 178
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0518Gp.A08(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    public static void A09(String str, C0515Gm gm) {
        String A032 = A03(141, 15, 60);
        Matcher matcher = A04.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if (A03(248, 4, 35).equals(group)) {
                    A0A(group2, gm);
                } else if (A03(187, 5, 16).equals(group)) {
                    gm.A0C(A02(group2));
                } else if (A03(264, 8, 35).equals(group)) {
                    A0B(group2, gm);
                } else if (A03(277, 4, 70).equals(group)) {
                    gm.A06(C0519Gq.A00(group2));
                } else {
                    Log.w(A032, A03(121, 20, 27) + group + A03(15, 1, 32) + group2);
                }
            } catch (NumberFormatException unused) {
                Log.w(A032, A03(65, 26, 33) + matcher.group());
            }
        }
    }

    public static void A0A(String str, C0515Gm gm) throws NumberFormatException {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            gm.A07(A00(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            gm.A07(RecyclerView.UNDEFINED_DURATION);
        }
        if (str.endsWith(A03(2, 1, 77))) {
            gm.A04(C0519Gq.A00(str)).A08(0);
            return;
        }
        int parseInt = Integer.parseInt(str);
        if (parseInt < 0) {
            parseInt--;
        }
        C0515Gm A042 = gm.A04((float) parseInt);
        String[] strArr = A02;
        if (strArr[0].length() != strArr[6].length()) {
            String[] strArr2 = A02;
            strArr2[0] = "nfwpqDM6";
            strArr2[6] = "ldPC0GHiWge259aJMdVkFd";
            A042.A08(1);
            return;
        }
        throw new RuntimeException();
    }

    public static void A0B(String str, C0515Gm gm) throws NumberFormatException {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            gm.A09(A00(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            gm.A09(RecyclerView.UNDEFINED_DURATION);
        }
        gm.A05(C0519Gq.A00(str));
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x004d A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0124 A[LOOP:0: B:49:0x0122->B:50:0x0124, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void A0C(java.lang.String r11, com.facebook.ads.redexgen.X.C0516Gn r12, android.text.SpannableStringBuilder r13, java.util.List<com.facebook.ads.redexgen.X.C0513Gk> r14, java.util.List<com.facebook.ads.redexgen.X.C0517Go> r15) {
        /*
        // Method dump skipped, instructions count: 332
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0518Gp.A0C(java.lang.String, com.facebook.ads.redexgen.X.Gn, android.text.SpannableStringBuilder, java.util.List, java.util.List):void");
    }

    /* JADX INFO: Multiple debug info for r5v0 java.util.ArrayDeque: [D('semiColonEndIndex' int), D('ltPos' int)] */
    /* JADX INFO: Multiple debug info for r3v0 java.util.ArrayList: [D('spaceEndIndex' int), D('isClosingTag' boolean)] */
    /* JADX INFO: Multiple debug info for r0v33 com.facebook.ads.redexgen.X.Gn: [D('fullTagExpression' java.lang.String), D('startTag' com.facebook.ads.redexgen.X.Gn)] */
    public static void A0D(String str, String str2, C0515Gm gm, List<C0513Gk> list) {
        boolean z;
        int i;
        C0516Gn startTag;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str2.length()) {
            char charAt = str2.charAt(i2);
            if (charAt == '&') {
                int indexOf = str2.indexOf(59, i2 + 1);
                int indexOf2 = str2.indexOf(32, i2 + 1);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    A08(str2.substring(i2 + 1, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) A03(1, 1, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD));
                    }
                    i2 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                    i2++;
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i2++;
            } else {
                int i3 = i2 + 1;
                int length = str2.length();
                if (A02[3].length() != 10) {
                    A02[7] = "huABVhch9erSIKd70DjqaQjDgv4JUQcV";
                    if (i3 >= length) {
                        i2++;
                    } else {
                        boolean z2 = false;
                        int i4 = 1;
                        if (str2.charAt(i2 + 1) == '/') {
                            z = true;
                        } else {
                            z = false;
                        }
                        i2 = A01(str2, i2 + 1);
                        if (str2.charAt(i2 - 2) == '/') {
                            z2 = true;
                        }
                        if (z) {
                            i4 = 2;
                        }
                        int i5 = i4 + i2;
                        if (z2) {
                            i = i2 - 2;
                        } else {
                            i = i2 - 1;
                        }
                        String substring = str2.substring(i5, i);
                        String tagName = A04(substring);
                        if (tagName != null && A0F(tagName)) {
                            if (z) {
                                do {
                                    boolean isEmpty = arrayDeque.isEmpty();
                                    if (A02[5].length() == 16) {
                                        A02[7] = "xjA9LPEJe2T86ajW2mUni2naxM9TfZ4G";
                                        if (isEmpty) {
                                            break;
                                        }
                                    } else {
                                        String[] strArr = A02;
                                        strArr[0] = "eUUkvlij";
                                        strArr[6] = "fkUA9DE8mZusd0jqihcBtc";
                                        if (isEmpty) {
                                            break;
                                        }
                                    }
                                    startTag = (C0516Gn) arrayDeque.pop();
                                    A0C(str, startTag, spannableStringBuilder, list, arrayList);
                                } while (!startTag.A01.equals(tagName));
                            } else if (!z2) {
                                arrayDeque.push(C0516Gn.A01(substring, spannableStringBuilder.length()));
                            }
                        }
                    }
                } else {
                    throw new RuntimeException();
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            A0C(str, (C0516Gn) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        A0C(str, C0516Gn.A00(), spannableStringBuilder, list, arrayList);
        gm.A0D(spannableStringBuilder);
    }

    public static void A0E(List<C0513Gk> list, String str, C0516Gn gn, List<C0517Go> list2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C0513Gk gk = list.get(i);
            int A0A = gk.A0A(str, gn.A01, gn.A03, gn.A02);
            if (A0A > 0) {
                list2.add(new C0517Go(A0A, gk));
            }
        }
        Collections.sort(list2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0026 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean A0F(java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 184
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0518Gp.A0F(java.lang.String):boolean");
    }

    public static boolean A0G(String str, Matcher matcher, IM im, C0515Gm gm, StringBuilder sb, List<C0513Gk> list) {
        try {
            gm.A0B(C0519Gq.A01(matcher.group(1))).A0A(C0519Gq.A01(matcher.group(2)));
            A09(matcher.group(3), gm);
            sb.setLength(0);
            while (true) {
                String A0Q = im.A0Q();
                if (!TextUtils.isEmpty(A0Q)) {
                    if (sb.length() > 0) {
                        sb.append(A03(0, 1, 38));
                    }
                    sb.append(A0Q.trim());
                } else {
                    A0D(str, sb.toString(), gm, list);
                    return true;
                }
            }
        } catch (NumberFormatException unused) {
            Log.w(A03(141, 15, 60), A03(91, 30, 125) + matcher.group());
            return false;
        }
    }

    public final boolean A0H(IM im, C0515Gm gm, List<C0513Gk> list) {
        String A0Q = im.A0Q();
        if (A0Q == null) {
            return false;
        }
        Matcher matcher = A03.matcher(A0Q);
        if (matcher.matches()) {
            return A0G(null, matcher, im, gm, this.A00, list);
        }
        String A0Q2 = im.A0Q();
        if (A0Q2 == null) {
            return false;
        }
        Matcher matcher2 = A03.matcher(A0Q2);
        if (matcher2.matches()) {
            return A0G(A0Q.trim(), matcher2, im, gm, this.A00, list);
        }
        return false;
    }
}
