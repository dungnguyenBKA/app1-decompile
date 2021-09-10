package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.AdRequest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class J4 {
    public static J4 A01;
    public static byte[] A02;
    public static String[] A03;
    public static final String[] A04 = new String[0];
    public static final String[] A05 = {A0O(86, 5, 14), A0O(65, 9, 115), A0O(74, 12, 88)};
    public final SharedPreferences A00;

    public static String A0O(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[5].charAt(10) != 'g') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[3] = "rwxiKY1yX8M1uCycGOqUPfCL86zZ3gS";
            strArr[0] = "P38LhqS18Cw18aUWRDVsuYtPAT7MPJu";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 46);
            i4++;
        }
    }

    public static void A0Z() {
        A02 = new byte[]{108, 73, 107, 100, 105, 111, 102, 82, 126, Byte.MAX_VALUE, 101, 120, Byte.MAX_VALUE, 100, 116, 3, 47, 46, 52, 41, 46, 53, 37, Byte.MAX_VALUE, 106, 92, 70, 19, 68, 90, 95, 95, 19, 81, 86, 19, 71, 82, 88, 86, 93, 19, 71, 92, 19, 82, 93, 92, 71, 91, 86, 65, 19, 87, 86, 64, 71, 90, 93, 82, 71, 90, 92, 93, 29, 6, 17, 25, 8, 112, 109, 112, 109, 0, 45, 58, 50, 35, 91, 71, 91, 71, 70, 70, 70, 43, 123, 108, 100, 117, 125, 12, 10, 121, 123, 123, 113, 124, 125, 118, 108, 121, 116, 71, 123, 116, 113, 123, 115, 107, 71, 123, 119, 118, 126, 113, Byte.MAX_VALUE, 34, 32, 32, 42, 39, 38, 45, 55, 34, 47, 28, 32, 47, 42, 32, 40, 48, 28, 32, 44, 45, 37, 42, 36, 109, 55, 52, 44, 28, 48, 55, 38, 51, 28, 32, 34, 45, 32, 38, 47, 28, 33, 54, 55, 55, 44, 45, 28, 55, 38, 59, 55, 25, 27, 27, 17, 28, 29, 22, 12, 25, 20, 39, 27, 20, 17, 27, 19, 11, 39, 27, 23, 22, 30, 17, 31, 86, 12, 15, 23, 39, 11, 12, 29, 8, 39, 27, 23, 22, 30, 17, 10, 21, 39, 26, 13, 12, 12, 23, 22, 39, 12, 29, 0, 12, 3, 1, 1, 11, 6, 7, 12, 22, 3, 14, 61, 1, 14, 11, 1, 9, 17, 61, 1, 13, 12, 4, 11, 5, 76, 22, 21, 13, 61, 17, 22, 7, 18, 61, 1, 13, 12, 4, 11, 16, 15, 3, 22, 11, 13, 12, 68, 70, 70, 76, 65, 64, 75, 81, 68, 73, 122, 70, 73, 76, 70, 78, 86, 122, 70, 74, 75, 67, 76, 66, 11, 81, 82, 74, 122, 86, 81, 64, 85, 122, 70, 74, 75, 67, 76, 87, 72, 68, 81, 76, 74, 75, 122, 71, 74, 65, 92, 30, 28, 28, 22, 27, 26, 17, 11, 30, 19, 32, 28, 19, 22, 28, 20, 12, 32, 28, 16, 17, 25, 22, 24, 81, 11, 8, 16, 32, 12, 11, 26, 15, 32, 28, 16, 17, 25, 22, 13, 18, 30, 11, 22, 16, 17, 32, 11, 22, 11, 19, 26, 100, 97, 107, 114, 90, 100, 102, 102, 96, 117, 113, 100, 103, 105, 96, 90, 118, 113, 100, 102, 110, 113, 119, 100, 102, 96, 90, 102, 106, 107, 113, 96, 125, 113, 90, 99, 108, 105, 113, 96, 119, 90, 118, 108, Byte.MAX_VALUE, 96, 23, 18, 24, 1, 41, 23, 21, 21, 19, 6, 2, 23, 20, 26, 19, 41, 5, 2, 23, 21, 29, 2, 4, 23, 21, 19, 41, 26, 19, 24, 17, 2, 30, 63, 58, 48, 41, 1, 63, 50, 50, 49, 41, 1, 61, 49, 49, 53, 55, 59, 1, 51, 63, 48, 63, 57, 59, 44, 1, 55, 48, 55, 42, 55, 63, 50, 55, 36, 63, 42, 55, 49, 48, 1, 55, 48, 1, 60, 63, 45, 59, 1, 63, 58, 1, 61, 49, 48, 42, 44, 49, 50, 50, 59, 44, 121, 124, 118, 111, 71, 121, 118, 124, 106, 119, 113, 124, 71, 121, 116, 116, 119, 111, 71, 116, 119, 121, 124, 71, 124, 109, 106, 113, 118, Byte.MAX_VALUE, 71, 107, 112, 119, 111, 113, 118, Byte.MAX_VALUE, 31, 26, 16, 9, 33, 31, 16, 26, 12, 17, 23, 26, 33, 31, 16, 12, 33, 26, 27, 10, 27, 29, 10, 17, 12, 33, 27, 16, 31, 28, 18, 27, 46, 43, 33, 56, 16, 46, 33, 43, 61, 32, 38, 43, 16, 46, 33, 61, 16, 43, 42, 59, 42, 44, 59, 32, 61, 16, 59, 38, 34, 42, 32, 58, 59, 16, 34, 60, 62, 59, 49, 40, 0, 62, 49, 59, 45, 48, 54, 59, 0, 61, 51, 62, 60, 52, 51, 54, 44, 43, 58, 59, 0, 54, 49, 43, 58, 49, 43, 0, 42, 45, 51, 0, 47, 45, 58, 57, 54, 39, 58, 44, 112, 117, Byte.MAX_VALUE, 102, 78, 112, Byte.MAX_VALUE, 117, 99, 126, 120, 117, 78, 114, 112, 114, 121, 116, 78, 124, 126, 117, 100, 125, 116, 78, 124, 112, 105, 78, 98, 120, 107, 116, 33, 36, 46, 55, 31, 33, 46, 36, 50, 47, 41, 36, 31, 35, 33, 35, 40, 37, 31, 45, 47, 36, 53, 44, 37, 31, 50, 37, 52, 50, 57, 31, 44, 41, 45, 41, 52, 5, 0, 10, 19, 59, 5, 10, 0, 22, 11, 13, 0, 59, 7, 5, 22, 11, 17, 23, 1, 8, 59, 7, 5, 22, 0, 59, 13, 10, 16, 1, 22, 23, 16, 13, 16, 13, 5, 8, 115, 118, 124, 101, 77, 115, 124, 118, 96, 125, 123, 118, 77, 113, 115, 96, 125, 103, 97, 119, 126, 77, 116, 103, 126, 126, 97, 113, 96, 119, 119, 124, 77, 123, 124, 102, 119, 96, 97, 102, 123, 102, 123, 115, 126, 28, 25, 19, 10, 34, 28, 19, 25, 15, 18, 20, 25, 34, 30, 28, 15, 18, 8, 14, 24, 17, 34, 10, 21, 20, 9, 24, 34, 20, 19, 9, 24, 15, 14, 9, 20, 9, 20, 28, 17, 69, 64, 74, 83, 123, 69, 74, 64, 86, 75, 77, 64, 123, 71, 75, 73, 84, 86, 65, 87, 87, 123, 77, 73, 69, 67, 65, 87, 123, 64, 81, 86, 77, 74, 67, 123, 64, 75, 83, 74, 72, 75, 69, 64, 97, 100, 110, 119, 95, 97, 110, 100, 114, 111, 105, 100, 95, 100, 101, 102, 97, 117, 108, 116, 95, 97, 115, 115, 101, 116, 95, 112, 114, 101, 108, 111, 97, 100, 95, 115, 105, 122, 101, 95, 98, 121, 116, 101, 115, 71, 66, 72, 81, 121, 71, 72, 66, 84, 73, 79, 66, 121, 66, 79, 85, 71, 68, 74, 67, 121, 86, 74, 71, 95, 71, 68, 74, 67, 121, 86, 84, 67, 69, 71, 69, 78, 67, 126, 123, 113, 104, 64, 126, 113, 123, 109, 112, 118, 123, 64, 122, 113, 126, 125, 115, 122, 64, 113, 126, 107, 118, 105, 122, 64, 121, 106, 113, 113, 122, 115, 125, 120, 114, 107, 67, 125, 114, 120, 110, 115, 117, 120, 67, 122, 125, 117, 112, 67, 115, 114, 67, 107, 121, 126, 106, 117, 121, 107, 67, 121, 110, 110, 115, 110, 111, 55, 50, 56, 33, 9, 55, 56, 50, 36, 57, 63, 50, 9, 63, 59, 55, 49, 51, 9, 53, 55, 53, 62, 51, 9, 37, 34, 57, 36, 51, 9, 52, 47, 34, 51, 9, 53, 57, 35, 56, 34, 80, 85, 95, 70, 110, 80, 95, 85, 67, 94, 88, 85, 110, 92, 84, 92, 94, 67, 72, 110, 94, 65, 69, 12, 9, 3, 26, 50, 12, 3, 9, 31, 2, 4, 9, 50, 0, 31, 14, 50, 4, 0, 29, 31, 8, 30, 30, 4, 2, 3, 50, 11, 2, 31, 50, 3, 12, 25, 4, 27, 8, 50, 27, 4, 9, 8, 2, 50, 12, 9, 30, 120, 125, 119, 110, 70, 120, 119, 125, 107, 118, 112, 125, 70, 116, 107, 122, 70, 112, 116, 105, 107, 124, 106, 106, 112, 118, 119, 70, Byte.MAX_VALUE, 118, 107, 70, 119, 120, 109, 112, 111, 124, 70, 111, 112, 125, 124, 118, 70, 120, 125, 106, 70, 111, 43, 106, 111, 101, 124, 84, 106, 101, 111, 121, 100, 98, 111, 84, 101, 106, Byte.MAX_VALUE, 98, 125, 110, 84, 104, 106, 121, 100, 126, 120, 110, 103, 84, 110, 115, Byte.MAX_VALUE, 110, 101, 120, 98, 100, 101, 84, 125, 106, 121, 98, 106, 101, Byte.MAX_VALUE, 10, 15, 5, 28, 52, 10, 5, 15, 25, 4, 2, 15, 52, 5, 10, 31, 2, 29, 14, 52, 5, 14, 28, 52, 8, 10, 25, 4, 30, 24, 14, 7, 52, 15, 14, 24, 2, 12, 5, 21, 16, 26, 3, 43, 21, 26, 16, 6, 27, 29, 16, 43, 26, 17, 0, 3, 27, 6, 31, 43, 16, 17, 18, 21, 1, 24, 0, 43, 23, 27, 26, 26, 17, 23, 0, 29, 27, 26, 43, 0, 29, 25, 17, 27, 1, 0, 43, 25, 7, 106, 111, 101, 124, 84, 106, 101, 111, 121, 100, 98, 111, 84, 101, 110, Byte.MAX_VALUE, 124, 100, 121, 96, 84, 111, 110, 109, 106, 126, 103, Byte.MAX_VALUE, 84, 121, 110, 106, 111, 84, Byte.MAX_VALUE, 98, 102, 110, 100, 126, Byte.MAX_VALUE, 84, 102, 120, 43, 46, 36, 61, 21, 43, 36, 46, 56, 37, 35, 46, 21, 36, 47, 62, 61, 37, 56, 33, 21, 46, 47, 44, 43, 63, 38, 62, 21, 56, 47, 62, 56, 35, 47, 57, 21, 36, 63, 39, 71, 66, 72, 81, 121, 71, 72, 66, 84, 73, 79, 66, 121, 72, 67, 82, 81, 73, 84, 77, 121, 66, 67, 64, 71, 83, 74, 82, 121, 82, 78, 84, 73, 82, 82, 74, 67, 121, 82, 79, 75, 67, 73, 83, 82, 121, 75, 85, 121, 124, 118, 111, 71, 121, 118, 124, 106, 119, 113, 124, 71, 118, 125, 108, 111, 119, 106, 115, 71, 124, 125, 126, 121, 109, 116, 108, 71, 108, 113, 117, 125, 119, 109, 108, 71, 117, 107, 103, 98, 104, 113, 89, 103, 104, 98, 116, 105, 111, 98, 89, 105, 114, 117, 106, 89, 99, 104, 103, 100, 106, 99, 98, 124, 121, 115, 106, 66, 124, 115, 121, 111, 114, 116, 121, 66, 111, 120, 126, 114, 111, 121, 66, 116, 112, 109, 111, 120, 110, 110, 116, 114, 115, 66, 106, 117, 120, 115, 66, 110, 120, 115, 121, 116, 115, 122, 56, 61, 55, 46, 6, 56, 55, 61, 43, 54, 48, 61, 6, 43, 60, 41, 54, 43, 45, 6, 41, 43, 60, 42, 60, 55, 45, 56, 45, 48, 54, 55, 6, 60, 43, 43, 54, 43, 6, 46, 49, 60, 55, 6, 55, 54, 6, 48, 52, 41, 43, 60, 42, 42, 48, 54, 55, 86, 83, 89, 64, 104, 86, 89, 83, 69, 88, 94, 83, 104, 69, 82, 71, 88, 69, 67, 104, 71, 69, 82, 68, 82, 89, 67, 86, 67, 94, 88, 89, 104, 82, 69, 69, 88, 69, 68, 104, 94, 89, 68, 67, 82, 86, 83, 104, 88, 81, 104, 94, 89, 67, 82, 69, 89, 86, 91, 91, 94, 84, 77, 101, 91, 84, 94, 72, 85, 83, 94, 101, 73, 82, 85, 79, 86, 94, 101, 88, 86, 85, 89, 81, 101, 73, 67, 84, 89, 101, 85, 84, 101, 88, 91, 89, 81, 93, 72, 85, 79, 84, 94, 52, 49, 59, 34, 10, 52, 59, 49, 39, 58, 60, 49, 10, 38, 61, 58, 32, 57, 49, 10, 39, 48, 38, 48, 33, 10, 51, 58, 54, 32, 38, 10, 58, 59, 10, 59, 52, 33, 60, 35, 48, 10, 39, 48, 37, 58, 39, 33, 60, 59, 50, 14, 11, 1, 24, 48, 14, 1, 11, 29, 0, 6, 11, 48, 26, 13, 25, 29, 12, 109, 104, 98, 123, 83, 109, 98, 104, 126, 99, 101, 104, 83, 121, Byte.MAX_VALUE, 105, 83, 111, 109, 111, 100, 105, 83, 97, 99, 104, 121, 96, 105, 83, 106, 99, 126, 83, 101, 97, 109, 107, 105, Byte.MAX_VALUE, 58, 63, 53, 44, 4, 58, 53, 63, 41, 52, 50, 63, 4, 46, 40, 62, 4, 40, 47, 62, 58, 54, 50, 53, 60, 4, 50, 54, 58, 60, 62, 4, 63, 62, 56, 52, 63, 50, 53, 60, 35, 38, 44, 53, 29, 35, 44, 38, 48, 45, 43, 38, 29, 53, 42, 43, 54, 39, 46, 43, 49, 54, 39, 38, 29, 43, 44, 54, 39, 44, 54, 29, 55, 48, 46, 29, 50, 48, 39, 36, 43, 58, 39, 49, 91, 94, 84, 77, 101, 88, 91, 84, 84, 95, 72, 101, 84, 85, 78, 83, 92, 67, 101, 91, 94, 101, 86, 85, 91, 94, 95, 94, 101, 85, 84, 101, 91, 73, 73, 95, 78, 73, 101, 86, 85, 91, 94, 95, 94, 45, 40, 34, 59, 19, 46, 41, 34, 47, 36, 33, 45, 62, 39, 19, 62, 41, 60, 35, 62, 56, 19, 37, 34, 56, 41, 62, 58, 45, 32, 19, 33, 63, 7, 2, 8, 17, 57, 4, 10, 9, 5, 13, 57, 10, 9, 5, 13, 21, 5, 20, 3, 3, 8, 41, 44, 38, 63, 23, 43, 58, 41, 59, 32, 23, 59, 32, 33, 45, 36, 44, 23, 45, 38, 41, 42, 36, 45, 44, 114, 119, 125, 100, 76, 112, 103, 114, 76, 114, 125, 122, 126, 114, 103, 122, 124, 125, 76, 119, 118, Byte.MAX_VALUE, 114, 106, 76, 126, 96, 122, Byte.MAX_VALUE, 117, 108, 68, 120, 111, 122, 68, 118, 114, 117, 68, 104, 120, 122, 119, 126, 68, 122, 117, 114, 118, 122, 111, 114, 116, 117, 68, 107, 126, 105, 120, 126, 117, 111, 122, 124, 126, 21, 16, 26, 3, 43, 16, 27, 43, 26, 27, 0, 43, 6, 17, 24, 27, 21, 16, 43, 29, 26, 0, 17, 6, 7, 0, 29, 0, 29, 21, 24, 43, 21, 16, 21, 4, 0, 17, 6, 91, 94, 84, 77, 101, 95, 84, 91, 88, 86, 95, 101, 91, 79, 78, 85, 101, 94, 95, 73, 78, 72, 85, 67, 101, 86, 95, 91, 81, 73, 51, 54, 60, 37, 13, 55, 60, 51, 48, 62, 55, 13, 48, 59, 54, 54, 55, 32, 13, 38, 61, 57, 55, 60, 13, 59, 60, 52, 61, 35, 38, 44, 53, 29, 39, 44, 35, 32, 46, 39, 29, 38, 39, 32, 55, 37, 29, 45, 52, 39, 48, 46, 35, 59, 26, 31, 21, 12, 36, 30, 21, 26, 25, 23, 30, 36, 30, 3, 20, 11, 23, 26, 2, 30, 9, 36, 24, 26, 24, 19, 30, 66, 71, 77, 84, 124, 70, 77, 66, 65, 79, 70, 124, 70, 91, 76, 83, 79, 66, 90, 70, 81, 124, 64, 66, 64, 75, 70, 124, 69, 76, 81, 124, 71, 80, 79, 52, 49, 59, 34, 10, 48, 59, 52, 55, 57, 48, 10, 48, 45, 58, 37, 57, 52, 44, 48, 39, 10, 35, 103, 37, 32, 42, 51, 27, 33, 42, 37, 38, 40, 33, 27, 34, 49, 42, 42, 33, 40, 89, 92, 86, 79, 103, 93, 86, 89, 90, 84, 93, 103, 81, 86, 84, 81, 86, 93, 103, 64, 103, 87, 77, 76, 103, 86, 87, 86, 103, 94, 77, 84, 84, 75, 91, 74, 93, 93, 86, 103, 87, 86, 103, 75, 92, 83, 87, 82, 88, 65, 105, 83, 88, 87, 84, 90, 83, 105, 88, 83, 66, 65, 89, 68, 93, 58, 63, 53, 44, 4, 62, 53, 58, 57, 55, 62, 4, 43, 41, 62, 55, 52, 58, 63, 47, 42, 32, 57, 17, 43, 32, 47, 44, 34, 43, 17, 60, 47, 41, 43, 17, 61, 38, 47, 37, 43, 10, 15, 5, 28, 52, 14, 5, 10, 9, 7, 14, 52, 24, 18, 5, 8, 65, 68, 78, 87, Byte.MAX_VALUE, 70, 73, 76, 84, 69, 82, Byte.MAX_VALUE, 66, 73, 68, 68, 73, 78, 71, Byte.MAX_VALUE, 84, 79, 75, 69, 78, 94, 91, 81, 72, 96, 86, 81, 75, 90, 77, 76, 75, 86, 75, 86, 94, 83, 96, 81, 90, 72, 96, 86, 82, 94, 88, 90, 96, 91, 90, 76, 86, 88, 81, 24, 29, 23, 14, 38, 21, 22, 30, 30, 16, 23, 30, 38, 28, 23, 29, 9, 22, 16, 23, 13, 38, 9, 11, 28, 31, 16, 1, 13, 8, 2, 27, 51, 2, 13, 24, 5, 26, 9, 51, 15, 13, 30, 3, 25, 31, 9, 0, 51, 15, 3, 1, 28, 13, 15, 24, 51, 24, 4, 30, 9, 31, 4, 3, 0, 8, 77, 72, 66, 91, 115, 66, 77, 88, 69, 90, 73, 115, 90, 69, 73, 91, 115, 95, 66, 77, 92, 95, 68, 67, 88, 115, 64, 67, 75, 75, 69, 66, 75, 115, 73, 66, 77, 78, 64, 73, 72, 27, 30, 20, 13, 37, 20, 31, 13, 37, 22, 27, 20, 30, 9, 25, 27, 10, 31, 37, 31, 20, 30, 25, 27, 8, 30, 100, 97, 107, 114, 90, 106, 107, 97, 96, 115, 108, 102, 96, 90, 109, 108, 118, 113, 106, 119, 124, 90, 97, 100, 113, 100, 90, 96, 107, 100, 103, 105, 96, 97, 79, 74, 64, 89, 113, 94, 66, 79, 87, 79, 76, 66, 75, 113, 77, 66, 71, 77, 69, 113, 67, 79, 86, 113, 74, 75, 66, 79, 87, 113, 67, 93, 96, 101, 111, 118, 94, 113, 109, 96, 120, 96, 99, 109, 100, 114, 94, 109, 110, 102, 102, 104, 111, 102, 94, 100, 111, 96, 99, 109, 100, 101, 15, 10, 0, 25, 49, 30, 2, 15, 23, 15, 12, 2, 11, 29, 49, 0, 11, 25, 49, 10, 11, 29, 7, 9, 0, 20, 17, 27, 2, 42, 5, 25, 20, 12, 20, 23, 25, 16, 6, 42, 6, 29, 26, 2, 42, 16, 27, 17, 22, 20, 7, 17, 117, 112, 122, 99, 75, 100, 102, 113, 120, 123, 117, 112, 75, 125, 122, 96, 113, 102, 103, 96, 125, 96, 125, 117, 120, 75, 112, 109, 122, 117, 121, 125, 119, 75, 99, 113, 118, 98, 125, 113, 99, 121, 124, 118, 111, 71, 104, 106, 125, 116, 119, 121, 124, 71, 106, 110, 71, 124, 97, 118, 121, 117, 113, 123, 71, 111, 125, 122, 110, 113, 125, 111, 123, 126, 116, 109, 69, 106, 104, Byte.MAX_VALUE, 108, Byte.MAX_VALUE, 116, 110, 69, 106, 118, 123, 99, 123, 120, 118, Byte.MAX_VALUE, 69, 123, 111, 110, 117, 69, 121, 118, 115, 121, 113, 43, 46, 36, 61, 21, 58, 63, 56, 45, 47, 21, 37, 36, 21, 126, 123, 121, 21, 56, 47, 57, 58, 37, 36, 57, 47, 56, 61, 55, 46, 6, 43, 60, 58, 54, 52, 41, 44, 45, 60, 6, 59, 45, 6, 56, 63, 45, 60, 43, 6, 60, 33, 45, 43, 56, 42, 6, 58, 49, 56, 55, 62, 60, 109, 104, 98, 123, 83, 126, 105, 97, 99, 122, 105, 83, 100, 105, 109, 104, 96, 101, 98, 105, 83, 106, 99, 126, 83, 109, 104, 83, 104, 105, 120, 109, 101, 96, Byte.MAX_VALUE, 10, 15, 5, 28, 52, 25, 29, 52, 9, 30, 13, 13, 14, 25, 52, 8, 3, 14, 8, 0, 52, 14, 5, 10, 9, 7, 14, 15, 100, 97, 107, 114, 90, 119, 115, 90, 117, 105, 100, 124, 103, 100, 102, 110, 90, 102, 119, 100, 118, 109, 90, 99, 100, 105, 105, 103, 100, 102, 110, 0, 5, 15, 22, 62, 18, 4, 15, 5, 8, 15, 6, 62, 7, 19, 4, 16, 20, 4, 15, 2, 24, 62, 2, 0, 17, 17, 8, 15, 6, 62, 0, 13, 13, 14, 22, 4, 5, 23, 18, 24, 1, 41, 5, 30, 25, 3, 26, 18, 41, 23, 18, 18, 41, 19, 14, 2, 19, 24, 5, 31, 25, 24, 41, 2, 25, 41, 6, 26, 23, 15, 23, 20, 26, 19, 5, 52, 49, 59, 34, 10, 38, 61, 58, 32, 57, 49, 10, 54, 57, 48, 52, 39, 10, 51, 48, 52, 33, 32, 39, 48, 10, 54, 58, 59, 51, 60, 50, 10, 58, 59, 10, 54, 39, 52, 38, 61, 48, 38, 81, 84, 94, 71, 111, 67, 88, 95, 69, 92, 84, 111, 89, 87, 94, 95, 66, 85, 111, 84, 85, 67, 68, 66, 95, 73, 111, 83, 81, 92, 92, 115, 118, 124, 101, 77, 97, 122, 125, 103, 126, 118, 77, 123, 124, 113, 96, 119, Byte.MAX_VALUE, 119, 124, 102, 77, 96, 119, 102, 96, 107, 77, 113, 125, 103, 124, 102, 119, 96, 77, 125, 124, 77, 119, Byte.MAX_VALUE, 98, 102, 107, 77, 96, 119, 97, 98, 125, 124, 97, 119, 61, 56, 50, 43, 3, 47, 52, 51, 41, 48, 56, 3, 53, 50, 53, 40, 3, 58, 46, 51, 49, 3, 63, 51, 50, 40, 57, 50, 40, 3, 44, 46, 51, 42, 53, 56, 57, 46, 71, 66, 72, 81, 121, 85, 78, 73, 83, 74, 66, 121, 79, 72, 79, 82, 121, 73, 72, 121, 69, 74, 71, 85, 85, 121, 74, 73, 71, 66, 79, 72, 65, 99, 102, 108, 117, 93, 113, 106, 109, 119, 110, 102, 93, 110, 109, 101, 93, 99, 113, 113, 103, 118, 93, 119, 112, 110, 58, 63, 53, 44, 4, 40, 51, 52, 46, 55, 63, 4, 43, 41, 62, 56, 52, 54, 43, 46, 47, 62, 4, 57, 50, 63, 63, 62, 41, 4, 47, 52, 48, 62, 53, 121, 124, 118, 111, 71, 107, 112, 119, 111, 71, 121, 104, 104, 71, 113, 118, 107, 108, 121, 116, 116, 71, 121, 124, 71, 124, 125, 108, 121, 113, 116, 107, 34, 39, 45, 52, 28, 48, 40, 42, 51, 28, 53, 42, 39, 38, 44, 28, 45, 44, 45, 28, 43, 34, 49, 39, 52, 34, 49, 38, 28, 34, 32, 32, 38, 47, 38, 49, 34, 55, 38, 39, 25, 28, 22, 15, 39, 11, 12, 25, 27, 19, 12, 10, 25, 27, 29, 39, 31, 10, 23, 13, 8, 17, 22, 31, 39, 29, 22, 25, 26, 20, 29, 28, 94, 91, 81, 72, 96, 76, 72, 94, 79, 96, 77, 90, 79, 80, 77, 75, 96, 94, 81, 91, 96, 92, 83, 80, 76, 90, 44, 41, 35, 58, 18, 62, 52, 35, 46, 18, 44, 43, 57, 40, 63, 18, 44, 41, 18, 33, 34, 44, 41, 32, 37, 47, 54, 30, 50, 56, 47, 34, 30, 36, 47, 37, 49, 46, 40, 47, 53, 30, 49, 51, 36, 39, 40, 57, 125, 120, 114, 107, 67, 104, 117, 113, 121, 67, 104, 115, 67, 107, 125, 117, 104, 67, 122, 115, 110, 67, 106, 117, 120, 121, 115, 67, 108, 112, 125, 101, 67, 113, 111, 68, 65, 75, 82, 122, 81, 76, 72, 64, 122, 81, 74, 122, 82, 68, 76, 81, 122, 67, 74, 87, 122, 83, 76, 65, 64, 74, 122, 85, 87, 64, 85, 68, 87, 64, 65, 122, 72, 86, 34, 39, 45, 52, 28, 55, 42, 46, 38, 44, 54, 55, 28, 49, 38, 52, 34, 49, 39, 38, 39, 28, 53, 42, 39, 38, 44, 10, 15, 5, 28, 52, 31, 25, 2, 12, 12, 14, 25, 52, 5, 10, 31, 2, 29, 14, 52, 25, 14, 12, 2, 24, 31, 14, 25, 52, 29, 2, 14, 28, 52, 14, 25, 25, 4, 25, 52, 8, 10, 7, 7, 9, 10, 8, 0, 46, 43, 33, 56, 16, 58, 33, 38, 62, 58, 42, 16, 43, 45, 16, 33, 46, 34, 42, 16, 63, 42, 61, 16, 63, 61, 32, 44, 42, 60, 60, 1, 4, 14, 23, 63, 21, 19, 5, 63, 1, 16, 16, 63, 9, 14, 19, 20, 1, 12, 12, 63, 20, 15, 15, 12, 2, 1, 18, 52, 49, 59, 34, 10, 32, 38, 48, 10, 54, 52, 54, 61, 48, 49, 10, 48, 45, 48, 54, 32, 33, 58, 39, 10, 51, 58, 39, 10, 59, 48, 33, 34, 58, 39, 62, 76, 73, 67, 90, 114, 88, 94, 72, 114, 78, 76, 78, 69, 72, 73, 114, 72, 85, 72, 78, 88, 89, 66, 95, 114, 68, 67, 114, 78, 76, 78, 69, 72, 114, 64, 76, 67, 76, 74, 72, 95, 12, 9, 3, 26, 50, 24, 30, 8, 50, 31, 4, 29, 29, 1, 8, 50, 12, 3, 4, 0, 12, 25, 4, 2, 3, 79, 74, 64, 89, 113, 88, 71, 75, 89, 79, 76, 71, 66, 71, 90, 87, 113, 77, 70, 75, 77, 69, 113, 79, 92, 75, 79, 113, 76, 79, 93, 75, 74, 55, 35, 34, 57, 36, 57, 34, 55, 34, 51, 9, 50, 63, 37, 55, 52, 58, 51, 50, 126, 106, 107, 112, 109, 112, 107, 126, 107, 122, 64, 122, 113, 126, 125, 115, 122, 123, 1, 14, 11, 1, 9, 5, 23, 3, 16, 6, 61, 22, 11, 15, 7, 61, 15, 17, 123, 119, 117, 54, 126, 121, 123, 125, 122, 119, 119, 115, 54, 121, 124, 107, 54, 94, 93, 89, 76, 77, 74, 93, 71, 91, 87, 86, 94, 81, 95, 45, 41, 46, 41, 45, 53, 45, 31, 37, 44, 33, 48, 51, 37, 36, 31, 52, 41, 45, 37, 31, 33, 38, 52, 37, 50, 31, 41, 45, 48, 50, 37, 51, 51, 41, 47, 46, 103, 124, 101, 101, 20, 3, 21, 18, 20, 15, 5, 18, 3, 2, 57, 2, 7, 18, 7, 57, 22, 20, 9, 5, 3, 21, 21, 15, 8, 1, 57, 5, 9, 11, 4, 15, 8, 7, 18, 15, 9, 8, 21, 112, 119, 98, 96, 104, 92, 119, 113, 98, 96, 102, 92, 112, 98, 110, 115, 111, 102, 92, 113, 98, 119, 102, 108, 115, 126, Byte.MAX_VALUE, 117, 69, 123, 116, 126, 69, Byte.MAX_VALUE, 116, 126, 121, 123, 104, 126, 69, 123, 111, 110, 117, 104, 117, 110, 123, 110, Byte.MAX_VALUE, 53, 53, 53};
    }

    public static void A0a() {
        A03 = new String[]{"lby1W0wNbQrJZLPqMH4DTOw3yxUdqdf", "kgmV30Pytio8Y45c0SmevPSfJ", "GuqAlZnTPhAyqf6xpABukX78gW1eK", "0NViSQPmvGXLcgxETt4LuQqf8msO5qX", "Lug9XUXTwCkms8e17b8k", "9KOEFfUvG6glq1MfonBkT6Lvp1EWxJyS", "tUrZTe4M4NOwFWRIXhIm4QJOvCAxV", "2InOXM9Ds0dFubkAVSo31GYyY3vE8A8q"};
    }

    static {
        A0a();
        A0Z();
    }

    public J4(Context context) {
        this.A00 = context.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A0O(3992, 31, 54), context), 0);
    }

    public static float A00(Context context) {
        return A0N(context).A1w(A0O(2093, 39, 53), 0.98f);
    }

    public static int A01(Context context) {
        return A0N(context).A1x(A0O(HttpStatus.SC_EXPECTATION_FAILED, 33, 88), 100);
    }

    public static int A02(Context context) {
        return A0N(context).A1x(A0O(1987, 33, 98), 0);
    }

    public static int A03(Context context) {
        return A0N(context).A1x(A0O(2066, 27, 61), -1);
    }

    public static int A04(Context context) {
        return A0N(context).A1x(A0O(696, 37, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), 3);
    }

    public static int A05(Context context) {
        return A0N(context).A1x(A0O(3974, 18, 76), 0);
    }

    public static int A06(Context context) {
        return A0N(context).A1x(A0O(582, 36, 97), 3000);
    }

    public static int A07(Context context) {
        return A0N(context).A1x(A0O(1300, 50, 90), 30000);
    }

    public static int A08(Context context) {
        return A0N(context).A1x(A0O(1394, 40, 100), 3);
    }

    public static int A09(Context context) {
        return A0N(context).A1x(A0O(1350, 44, 37), 8000);
    }

    public static int A0A(Context context) {
        return A0N(context).A1x(A0O(1434, 48, 8), 100);
    }

    public static int A0B(Context context) {
        return A0N(context).A1x(A0O(1482, 39, 54), 60000);
    }

    public static int A0C(Context context) {
        return A0N(context).A1x(A0O(2568, 38, 66), 225);
    }

    public static int A0D(Context context) {
        return A0N(context).A1x(A0O(1052, 41, 120), 3145728);
    }

    public static int A0E(Context context) {
        return A0N(context).A1x(A0O(4023, 37, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), -1);
    }

    public static int A0F(Context context) {
        return A0N(context).A1x(A0O(2707, 32, 0), AdError.SERVER_ERROR_CODE);
    }

    public static int A0G(Context context) {
        return A0N(context).A1x(A0O(371, 46, 43), -1);
    }

    public static int A0H(Context context) {
        return A0N(context).A1x(A0O(4103, 23, 45), 0);
    }

    public static int A0I(Context context) {
        return A0N(context).A1x(A0O(3594, 35, 50), AdError.NETWORK_ERROR_CODE);
    }

    public static int A0J(Context context) {
        return A0N(context).A1x(A0O(3629, 39, 11), 3000);
    }

    public static int A0K(Context context) {
        return A0N(context).A1x(A0O(1215, 46, 37), 0);
    }

    public static long A0L(Context context) {
        return A0N(context).A1y(A0O(662, 34, 63), 67108864);
    }

    public static long A0M(Context context) {
        return A0N(context).A1y(A0O(901, 45, 46), PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
    }

    public static synchronized J4 A0N(Context context) {
        J4 j4;
        synchronized (J4.class) {
            if (A01 == null) {
                A01 = new J4(context);
            }
            j4 = A01;
        }
        return j4;
    }

    public static String A0P(Context context) {
        return A0N(context).A1z(A0O(2540, 28, 87), A0O(4154, 3, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
    }

    public static String A0Q(Context context) {
        return A0N(context).A1z(A0O(3569, 25, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), A0O(4154, 3, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
    }

    public static String A0R(Context context) {
        return A0N(context).A1z(A0O(117, 52, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), A0O(1, 6, 36));
    }

    public static String A0S(Context context) {
        return A0N(context).A1z(A0O(268, 51, 11), A0O(24, 41, 29));
    }

    public static String A0T(Context context) {
        return A0N(context).A1z(A0O(169, 53, 86), A0O(7, 8, 63));
    }

    public static String A0U(Context context) {
        return A0N(context).A1z(A0O(319, 52, 81), A0O(15, 9, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD));
    }

    public static Set<String> A0V(Context context) {
        return A0N(context).A0Y(A0O(618, 44, 113), A04);
    }

    public static Set<String> A0W(Context context) {
        return A0N(context).A0Y(A0O(4064, 39, 72), A05);
    }

    public static Set<String> A0X(Context context) {
        return A0N(context).A0Y(A0O(1898, 44, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS), A04);
    }

    private Set<String> A0Y(String str, String[] strArr) {
        JSONArray jSONArray;
        String A1z = A1z(str, null);
        if (A1z == null) {
            jSONArray = new JSONArray((Collection) Arrays.asList(strArr));
        } else {
            try {
                jSONArray = new JSONArray(A1z);
            } catch (JSONException unused) {
                return new LinkedHashSet();
            }
        }
        int length = jSONArray.length();
        LinkedHashSet linkedHashSet = new LinkedHashSet(length);
        for (int i = 0; i < length; i++) {
            linkedHashSet.add(jSONArray.getString(i));
        }
        return linkedHashSet;
    }

    @SuppressLint({"ApplySharedPref"})
    public static void A0b(Context context) {
        A0N(context).A00.edit().clear().commit();
    }

    private void A0c(@Nullable String str, @Nullable String str2) throws JSONException {
        if (str != null && !str.isEmpty() && !str.equals(A0O(91, 2, 121))) {
            A0d(new JSONObject(str), str2);
        }
    }

    private void A0d(JSONObject jSONObject, @Nullable String key) throws JSONException {
        SharedPreferences.Editor edit = this.A00.edit();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (next.equals(A0O(93, 24, 54))) {
                A0c(jSONObject.getString(next), next);
            } else {
                String str = next;
                if (key != null) {
                    str = key + A0O(0, 1, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS) + str;
                }
                edit.putString(str, jSONObject.getString(next));
            }
        }
        edit.apply();
    }

    public static boolean A0e(Context context) {
        return A0N(context).A1z(A0O(4126, 28, 52), A0O(3937, 19, 120)).equals(A0O(3956, 18, 49));
    }

    public static boolean A0f(Context context) {
        return A0N(context).A22(A0O(AdRequest.MAX_CONTENT_URL_LENGTH, 38, 54), false);
    }

    public static boolean A0g(Context context) {
        return A0N(context).A22(A0O(2951, 37, 119), false);
    }

    public static boolean A0h(Context context) {
        return A0N(context).A22(A0O(2201, 29, 124), true);
    }

    public static boolean A0i(Context context) {
        return A0N(context).A22(A0O(2794, 27, 91), false);
    }

    public static boolean A0j(Context context) {
        return A0N(context).A22(A0O(857, 44, 10), true);
    }

    public static boolean A0k(Context context) {
        return A0N(context).A22(A0O(2041, 25, 102), true);
    }

    public static boolean A0l(Context context) {
        return A0N(context).A22(A0O(450, 62, 112), false);
    }

    public static boolean A0m(Context context) {
        return A0N(context).A22(A0O(2132, 39, 90), true);
    }

    public static boolean A0n(Context context) {
        return A0N(context).A22(A0O(2171, 30, 20), false);
    }

    public static boolean A0o(Context context) {
        return A0N(context).A22(A0O(984, 33, 49), true);
    }

    public static boolean A0p(Context context) {
        return A0N(context).A22(A0O(1017, 35, 50), false);
    }

    public static boolean A0q(Context context) {
        return A0N(context).A22(A0O(2341, 18, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), false);
    }

    public static boolean A0r(Context context) {
        return A0N(context).A22(A0O(550, 32, 80), false);
    }

    public static boolean A0s(Context context) {
        return A0N(context).A22(A0O(2481, 25, 14), false);
    }

    public static boolean A0t(Context context) {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        J4 A0N = A0N(context);
        String A0O = A0O(2230, 25, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        if (A03[5].charAt(10) != 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[3] = "eVi9wsoxiKuO8fS3Ni664QsxmOwf4Hz";
        strArr[0] = "nOcXZ0DMfofG3U9htYbEeRQSfAelmGW";
        if (A0N.A22(A0O, false)) {
            return true;
        }
        return false;
    }

    public static boolean A0u(Context context) {
        return A0N(context).A22(A0O(2673, 34, 43), false);
    }

    public static boolean A0v(Context context) {
        return A0N(context).A22(A0O(1093, 23, 31), false);
    }

    public static boolean A0w(Context context) {
        return A0N(context).A22(A0O(2606, 41, 2), false);
    }

    public static boolean A0x(Context context) {
        return A0N(context).A22(A0O(2443, 22, 96), false);
    }

    public static boolean A0y(Context context) {
        return A0N(context).A22(A0O(3023, 28, 69), true);
    }

    public static boolean A0z(Context context) {
        return A0N(context).A22(A0O(3051, 31, 43), true);
    }

    public static boolean A10(Context context) {
        return A0N(context).A22(A0O(3488, 32, 86), false);
    }

    public static boolean A11(Context context) {
        return A0N(context).A22(A0O(222, 46, 76), false);
    }

    public static boolean A12(Context context) {
        return A0N(context).A22(A0O(2405, 19, 24), true);
    }

    public static boolean A13(Context context) {
        return A0N(context).A22(A0O(1942, 45, 20), false);
    }

    public static boolean A14(Context context) {
        return A0N(context).A22(A0O(1521, 25, 40), true);
    }

    public static boolean A15(Context context) {
        return A0N(context).A22(A0O(2821, 41, 58), true);
    }

    public static boolean A16(Context context) {
        return A0N(context).A22(A0O(2424, 19, 117), true);
    }

    public static boolean A17(Context context) {
        return A0N(context).A22(A0O(2862, 31, 54), true);
    }

    public static boolean A18(Context context) {
        return A0N(context).A22(A0O(2893, 32, 52), true);
    }

    public static boolean A19(Context context) {
        return A0N(context).A22(A0O(1546, 43, 51), false);
    }

    public static boolean A1A(Context context) {
        return A0N(context).A22(A0O(1589, 57, 119), false);
    }

    public static boolean A1B(Context context) {
        return A0N(context).A22(A0O(1646, 59, 25), true);
    }

    public static boolean A1C(Context context) {
        return A0N(context).A22(A0O(3082, 38, 79), true);
    }

    public static boolean A1D(Context context) {
        return A0N(context).A22(A0O(3120, 38, 88), true);
    }

    public static boolean A1E(Context context) {
        return A0N(context).A22(A0O(2020, 21, 72), false);
    }

    public static boolean A1F(Context context) {
        return A0N(context).A22(A0O(1705, 44, 20), true);
    }

    public static boolean A1G(Context context) {
        return A0N(context).A22(A0O(3158, 43, 123), true);
    }

    public static boolean A1H(Context context) {
        return A0N(context).A22(A0O(946, 38, 8), false);
    }

    public static boolean A1I(Context context) {
        return A0N(context).A22(A0O(2739, 30, 47), true);
    }

    public static boolean A1J(Context context) {
        return A0N(context).A22(A0O(1116, 48, 67), false);
    }

    public static boolean A1K(Context context) {
        return A0N(context).A22(A0O(1164, 51, 55), false);
    }

    public static boolean A1L(Context context) {
        return A0N(context).A22(A0O(3201, 31, 30), false);
    }

    public static boolean A1M(Context context) {
        return A0N(context).A22(A0O(3232, 53, 60), false);
    }

    public static boolean A1N(Context context) {
        return A0N(context).A22(A0O(3285, 38, 114), true);
    }

    public static boolean A1O(Context context) {
        return A0N(context).A22(A0O(3323, 33, 8), false);
    }

    public static boolean A1P(Context context) {
        return A0N(context).A22(A0O(3356, 25, 44), false);
    }

    public static boolean A1Q(Context context) {
        return A0N(context).A22(A0O(3381, 35, 117), false);
    }

    public static boolean A1R(Context context) {
        return A0N(context).A22(A0O(2925, 26, 100), false);
    }

    public static boolean A1S(Context context) {
        return A0N(context).A22(A0O(2988, 35, 34), false);
    }

    public static boolean A1T(Context context) {
        return A0N(context).A22(A0O(1749, 51, 123), true);
    }

    public static boolean A1U(Context context) {
        return A0N(context).A22(A0O(3416, 32, 54), false);
    }

    public static boolean A1V(Context context) {
        return A0N(context).A22(A0O(3520, 26, 17), false);
    }

    public static boolean A1W(Context context) {
        return A0N(context).A22(A0O(3546, 23, 99), true);
    }

    public static boolean A1X(Context context) {
        return A0N(context).A22(A0O(3668, 27, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), false);
    }

    public static boolean A1Y(Context context) {
        return A0N(context).A22(A0O(3774, 28, 78), false);
    }

    public static boolean A1Z(Context context) {
        return A0N(context).A22(A0O(3904, 33, 0), false);
    }

    public static boolean A1a(Context context) {
        return A0N(context).A22(A0O(2359, 46, 22), true);
    }

    public static boolean A1b(Context context) {
        return A0N(context).A22(A0O(2506, 34, 17), false);
    }

    public static boolean A1c(Context context) {
        return A0N(context).A22(A0O(3879, 25, 67), false);
    }

    public static boolean A1d(Context context) {
        return A0N(context).A22(A0O(3743, 31, 97), false);
    }

    public static boolean A1e(Context context) {
        return A0N(context).A22(A0O(3448, 40, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), true);
    }

    public static boolean A1f(Context context) {
        return A0N(context).A22(A0O(2465, 16, 69), true);
    }

    public static boolean A1g(Context context) {
        return A0N(context).A22(A0O(3695, 48, 69), false);
    }

    public static boolean A1h(Context context) {
        return A0N(context).A22(A0O(1800, 18, 65), false);
    }

    public static boolean A1i(Context context) {
        return A0N(context).A22(A0O(1818, 40, 34), false);
    }

    public static boolean A1j(Context context) {
        return A0N(context).A22(A0O(3802, 36, 123), false);
    }

    public static boolean A1k(Context context) {
        return A0N(context).A22(A0O(3838, 41, 3), true);
    }

    public static boolean A1l(Context context) {
        return A0N(context).A22(A0O(733, 39, 74), false);
    }

    public static boolean A1m(Context context) {
        return A0N(context).A22(A0O(1261, 39, 69), false);
    }

    public static boolean A1n(Context context) {
        return A0N(context).A22(A0O(772, 45, 60), false);
    }

    public static boolean A1o(Context context) {
        return A0N(context).A22(A0O(2647, 26, 84), false);
    }

    public static boolean A1p(Context context) {
        return A0N(context).A22(A0O(2769, 25, 64), false);
    }

    public static boolean A1q(Context context) {
        return A0N(context).A22(A0O(1858, 40, 117), true);
    }

    public static boolean A1r(Context context) {
        return A0N(context).A22(A0O(817, 40, 83), false);
    }

    public static boolean A1s(Context context, boolean z) {
        if (!A1u(context, z) || !A0N(context).A22(A0O(2255, 27, 85), false)) {
            return false;
        }
        return true;
    }

    public static boolean A1t(Context context, boolean z) {
        if (Build.VERSION.SDK_INT < 21 || !A1s(context, z) || !A0N(context).A22(A0O(2282, 35, 13), true)) {
            return false;
        }
        return true;
    }

    public static boolean A1u(Context context, boolean z) {
        if (!z || Build.VERSION.SDK_INT < 19 || !A0N(context).A22(A0O(2317, 24, 123), false)) {
            return false;
        }
        return true;
    }

    public final double A1v(String str, double d) {
        String string = this.A00.getString(str, String.valueOf(d));
        if (string == null) {
            return d;
        }
        try {
            return string.equals(A0O(4060, 4, 39)) ? d : Double.parseDouble(string);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public final float A1w(String str, float f) {
        String string = this.A00.getString(str, String.valueOf(f));
        if (string == null) {
            return f;
        }
        try {
            return string.equals(A0O(4060, 4, 39)) ? f : Float.parseFloat(string);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    public final int A1x(String str, int i) {
        String string = this.A00.getString(str, String.valueOf(i));
        if (string == null) {
            return i;
        }
        try {
            return string.equals(A0O(4060, 4, 39)) ? i : Integer.parseInt(string);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public final long A1y(String str, long j) {
        String string = this.A00.getString(str, String.valueOf(j));
        if (string == null) {
            return j;
        }
        try {
            return string.equals(A0O(4060, 4, 39)) ? j : Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public final String A1z(String str, String str2) {
        String string = this.A00.getString(str, str2);
        return (string == null || string.equals(A0O(4060, 4, 39))) ? str2 : string;
    }

    public final void A20(@Nullable String str) throws JSONException {
        A0c(str, null);
    }

    public final void A21(@Nullable JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            A0d(jSONObject, null);
        }
    }

    public final boolean A22(String str, boolean z) {
        String string = this.A00.getString(str, String.valueOf(z));
        if (string == null) {
            return z;
        }
        boolean equals = string.equals(A0O(4060, 4, 39));
        if (A03[5].charAt(10) != 'g') {
            throw new RuntimeException();
        }
        A03[7] = "2ZyfpebDvRtNljKwQKDVcWpHPVLB6mST";
        return equals ? z : Boolean.parseBoolean(string);
    }
}
