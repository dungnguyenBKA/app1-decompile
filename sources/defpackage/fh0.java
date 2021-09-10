package defpackage;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* renamed from: fh0  reason: default package */
public final class fh0 {
    private static final Pattern c = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern d = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    private final String a;
    @Nullable
    private final String b;

    private fh0(String str, String str2, String str3, @Nullable String str4) {
        this.a = str;
        this.b = str4;
    }

    public static fh0 c(String str) {
        Matcher matcher = c.matcher(str);
        if (matcher.lookingAt()) {
            String group = matcher.group(1);
            Locale locale = Locale.US;
            String lowerCase = group.toLowerCase(locale);
            String lowerCase2 = matcher.group(2).toLowerCase(locale);
            String str2 = null;
            Matcher matcher2 = d.matcher(str);
            for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
                matcher2.region(end, str.length());
                if (matcher2.lookingAt()) {
                    String group2 = matcher2.group(1);
                    if (group2 != null && group2.equalsIgnoreCase("charset")) {
                        String group3 = matcher2.group(2);
                        if (group3 == null) {
                            group3 = matcher2.group(3);
                        } else if (group3.startsWith("'") && group3.endsWith("'") && group3.length() > 2) {
                            group3 = group3.substring(1, group3.length() - 1);
                        }
                        if (str2 == null || group3.equalsIgnoreCase(str2)) {
                            str2 = group3;
                        } else {
                            throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + group3 + "\" for: \"" + str + '\"');
                        }
                    }
                } else {
                    StringBuilder q = ic.q("Parameter is not formatted correctly: \"");
                    q.append(str.substring(end));
                    q.append("\" for: \"");
                    q.append(str);
                    q.append('\"');
                    throw new IllegalArgumentException(q.toString());
                }
            }
            return new fh0(str, lowerCase, lowerCase2, str2);
        }
        throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
    }

    @Nullable
    public static fh0 d(String str) {
        try {
            return c(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Nullable
    public Charset a() {
        try {
            String str = this.b;
            if (str != null) {
                return Charset.forName(str);
            }
        } catch (IllegalArgumentException unused) {
        }
        return null;
    }

    @Nullable
    public Charset b(@Nullable Charset charset) {
        try {
            String str = this.b;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof fh0) && ((fh0) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
