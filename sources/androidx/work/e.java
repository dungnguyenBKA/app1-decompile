package androidx.work;

import java.util.HashMap;
import java.util.Map;

public final class e {
    private static final String b = h.f("Data");
    public static final e c = new a().a();
    Map<String, Object> a;

    public static final class a {
        private Map<String, Object> a = new HashMap();

        public e a() {
            e eVar = new e(this.a);
            e.c(eVar);
            return eVar;
        }

        public a b(e eVar) {
            c(eVar.a);
            return this;
        }

        public a c(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    this.a.put(key, null);
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                        this.a.put(key, value);
                    } else {
                        int i = 0;
                        if (cls == boolean[].class) {
                            Map<String, Object> map2 = this.a;
                            boolean[] zArr = (boolean[]) value;
                            e eVar = e.c;
                            Boolean[] boolArr = new Boolean[zArr.length];
                            while (i < zArr.length) {
                                boolArr[i] = Boolean.valueOf(zArr[i]);
                                i++;
                            }
                            map2.put(key, boolArr);
                        } else if (cls == byte[].class) {
                            Map<String, Object> map3 = this.a;
                            byte[] bArr = (byte[]) value;
                            e eVar2 = e.c;
                            Byte[] bArr2 = new Byte[bArr.length];
                            while (i < bArr.length) {
                                bArr2[i] = Byte.valueOf(bArr[i]);
                                i++;
                            }
                            map3.put(key, bArr2);
                        } else if (cls == int[].class) {
                            Map<String, Object> map4 = this.a;
                            int[] iArr = (int[]) value;
                            e eVar3 = e.c;
                            Integer[] numArr = new Integer[iArr.length];
                            while (i < iArr.length) {
                                numArr[i] = Integer.valueOf(iArr[i]);
                                i++;
                            }
                            map4.put(key, numArr);
                        } else if (cls == long[].class) {
                            Map<String, Object> map5 = this.a;
                            long[] jArr = (long[]) value;
                            e eVar4 = e.c;
                            Long[] lArr = new Long[jArr.length];
                            while (i < jArr.length) {
                                lArr[i] = Long.valueOf(jArr[i]);
                                i++;
                            }
                            map5.put(key, lArr);
                        } else if (cls == float[].class) {
                            Map<String, Object> map6 = this.a;
                            float[] fArr = (float[]) value;
                            e eVar5 = e.c;
                            Float[] fArr2 = new Float[fArr.length];
                            while (i < fArr.length) {
                                fArr2[i] = Float.valueOf(fArr[i]);
                                i++;
                            }
                            map6.put(key, fArr2);
                        } else if (cls == double[].class) {
                            Map<String, Object> map7 = this.a;
                            double[] dArr = (double[]) value;
                            e eVar6 = e.c;
                            Double[] dArr2 = new Double[dArr.length];
                            while (i < dArr.length) {
                                dArr2[i] = Double.valueOf(dArr[i]);
                                i++;
                            }
                            map7.put(key, dArr2);
                        } else {
                            throw new IllegalArgumentException(String.format("Key %s has invalid type %s", key, cls));
                        }
                    }
                }
            }
            return this;
        }

        public a d(String str, String str2) {
            this.a.put(str, str2);
            return this;
        }
    }

    e() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0050 A[SYNTHETIC, Splitter:B:25:0x0050] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x006a A[SYNTHETIC, Splitter:B:34:0x006a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static androidx.work.e a(byte[] r7) {
        /*
        // Method dump skipped, instructions count: 137
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.e.a(byte[]):androidx.work.e");
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x007c A[SYNTHETIC, Splitter:B:31:0x007c] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0093 A[SYNTHETIC, Splitter:B:41:0x0093] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] c(androidx.work.e r5) {
        /*
        // Method dump skipped, instructions count: 170
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.e.c(androidx.work.e):byte[]");
    }

    public String b(String str) {
        Object obj = this.a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((e) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode() * 31;
    }

    public e(e eVar) {
        this.a = new HashMap(eVar.a);
    }

    e(Map<String, ?> map) {
        this.a = new HashMap(map);
    }
}
