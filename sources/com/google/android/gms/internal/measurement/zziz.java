package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* access modifiers changed from: package-private */
public final class zziz {
    static String zza(zzix zzix, String str) {
        StringBuilder r = ic.r("# ", str);
        zzc(zzix, r, 0);
        return r.toString();
    }

    static final void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zzb(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzb(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzju.zza(zzgs.zzk((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgs) {
                sb.append(": \"");
                sb.append(zzju.zza((zzgs) obj));
                sb.append('\"');
            } else if (obj instanceof zzhs) {
                sb.append(" {");
                zzc((zzhs) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zzb(sb, i4, "key", entry2.getKey());
                zzb(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }

    private static void zzc(zzix zzix, StringBuilder sb, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        boolean z;
        String str5;
        String str6;
        String str7;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        Method[] declaredMethods = zzix.getClass().getDeclaredMethods();
        for (Method method : declaredMethods) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str8 = (String) it.next();
            String substring = str8.startsWith("get") ? str8.substring(3) : str8;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                if (valueOf2.length() != 0) {
                    str7 = valueOf.concat(valueOf2);
                } else {
                    str7 = new String(valueOf);
                }
                Method method2 = (Method) hashMap.get(str8);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzd(str7), zzhs.zzbA(method2, zzix, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                if (valueOf4.length() != 0) {
                    str6 = valueOf3.concat(valueOf4);
                } else {
                    str6 = new String(valueOf3);
                }
                Method method3 = (Method) hashMap.get(str8);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzd(str6), zzhs.zzbA(method3, zzix, new Object[0]));
                }
            }
            if (substring.length() != 0) {
                str = "set".concat(substring);
            } else {
                str = new String("set");
            }
            if (((Method) hashMap2.get(str)) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (valueOf5.length() != 0) {
                        str5 = "get".concat(valueOf5);
                    } else {
                        str5 = new String("get");
                    }
                    if (hashMap.containsKey(str5)) {
                    }
                }
                String valueOf6 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(substring.substring(1));
                if (valueOf7.length() != 0) {
                    str2 = valueOf6.concat(valueOf7);
                } else {
                    str2 = new String(valueOf6);
                }
                if (substring.length() != 0) {
                    str3 = "get".concat(substring);
                } else {
                    str3 = new String("get");
                }
                Method method4 = (Method) hashMap.get(str3);
                if (substring.length() != 0) {
                    str4 = "has".concat(substring);
                } else {
                    str4 = new String("has");
                }
                Method method5 = (Method) hashMap.get(str4);
                if (method4 != null) {
                    Object zzbA = zzhs.zzbA(method4, zzix, new Object[0]);
                    if (method5 == null) {
                        if (zzbA instanceof Boolean) {
                            if (!((Boolean) zzbA).booleanValue()) {
                            }
                        } else if (zzbA instanceof Integer) {
                            if (((Integer) zzbA).intValue() == 0) {
                            }
                        } else if (zzbA instanceof Float) {
                            if (((Float) zzbA).floatValue() == 0.0f) {
                            }
                        } else if (!(zzbA instanceof Double)) {
                            if (zzbA instanceof String) {
                                z = zzbA.equals("");
                            } else if (zzbA instanceof zzgs) {
                                z = zzbA.equals(zzgs.zzb);
                            } else if (zzbA instanceof zzix) {
                                if (zzbA == ((zzix) zzbA).zzbK()) {
                                }
                            } else if ((zzbA instanceof Enum) && ((Enum) zzbA).ordinal() == 0) {
                            }
                            if (z) {
                            }
                        } else if (((Double) zzbA).doubleValue() == 0.0d) {
                        }
                    } else if (!((Boolean) zzhs.zzbA(method5, zzix, new Object[0])).booleanValue()) {
                    }
                    zzb(sb, i, zzd(str2), zzbA);
                }
            }
        }
        if (!(zzix instanceof zzhp)) {
            zzjx zzjx = ((zzhs) zzix).zzc;
            if (zzjx != null) {
                zzjx.zzg(sb, i);
                return;
            }
            return;
        }
        zzhp zzhp = (zzhp) zzix;
        throw null;
    }

    private static final String zzd(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
