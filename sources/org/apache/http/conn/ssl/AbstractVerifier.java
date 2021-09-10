package org.apache.http.conn.ssl;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.InetAddressUtils;

@Immutable
public abstract class AbstractVerifier implements X509HostnameVerifier {
    private static final String[] BAD_COUNTRY_2LDS;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        BAD_COUNTRY_2LDS = strArr;
        Arrays.sort(strArr);
    }

    public static boolean acceptableCountryWildcard(String str) {
        String[] split = str.split("\\.");
        if (split.length == 3 && split[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, split[1]) >= 0) {
            return false;
        }
        return true;
    }

    public static int countDots(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        LinkedList linkedList = new LinkedList();
        StringTokenizer stringTokenizer = new StringTokenizer(x509Certificate.getSubjectX500Principal().toString(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf("CN=");
            if (indexOf >= 0) {
                linkedList.add(nextToken.substring(indexOf + 3));
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        return getSubjectAlts(x509Certificate, null);
    }

    private static String[] getSubjectAlts(X509Certificate x509Certificate, String str) {
        Collection<List<?>> collection;
        int i = isIPAddress(str) ? 7 : 2;
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e) {
            Logger.getLogger(AbstractVerifier.class.getName()).log(Level.FINE, "Error parsing certificate.", (Throwable) e);
            collection = null;
        }
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == i) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    private static boolean isIPAddress(String str) {
        return str != null && (InetAddressUtils.isIPv4Address(str) || InetAddressUtils.isIPv6Address(str));
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) {
        Objects.requireNonNull(str, "host to verify is null");
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException unused) {
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) {
        verify(str, getCNs(x509Certificate), getSubjectAlts(x509Certificate, str));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z) {
        boolean z2;
        LinkedList linkedList = new LinkedList();
        if (!(strArr == null || strArr.length <= 0 || strArr[0] == null)) {
            linkedList.add(strArr[0]);
        }
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (str2 != null) {
                    linkedList.add(str2);
                }
            }
        }
        if (!linkedList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            Iterator it = linkedList.iterator();
            boolean z3 = false;
            while (it.hasNext()) {
                String lowerCase2 = ((String) it.next()).toLowerCase(Locale.ENGLISH);
                sb.append(" <");
                sb.append(lowerCase2);
                sb.append('>');
                if (it.hasNext()) {
                    sb.append(" OR");
                }
                String[] split = lowerCase2.split("\\.");
                boolean z4 = true;
                if (split.length >= 3 && split[0].endsWith("*") && acceptableCountryWildcard(lowerCase2) && !isIPAddress(str)) {
                    if (split[0].length() > 1) {
                        String substring = split[0].substring(0, split.length - 2);
                        z2 = lowerCase.startsWith(substring) && lowerCase.substring(substring.length()).endsWith(lowerCase2.substring(split[0].length()));
                    } else {
                        z2 = lowerCase.endsWith(lowerCase2.substring(1));
                    }
                    if (!z2 || !z) {
                        z3 = z2;
                        continue;
                    } else {
                        if (countDots(lowerCase) != countDots(lowerCase2)) {
                            z4 = false;
                        }
                        z3 = z4;
                        continue;
                    }
                } else {
                    z3 = lowerCase.equals(lowerCase2);
                    continue;
                }
                if (z3) {
                    break;
                }
            }
            if (!z3) {
                throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) sb));
            }
            return;
        }
        throw new SSLException(ic.j("Certificate for <", str, "> doesn't contain CN or DNS subjectAlt"));
    }
}
