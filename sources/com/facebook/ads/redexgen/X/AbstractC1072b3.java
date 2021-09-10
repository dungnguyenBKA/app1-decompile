package com.facebook.ads.redexgen.X;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroup;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;

/* renamed from: com.facebook.ads.redexgen.X.b3  reason: case insensitive filesystem */
public abstract class AbstractC1072b3 extends H7 {
    public static String[] A01;
    @Nullable
    public H2 A00;

    static {
        A0S();
    }

    public static void A0S() {
        A01 = new String[]{"26JblF4b6dorFS8jU2vwriUxZ0G71mwq", "Xnpi2o2sUEOze", "R71e3dTOAhzB09tZHggtqRTS0V3by", "x11tshWAsx1g8", "baPvwG8wSWpB2aFi4", "NgcUJ4cAOsbj9", "II", "FdNrM275eXYBmZtzCUl1db95x7ONP"};
    }

    public abstract Pair<AZ[], H4[]> A0X(H2 h2, int[][][] iArr, int[] iArr2) throws A0;

    public static int A0R(AY[] ayArr, TrackGroup trackGroup) throws A0 {
        int rendererIndex = ayArr.length;
        int i = 0;
        for (int trackIndex = 0; trackIndex < ayArr.length; trackIndex++) {
            AY ay = ayArr[trackIndex];
            for (int i2 = 0; i2 < trackGroup.A01; i2++) {
                int formatSupportLevel = ay.AEG(trackGroup.A02(i2)) & 7;
                if (formatSupportLevel > i) {
                    rendererIndex = trackIndex;
                    i = formatSupportLevel;
                    if (i == 4) {
                        return rendererIndex;
                    }
                }
            }
        }
        return rendererIndex;
    }

    public static int[] A0T(AY ay, TrackGroup trackGroup) throws A0 {
        int[] iArr = new int[trackGroup.A01];
        for (int i = 0; i < trackGroup.A01; i++) {
            iArr[i] = ay.AEG(trackGroup.A02(i));
        }
        return iArr;
    }

    public static int[] A0U(AY[] ayArr) throws A0 {
        int[] iArr = new int[ayArr.length];
        int i = 0;
        while (true) {
            int length = iArr.length;
            String[] strArr = A01;
            if (strArr[4].length() != strArr[5].length()) {
                A01[0] = "xB4ZDOqJN2K9OUw5kZCJNg4ll7dteaQM";
                if (i >= length) {
                    return iArr;
                }
                iArr[i] = ayArr[i].AEI();
                i++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.H7
    public final H8 A0V(AY[] ayArr, TrackGroupArray trackGroupArray) throws A0 {
        int[] A0T;
        int[] iArr = new int[(ayArr.length + 1)];
        TrackGroup[][] trackGroupArr = new TrackGroup[(ayArr.length + 1)][];
        int[][][] iArr2 = new int[(ayArr.length + 1)][][];
        for (int i = 0; i < trackGroupArr.length; i++) {
            trackGroupArr[i] = new TrackGroup[trackGroupArray.A01];
            iArr2[i] = new int[trackGroupArray.A01][];
        }
        int[] A0U = A0U(ayArr);
        for (int i2 = 0; i2 < trackGroupArray.A01; i2++) {
            TrackGroup A02 = trackGroupArray.A02(i2);
            int A0R = A0R(ayArr, A02);
            if (A0R == ayArr.length) {
                A0T = new int[A02.A01];
            } else {
                A0T = A0T(ayArr[A0R], A02);
            }
            int i3 = iArr[A0R];
            trackGroupArr[A0R][i3] = A02;
            iArr2[A0R][i3] = A0T;
            iArr[A0R] = iArr[A0R] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[ayArr.length];
        int[] iArr3 = new int[ayArr.length];
        for (int i4 = 0; i4 < ayArr.length; i4++) {
            int i5 = iArr[i4];
            trackGroupArrayArr[i4] = new TrackGroupArray((TrackGroup[]) C0556Ic.A0l(trackGroupArr[i4], i5));
            iArr2[i4] = (int[][]) C0556Ic.A0l(iArr2[i4], i5);
            iArr3[i4] = ayArr[i4].A7P();
        }
        H2 h2 = new H2(iArr3, trackGroupArrayArr, A0U, iArr2, new TrackGroupArray((TrackGroup[]) C0556Ic.A0l(trackGroupArr[ayArr.length], iArr[ayArr.length])));
        Pair<AZ[], H4[]> A0X = A0X(h2, iArr2, A0U);
        return new H8((AZ[]) A0X.first, (H4[]) A0X.second, h2);
    }

    @Override // com.facebook.ads.redexgen.X.H7
    public final void A0W(Object obj) {
        this.A00 = (H2) obj;
    }
}
