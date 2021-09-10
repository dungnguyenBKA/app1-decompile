package defpackage;

import java.lang.reflect.Field;
import java.util.Locale;

/* renamed from: c60  reason: default package */
public enum c60 implements d60 {
    IDENTITY {
        @Override // defpackage.d60
        public String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE {
        @Override // defpackage.d60
        public String a(Field field) {
            return c60.c(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES {
        @Override // defpackage.d60
        public String a(Field field) {
            return c60.c(c60.b(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES {
        @Override // defpackage.d60
        public String a(Field field) {
            return c60.b(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES {
        @Override // defpackage.d60
        public String a(Field field) {
            return c60.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS {
        @Override // defpackage.d60
        public String a(Field field) {
            return c60.b(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    c60(a aVar) {
    }

    static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    static String c(String str) {
        int length = str.length() - 1;
        int i = 0;
        while (!Character.isLetter(str.charAt(i)) && i < length) {
            i++;
        }
        char charAt = str.charAt(i);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i) + upperCase + str.substring(i + 1);
    }
}
