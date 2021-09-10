package defpackage;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.apache.http.HttpStatus;

/* renamed from: v3  reason: default package */
public class v3 {
    private static final c[] A;
    private static final c B = new c("StripOffsets", 273, 3);
    private static final c[] C;
    private static final c[] D;
    private static final c[] E;
    private static final c[] F;
    static final c[][] G;
    private static final c[] H = {new c("SubIFDPointer", 330, 4), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("InteroperabilityIFDPointer", 40965, 4), new c("CameraSettingsIFDPointer", 8224, 1), new c("ImageProcessingIFDPointer", 8256, 1)};
    private static final HashMap<Integer, c>[] I;
    private static final HashMap<String, c>[] J;
    private static final HashSet<String> K = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
    private static final HashMap<Integer, Integer> L = new HashMap<>();
    static final Charset M;
    static final byte[] N;
    private static final List<Integer> l = Arrays.asList(1, 6, 3, 8);
    private static final List<Integer> m = Arrays.asList(2, 7, 4, 5);
    public static final int[] n = {8, 8, 8};
    public static final int[] o = {8};
    static final byte[] p = {-1, -40, -1};
    private static final byte[] q = {79, 76, 89, 77, 80, 0};
    private static final byte[] r = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static SimpleDateFormat s;
    static final String[] t = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    static final int[] u = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] v = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final c[] w;
    private static final c[] x;
    private static final c[] y;
    private static final c[] z;
    private final AssetManager.AssetInputStream a;
    private int b;
    private final HashMap<String, b>[] c;
    private Set<Integer> d;
    private ByteOrder e = ByteOrder.BIG_ENDIAN;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    /* access modifiers changed from: private */
    /* renamed from: v3$b */
    public static class b {
        public final int a;
        public final int b;
        public final byte[] c;

        b(int i, int i2, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = bArr;
        }

        public static b a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(v3.M);
            return new b(2, bytes.length, bytes);
        }

        public static b b(long j, ByteOrder byteOrder) {
            long[] jArr = {j};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(v3.u[4] * 1)]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                wrap.putInt((int) jArr[i]);
            }
            return new b(4, 1, wrap.array());
        }

        public static b c(d dVar, ByteOrder byteOrder) {
            d[] dVarArr = {dVar};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(v3.u[5] * 1)]);
            wrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                d dVar2 = dVarArr[i];
                wrap.putInt((int) dVar2.a);
                wrap.putInt((int) dVar2.b);
            }
            return new b(5, 1, wrap.array());
        }

        public static b d(int i, ByteOrder byteOrder) {
            int[] iArr = {i};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(v3.u[3] * 1)]);
            wrap.order(byteOrder);
            for (int i2 = 0; i2 < 1; i2++) {
                wrap.putShort((short) iArr[i2]);
            }
            return new b(3, 1, wrap.array());
        }

        public double e(ByteOrder byteOrder) {
            Object h = h(byteOrder);
            if (h == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            } else if (h instanceof String) {
                return Double.parseDouble((String) h);
            } else {
                if (h instanceof long[]) {
                    long[] jArr = (long[]) h;
                    if (jArr.length == 1) {
                        return (double) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (h instanceof int[]) {
                    int[] iArr = (int[]) h;
                    if (iArr.length == 1) {
                        return (double) iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (h instanceof double[]) {
                    double[] dArr = (double[]) h;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (h instanceof d[]) {
                    d[] dVarArr = (d[]) h;
                    if (dVarArr.length == 1) {
                        d dVar = dVarArr[0];
                        double d = (double) dVar.a;
                        double d2 = (double) dVar.b;
                        Double.isNaN(d);
                        Double.isNaN(d2);
                        Double.isNaN(d);
                        Double.isNaN(d2);
                        return d / d2;
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
        }

        public int f(ByteOrder byteOrder) {
            Object h = h(byteOrder);
            if (h == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            } else if (h instanceof String) {
                return Integer.parseInt((String) h);
            } else {
                if (h instanceof long[]) {
                    long[] jArr = (long[]) h;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (h instanceof int[]) {
                    int[] iArr = (int[]) h;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
        }

        public String g(ByteOrder byteOrder) {
            Object h = h(byteOrder);
            if (h == null) {
                return null;
            }
            if (h instanceof String) {
                return (String) h;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (h instanceof long[]) {
                long[] jArr = (long[]) h;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (h instanceof int[]) {
                int[] iArr = (int[]) h;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (h instanceof double[]) {
                double[] dArr = (double[]) h;
                while (i < dArr.length) {
                    sb.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (!(h instanceof d[])) {
                return null;
            } else {
                d[] dVarArr = (d[]) h;
                while (i < dVarArr.length) {
                    sb.append(dVarArr[i].a);
                    sb.append('/');
                    sb.append(dVarArr[i].b);
                    i++;
                    if (i != dVarArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:138:0x0196 A[SYNTHETIC, Splitter:B:138:0x0196] */
        /* JADX WARNING: Removed duplicated region for block: B:146:0x01a3 A[SYNTHETIC, Splitter:B:146:0x01a3] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object h(java.nio.ByteOrder r11) {
            /*
            // Method dump skipped, instructions count: 458
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.v3.b.h(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            StringBuilder q = ic.q("(");
            q.append(v3.t[this.a]);
            q.append(", data length:");
            return ic.k(q, this.c.length, ")");
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: v3$d */
    public static class d {
        public final long a;
        public final long b;

        d(long j, long j2) {
            if (j2 == 0) {
                this.a = 0;
                this.b = 1;
                return;
            }
            this.a = j;
            this.b = j2;
        }

        public String toString() {
            return this.a + "/" + this.b;
        }
    }

    static {
        c[] cVarArr = {new c("NewSubfileType", 254, 4), new c("SubfileType", 255, 4), new c("ImageWidth", 256, 3, 4), new c("ImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new c("Software", HttpStatus.SC_USE_PROXY, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("SensorTopBorder", 4, 4), new c("SensorLeftBorder", 5, 4), new c("SensorBottomBorder", 6, 4), new c("SensorRightBorder", 7, 4), new c("ISO", 23, 3), new c("JpgFromRaw", 46, 7)};
        w = cVarArr;
        c[] cVarArr2 = {new c("ExposureTime", 33434, 5), new c("FNumber", 33437, 5), new c("ExposureProgram", 34850, 3), new c("SpectralSensitivity", 34852, 2), new c("PhotographicSensitivity", 34855, 3), new c("OECF", 34856, 7), new c("ExifVersion", 36864, 2), new c("DateTimeOriginal", 36867, 2), new c("DateTimeDigitized", 36868, 2), new c("ComponentsConfiguration", 37121, 7), new c("CompressedBitsPerPixel", 37122, 5), new c("ShutterSpeedValue", 37377, 10), new c("ApertureValue", 37378, 5), new c("BrightnessValue", 37379, 10), new c("ExposureBiasValue", 37380, 10), new c("MaxApertureValue", 37381, 5), new c("SubjectDistance", 37382, 5), new c("MeteringMode", 37383, 3), new c("LightSource", 37384, 3), new c("Flash", 37385, 3), new c("FocalLength", 37386, 5), new c("SubjectArea", 37396, 3), new c("MakerNote", 37500, 7), new c("UserComment", 37510, 7), new c("SubSecTime", 37520, 2), new c("SubSecTimeOriginal", 37521, 2), new c("SubSecTimeDigitized", 37522, 2), new c("FlashpixVersion", 40960, 7), new c("ColorSpace", 40961, 3), new c("PixelXDimension", 40962, 3, 4), new c("PixelYDimension", 40963, 3, 4), new c("RelatedSoundFile", 40964, 2), new c("InteroperabilityIFDPointer", 40965, 4), new c("FlashEnergy", 41483, 5), new c("SpatialFrequencyResponse", 41484, 7), new c("FocalPlaneXResolution", 41486, 5), new c("FocalPlaneYResolution", 41487, 5), new c("FocalPlaneResolutionUnit", 41488, 3), new c("SubjectLocation", 41492, 3), new c("ExposureIndex", 41493, 5), new c("SensingMethod", 41495, 3), new c("FileSource", 41728, 7), new c("SceneType", 41729, 7), new c("CFAPattern", 41730, 7), new c("CustomRendered", 41985, 3), new c("ExposureMode", 41986, 3), new c("WhiteBalance", 41987, 3), new c("DigitalZoomRatio", 41988, 5), new c("FocalLengthIn35mmFilm", 41989, 3), new c("SceneCaptureType", 41990, 3), new c("GainControl", 41991, 3), new c("Contrast", 41992, 3), new c("Saturation", 41993, 3), new c("Sharpness", 41994, 3), new c("DeviceSettingDescription", 41995, 7), new c("SubjectDistanceRange", 41996, 3), new c("ImageUniqueID", 42016, 2), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
        x = cVarArr2;
        c[] cVarArr3 = {new c("GPSVersionID", 0, 1), new c("GPSLatitudeRef", 1, 2), new c("GPSLatitude", 2, 5), new c("GPSLongitudeRef", 3, 2), new c("GPSLongitude", 4, 5), new c("GPSAltitudeRef", 5, 1), new c("GPSAltitude", 6, 5), new c("GPSTimeStamp", 7, 5), new c("GPSSatellites", 8, 2), new c("GPSStatus", 9, 2), new c("GPSMeasureMode", 10, 2), new c("GPSDOP", 11, 5), new c("GPSSpeedRef", 12, 2), new c("GPSSpeed", 13, 5), new c("GPSTrackRef", 14, 2), new c("GPSTrack", 15, 5), new c("GPSImgDirectionRef", 16, 2), new c("GPSImgDirection", 17, 5), new c("GPSMapDatum", 18, 2), new c("GPSDestLatitudeRef", 19, 2), new c("GPSDestLatitude", 20, 5), new c("GPSDestLongitudeRef", 21, 2), new c("GPSDestLongitude", 22, 5), new c("GPSDestBearingRef", 23, 2), new c("GPSDestBearing", 24, 5), new c("GPSDestDistanceRef", 25, 2), new c("GPSDestDistance", 26, 5), new c("GPSProcessingMethod", 27, 7), new c("GPSAreaInformation", 28, 7), new c("GPSDateStamp", 29, 2), new c("GPSDifferential", 30, 3)};
        y = cVarArr3;
        c[] cVarArr4 = {new c("InteroperabilityIndex", 1, 2)};
        z = cVarArr4;
        c[] cVarArr5 = {new c("NewSubfileType", 254, 4), new c("SubfileType", 255, 4), new c("ThumbnailImageWidth", 256, 3, 4), new c("ThumbnailImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new c("Software", HttpStatus.SC_USE_PROXY, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
        A = cVarArr5;
        c[] cVarArr6 = {new c("ThumbnailImage", 256, 7), new c("CameraSettingsIFDPointer", 8224, 4), new c("ImageProcessingIFDPointer", 8256, 4)};
        C = cVarArr6;
        c[] cVarArr7 = {new c("PreviewImageStart", 257, 4), new c("PreviewImageLength", 258, 4)};
        D = cVarArr7;
        c[] cVarArr8 = {new c("AspectFrame", 4371, 3)};
        E = cVarArr8;
        c[] cVarArr9 = {new c("ColorSpace", 55, 3)};
        F = cVarArr9;
        c[][] cVarArr10 = {cVarArr, cVarArr2, cVarArr3, cVarArr4, cVarArr5, cVarArr, cVarArr6, cVarArr7, cVarArr8, cVarArr9};
        G = cVarArr10;
        I = new HashMap[cVarArr10.length];
        J = new HashMap[cVarArr10.length];
        Charset forName = Charset.forName("US-ASCII");
        M = forName;
        N = "Exif\u0000\u0000".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        s = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i2 = 0;
        while (true) {
            c[][] cVarArr11 = G;
            if (i2 < cVarArr11.length) {
                I[i2] = new HashMap<>();
                J[i2] = new HashMap<>();
                c[] cVarArr12 = cVarArr11[i2];
                for (c cVar : cVarArr12) {
                    I[i2].put(Integer.valueOf(cVar.a), cVar);
                    J[i2].put(cVar.b, cVar);
                }
                i2++;
            } else {
                HashMap<Integer, Integer> hashMap = L;
                c[] cVarArr13 = H;
                hashMap.put(Integer.valueOf(cVarArr13[0].a), 5);
                hashMap.put(Integer.valueOf(cVarArr13[1].a), 1);
                hashMap.put(Integer.valueOf(cVarArr13[2].a), 2);
                hashMap.put(Integer.valueOf(cVarArr13[3].a), 3);
                hashMap.put(Integer.valueOf(cVarArr13[4].a), 7);
                hashMap.put(Integer.valueOf(cVarArr13[5].a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
        }
    }

    public v3(InputStream inputStream) {
        c[][] cVarArr = G;
        this.c = new HashMap[cVarArr.length];
        this.d = new HashSet(cVarArr.length);
        if (inputStream != null) {
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.a = (AssetManager.AssetInputStream) inputStream;
            } else {
                this.a = null;
            }
            for (int i2 = 0; i2 < G.length; i2++) {
                try {
                    this.c[i2] = new HashMap<>();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    a();
                    throw th;
                }
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.b = g(bufferedInputStream);
            a aVar = new a(bufferedInputStream);
            switch (this.b) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    j(aVar);
                    break;
                case 4:
                    f(aVar, 0, 0);
                    break;
                case 7:
                    h(aVar);
                    break;
                case 9:
                    i(aVar);
                    break;
                case 10:
                    k(aVar);
                    break;
            }
            q(aVar);
            a();
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null");
    }

    private void a() {
        String c2 = c("DateTimeOriginal");
        if (c2 != null && c("DateTime") == null) {
            this.c[0].put("DateTime", b.a(c2));
        }
        if (c("ImageWidth") == null) {
            this.c[0].put("ImageWidth", b.b(0, this.e));
        }
        if (c("ImageLength") == null) {
            this.c[0].put("ImageLength", b.b(0, this.e));
        }
        if (c("Orientation") == null) {
            this.c[0].put("Orientation", b.b(0, this.e));
        }
        if (c("LightSource") == null) {
            this.c[1].put("LightSource", b.b(0, this.e));
        }
    }

    private static long[] b(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jArr[i2] = (long) iArr[i2];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }

    private b e(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i2 = 0; i2 < G.length; i2++) {
            b bVar = this.c[i2].get(str);
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0056 A[FALL_THROUGH] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00fd A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f(defpackage.v3.a r9, int r10, int r11) {
        /*
        // Method dump skipped, instructions count: 404
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v3.f(v3$a, int, int):void");
    }

    private int g(BufferedInputStream bufferedInputStream) {
        boolean z2;
        boolean z3;
        boolean z4;
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i2 = 0;
        while (true) {
            byte[] bArr2 = p;
            z2 = true;
            if (i2 >= bArr2.length) {
                z3 = true;
                break;
            } else if (bArr[i2] != bArr2[i2]) {
                z3 = false;
                break;
            } else {
                i2++;
            }
        }
        if (z3) {
            return 4;
        }
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        int i3 = 0;
        while (true) {
            if (i3 >= bytes.length) {
                z4 = true;
                break;
            } else if (bArr[i3] != bytes[i3]) {
                z4 = false;
                break;
            } else {
                i3++;
            }
        }
        if (z4) {
            return 9;
        }
        a aVar = new a(bArr);
        ByteOrder o2 = o(aVar);
        this.e = o2;
        aVar.L(o2);
        short readShort = aVar.readShort();
        aVar.close();
        if (readShort == 20306 || readShort == 21330) {
            return 7;
        }
        a aVar2 = new a(bArr);
        ByteOrder o3 = o(aVar2);
        this.e = o3;
        aVar2.L(o3);
        short readShort2 = aVar2.readShort();
        aVar2.close();
        if (readShort2 != 85) {
            z2 = false;
        }
        if (z2) {
            return 10;
        }
        return 0;
    }

    private void h(a aVar) {
        j(aVar);
        b bVar = this.c[1].get("MakerNote");
        if (bVar != null) {
            a aVar2 = new a(bVar.c);
            aVar2.L(this.e);
            byte[] bArr = q;
            byte[] bArr2 = new byte[bArr.length];
            aVar2.readFully(bArr2);
            aVar2.o(0);
            byte[] bArr3 = r;
            byte[] bArr4 = new byte[bArr3.length];
            aVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                aVar2.o(8);
            } else if (Arrays.equals(bArr4, bArr3)) {
                aVar2.o(12);
            }
            p(aVar2, 6);
            b bVar2 = this.c[7].get("PreviewImageStart");
            b bVar3 = this.c[7].get("PreviewImageLength");
            if (!(bVar2 == null || bVar3 == null)) {
                this.c[5].put("JPEGInterchangeFormat", bVar2);
                this.c[5].put("JPEGInterchangeFormatLength", bVar3);
            }
            b bVar4 = this.c[8].get("AspectFrame");
            if (bVar4 != null) {
                int[] iArr = (int[]) bVar4.h(this.e);
                if (iArr == null || iArr.length != 4) {
                    StringBuilder q2 = ic.q("Invalid aspect frame values. frame=");
                    q2.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", q2.toString());
                } else if (iArr[2] > iArr[0] && iArr[3] > iArr[1]) {
                    int i2 = (iArr[2] - iArr[0]) + 1;
                    int i3 = (iArr[3] - iArr[1]) + 1;
                    if (i2 < i3) {
                        int i4 = i2 + i3;
                        i3 = i4 - i3;
                        i2 = i4 - i3;
                    }
                    b d2 = b.d(i2, this.e);
                    b d3 = b.d(i3, this.e);
                    this.c[0].put("ImageWidth", d2);
                    this.c[0].put("ImageLength", d3);
                }
            }
        }
    }

    private void i(a aVar) {
        aVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        aVar.read(bArr);
        aVar.skipBytes(4);
        aVar.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        f(aVar, i2, 5);
        aVar.o((long) i3);
        aVar.L(ByteOrder.BIG_ENDIAN);
        int readInt = aVar.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = aVar.readUnsignedShort();
            int readUnsignedShort2 = aVar.readUnsignedShort();
            if (readUnsignedShort == B.a) {
                short readShort = aVar.readShort();
                short readShort2 = aVar.readShort();
                b d2 = b.d(readShort, this.e);
                b d3 = b.d(readShort2, this.e);
                this.c[0].put("ImageLength", d2);
                this.c[0].put("ImageWidth", d3);
                return;
            }
            aVar.skipBytes(readUnsignedShort2);
        }
    }

    private void j(a aVar) {
        b bVar;
        n(aVar, aVar.available());
        p(aVar, 0);
        s(aVar, 0);
        s(aVar, 5);
        s(aVar, 4);
        r(0, 5);
        r(0, 4);
        r(5, 4);
        b bVar2 = this.c[1].get("PixelXDimension");
        b bVar3 = this.c[1].get("PixelYDimension");
        if (!(bVar2 == null || bVar3 == null)) {
            this.c[0].put("ImageWidth", bVar2);
            this.c[0].put("ImageLength", bVar3);
        }
        if (this.c[4].isEmpty() && m(this.c[5])) {
            HashMap<String, b>[] hashMapArr = this.c;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        m(this.c[4]);
        if (this.b == 8 && (bVar = this.c[1].get("MakerNote")) != null) {
            a aVar2 = new a(bVar.c);
            aVar2.L(this.e);
            aVar2.o(6);
            p(aVar2, 9);
            b bVar4 = this.c[9].get("ColorSpace");
            if (bVar4 != null) {
                this.c[1].put("ColorSpace", bVar4);
            }
        }
    }

    private void k(a aVar) {
        j(aVar);
        if (this.c[0].get("JpgFromRaw") != null) {
            f(aVar, this.k, 5);
        }
        b bVar = this.c[0].get("ISO");
        b bVar2 = this.c[1].get("PhotographicSensitivity");
        if (bVar != null && bVar2 == null) {
            this.c[1].put("PhotographicSensitivity", bVar);
        }
    }

    private void l(a aVar, HashMap hashMap) {
        int i2;
        b bVar = (b) hashMap.get("JPEGInterchangeFormat");
        b bVar2 = (b) hashMap.get("JPEGInterchangeFormatLength");
        if (bVar != null && bVar2 != null) {
            int f2 = bVar.f(this.e);
            int min = Math.min(bVar2.f(this.e), aVar.available() - f2);
            int i3 = this.b;
            if (i3 == 4 || i3 == 9 || i3 == 10) {
                i2 = this.g;
            } else {
                if (i3 == 7) {
                    i2 = this.h;
                }
                if (f2 > 0 && min > 0 && this.a == null) {
                    aVar.o((long) f2);
                    aVar.readFully(new byte[min]);
                    return;
                }
                return;
            }
            f2 += i2;
            if (f2 > 0) {
            }
        }
    }

    private boolean m(HashMap hashMap) {
        b bVar = (b) hashMap.get("ImageLength");
        b bVar2 = (b) hashMap.get("ImageWidth");
        if (bVar == null || bVar2 == null) {
            return false;
        }
        return bVar.f(this.e) <= 512 && bVar2.f(this.e) <= 512;
    }

    private void n(a aVar, int i2) {
        ByteOrder o2 = o(aVar);
        this.e = o2;
        aVar.L(o2);
        int readUnsignedShort = aVar.readUnsignedShort();
        int i3 = this.b;
        if (i3 == 7 || i3 == 10 || readUnsignedShort == 42) {
            int readInt = aVar.readInt();
            if (readInt < 8 || readInt >= i2) {
                throw new IOException(ic.f("Invalid first Ifd offset: ", readInt));
            }
            int i4 = readInt - 8;
            if (i4 > 0 && aVar.skipBytes(i4) != i4) {
                throw new IOException(ic.f("Couldn't jump to first Ifd: ", i4));
            }
            return;
        }
        StringBuilder q2 = ic.q("Invalid start code: ");
        q2.append(Integer.toHexString(readUnsignedShort));
        throw new IOException(q2.toString());
    }

    private ByteOrder o(a aVar) {
        short readShort = aVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        StringBuilder q2 = ic.q("Invalid byte order: ");
        q2.append(Integer.toHexString(readShort));
        throw new IOException(q2.toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:53:0x0113  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x011a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void p(defpackage.v3.a r24, int r25) {
        /*
        // Method dump skipped, instructions count: 840
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v3.p(v3$a, int):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0060, code lost:
        if (java.util.Arrays.equals(r1, defpackage.v3.o) != false) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0068, code lost:
        if (java.util.Arrays.equals(r1, r5) != false) goto L_0x006c;
     */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void q(defpackage.v3.a r12) {
        /*
        // Method dump skipped, instructions count: 220
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v3.q(v3$a):void");
    }

    private void r(int i2, int i3) {
        if (!this.c[i2].isEmpty() && !this.c[i3].isEmpty()) {
            b bVar = this.c[i2].get("ImageLength");
            b bVar2 = this.c[i2].get("ImageWidth");
            b bVar3 = this.c[i3].get("ImageLength");
            b bVar4 = this.c[i3].get("ImageWidth");
            if (bVar != null && bVar2 != null && bVar3 != null && bVar4 != null) {
                int f2 = bVar.f(this.e);
                int f3 = bVar2.f(this.e);
                int f4 = bVar3.f(this.e);
                int f5 = bVar4.f(this.e);
                if (f2 < f4 && f3 < f5) {
                    HashMap<String, b>[] hashMapArr = this.c;
                    HashMap<String, b> hashMap = hashMapArr[i2];
                    hashMapArr[i2] = hashMapArr[i3];
                    hashMapArr[i3] = hashMap;
                }
            }
        }
    }

    private void s(a aVar, int i2) {
        b bVar;
        b bVar2;
        b bVar3;
        b bVar4 = this.c[i2].get("DefaultCropSize");
        b bVar5 = this.c[i2].get("SensorTopBorder");
        b bVar6 = this.c[i2].get("SensorLeftBorder");
        b bVar7 = this.c[i2].get("SensorBottomBorder");
        b bVar8 = this.c[i2].get("SensorRightBorder");
        if (bVar4 != null) {
            if (bVar4.a == 5) {
                d[] dVarArr = (d[]) bVar4.h(this.e);
                if (dVarArr == null || dVarArr.length != 2) {
                    StringBuilder q2 = ic.q("Invalid crop size values. cropSize=");
                    q2.append(Arrays.toString(dVarArr));
                    Log.w("ExifInterface", q2.toString());
                    return;
                }
                bVar3 = b.c(dVarArr[0], this.e);
                bVar2 = b.c(dVarArr[1], this.e);
            } else {
                int[] iArr = (int[]) bVar4.h(this.e);
                if (iArr == null || iArr.length != 2) {
                    StringBuilder q3 = ic.q("Invalid crop size values. cropSize=");
                    q3.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", q3.toString());
                    return;
                }
                bVar3 = b.d(iArr[0], this.e);
                bVar2 = b.d(iArr[1], this.e);
            }
            this.c[i2].put("ImageWidth", bVar3);
            this.c[i2].put("ImageLength", bVar2);
        } else if (bVar5 == null || bVar6 == null || bVar7 == null || bVar8 == null) {
            b bVar9 = this.c[i2].get("ImageLength");
            b bVar10 = this.c[i2].get("ImageWidth");
            if ((bVar9 == null || bVar10 == null) && (bVar = this.c[i2].get("JPEGInterchangeFormat")) != null) {
                f(aVar, bVar.f(this.e), i2);
            }
        } else {
            int f2 = bVar5.f(this.e);
            int f3 = bVar7.f(this.e);
            int f4 = bVar8.f(this.e);
            int f5 = bVar6.f(this.e);
            if (f3 > f2 && f4 > f5) {
                b d2 = b.d(f3 - f2, this.e);
                b d3 = b.d(f4 - f5, this.e);
                this.c[i2].put("ImageLength", d2);
                this.c[i2].put("ImageWidth", d3);
            }
        }
    }

    public String c(String str) {
        b e2 = e(str);
        if (e2 != null) {
            if (!K.contains(str)) {
                return e2.g(this.e);
            }
            if (str.equals("GPSTimeStamp")) {
                int i2 = e2.a;
                if (i2 == 5 || i2 == 10) {
                    d[] dVarArr = (d[]) e2.h(this.e);
                    if (dVarArr == null || dVarArr.length != 3) {
                        StringBuilder q2 = ic.q("Invalid GPS Timestamp array. array=");
                        q2.append(Arrays.toString(dVarArr));
                        Log.w("ExifInterface", q2.toString());
                        return null;
                    }
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) dVarArr[0].a) / ((float) dVarArr[0].b))), Integer.valueOf((int) (((float) dVarArr[1].a) / ((float) dVarArr[1].b))), Integer.valueOf((int) (((float) dVarArr[2].a) / ((float) dVarArr[2].b))));
                }
                StringBuilder q3 = ic.q("GPS Timestamp format is not rational. format=");
                q3.append(e2.a);
                Log.w("ExifInterface", q3.toString());
                return null;
            }
            try {
                return Double.toString(e2.e(this.e));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public int d(String str, int i2) {
        b e2 = e(str);
        if (e2 == null) {
            return i2;
        }
        try {
            return e2.f(this.e);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: v3$a */
    public static class a extends InputStream implements DataInput {
        private static final ByteOrder f = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder g = ByteOrder.BIG_ENDIAN;
        private DataInputStream b;
        private ByteOrder c;
        final int d;
        int e;

        public a(InputStream inputStream) {
            this.c = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.b = dataInputStream;
            int available = dataInputStream.available();
            this.d = available;
            this.e = 0;
            this.b.mark(available);
        }

        public void L(ByteOrder byteOrder) {
            this.c = byteOrder;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.b.available();
        }

        public long j() {
            return ((long) readInt()) & 4294967295L;
        }

        public void o(long j) {
            int i = this.e;
            if (((long) i) > j) {
                this.e = 0;
                this.b.reset();
                this.b.mark(this.d);
            } else {
                j -= (long) i;
            }
            int i2 = (int) j;
            if (skipBytes(i2) != i2) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public int read() {
            this.e++;
            return this.b.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.e++;
            return this.b.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() {
            int i = this.e + 1;
            this.e = i;
            if (i <= this.d) {
                int read = this.b.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.e += 2;
            return this.b.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) {
            int i3 = this.e + i2;
            this.e = i3;
            if (i3 > this.d) {
                throw new EOFException();
            } else if (this.b.read(bArr, i, i2) != i2) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public int readInt() {
            int i = this.e + 4;
            this.e = i;
            if (i <= this.d) {
                int read = this.b.read();
                int read2 = this.b.read();
                int read3 = this.b.read();
                int read4 = this.b.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.c;
                    if (byteOrder == f) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == g) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    StringBuilder q = ic.q("Invalid byte order: ");
                    q.append(this.c);
                    throw new IOException(q.toString());
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() {
            int i = this.e + 8;
            this.e = i;
            if (i <= this.d) {
                int read = this.b.read();
                int read2 = this.b.read();
                int read3 = this.b.read();
                int read4 = this.b.read();
                int read5 = this.b.read();
                int read6 = this.b.read();
                int read7 = this.b.read();
                int read8 = this.b.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.c;
                    if (byteOrder == f) {
                        return (((long) read8) << 56) + (((long) read7) << 48) + (((long) read6) << 40) + (((long) read5) << 32) + (((long) read4) << 24) + (((long) read3) << 16) + (((long) read2) << 8) + ((long) read);
                    }
                    if (byteOrder == g) {
                        return (((long) read) << 56) + (((long) read2) << 48) + (((long) read3) << 40) + (((long) read4) << 32) + (((long) read5) << 24) + (((long) read6) << 16) + (((long) read7) << 8) + ((long) read8);
                    }
                    StringBuilder q = ic.q("Invalid byte order: ");
                    q.append(this.c);
                    throw new IOException(q.toString());
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() {
            int i = this.e + 2;
            this.e = i;
            if (i <= this.d) {
                int read = this.b.read();
                int read2 = this.b.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.c;
                    if (byteOrder == f) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == g) {
                        return (short) ((read << 8) + read2);
                    }
                    StringBuilder q = ic.q("Invalid byte order: ");
                    q.append(this.c);
                    throw new IOException(q.toString());
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.e += 2;
            return this.b.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.e++;
            return this.b.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() {
            int i = this.e + 2;
            this.e = i;
            if (i <= this.d) {
                int read = this.b.read();
                int read2 = this.b.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.c;
                    if (byteOrder == f) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == g) {
                        return (read << 8) + read2;
                    }
                    StringBuilder q = ic.q("Invalid byte order: ");
                    q.append(this.c);
                    throw new IOException(q.toString());
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) {
            int min = Math.min(i, this.d - this.e);
            int i2 = 0;
            while (i2 < min) {
                i2 += this.b.skipBytes(min - i2);
            }
            this.e += i2;
            return i2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = this.b.read(bArr, i, i2);
            this.e += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) {
            int length = this.e + bArr.length;
            this.e = length;
            if (length > this.d) {
                throw new EOFException();
            } else if (this.b.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        public a(byte[] bArr) {
            this(new ByteArrayInputStream(bArr));
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: v3$c */
    public static class c {
        public final int a;
        public final String b;
        public final int c;
        public final int d;

        c(String str, int i, int i2) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = -1;
        }

        c(String str, int i, int i2, int i3) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = i3;
        }
    }
}
