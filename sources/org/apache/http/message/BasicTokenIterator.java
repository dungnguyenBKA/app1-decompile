package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;

public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headerIterator) {
        if (headerIterator != null) {
            this.headerIt = headerIterator;
            this.searchPos = findNext(-1);
            return;
        }
        throw new IllegalArgumentException("Header iterator must not be null.");
    }

    /* access modifiers changed from: protected */
    public String createToken(String str, int i, int i2) {
        return str.substring(i, i2);
    }

    /* access modifiers changed from: protected */
    public int findNext(int i) {
        int i2;
        if (i >= 0) {
            i2 = findTokenSeparator(i);
        } else if (!this.headerIt.hasNext()) {
            return -1;
        } else {
            this.currentHeader = this.headerIt.nextHeader().getValue();
            i2 = 0;
        }
        int findTokenStart = findTokenStart(i2);
        if (findTokenStart < 0) {
            this.currentToken = null;
            return -1;
        }
        int findTokenEnd = findTokenEnd(findTokenStart);
        this.currentToken = createToken(this.currentHeader, findTokenStart, findTokenEnd);
        return findTokenEnd;
    }

    /* access modifiers changed from: protected */
    public int findTokenEnd(int i) {
        if (i >= 0) {
            int length = this.currentHeader.length();
            do {
                i++;
                if (i >= length) {
                    break;
                }
            } while (isTokenChar(this.currentHeader.charAt(i)));
            return i;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Token start position must not be negative: ");
        stringBuffer.append(i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    /* access modifiers changed from: protected */
    public int findTokenSeparator(int i) {
        if (i >= 0) {
            boolean z = false;
            int length = this.currentHeader.length();
            while (!z && i < length) {
                char charAt = this.currentHeader.charAt(i);
                if (isTokenSeparator(charAt)) {
                    z = true;
                } else if (isWhitespace(charAt)) {
                    i++;
                } else if (isTokenChar(charAt)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Tokens without separator (pos ");
                    stringBuffer.append(i);
                    stringBuffer.append("): ");
                    stringBuffer.append(this.currentHeader);
                    throw new ParseException(stringBuffer.toString());
                } else {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Invalid character after token (pos ");
                    stringBuffer2.append(i);
                    stringBuffer2.append("): ");
                    stringBuffer2.append(this.currentHeader);
                    throw new ParseException(stringBuffer2.toString());
                }
            }
            return i;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("Search position must not be negative: ");
        stringBuffer3.append(i);
        throw new IllegalArgumentException(stringBuffer3.toString());
    }

    /* access modifiers changed from: protected */
    public int findTokenStart(int i) {
        if (i >= 0) {
            boolean z = false;
            while (!z) {
                String str = this.currentHeader;
                if (str == null) {
                    break;
                }
                int length = str.length();
                while (!z && i < length) {
                    char charAt = this.currentHeader.charAt(i);
                    if (isTokenSeparator(charAt) || isWhitespace(charAt)) {
                        i++;
                    } else if (isTokenChar(this.currentHeader.charAt(i))) {
                        z = true;
                    } else {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Invalid character before token (pos ");
                        stringBuffer.append(i);
                        stringBuffer.append("): ");
                        stringBuffer.append(this.currentHeader);
                        throw new ParseException(stringBuffer.toString());
                    }
                }
                if (!z) {
                    if (this.headerIt.hasNext()) {
                        this.currentHeader = this.headerIt.nextHeader().getValue();
                        i = 0;
                    } else {
                        this.currentHeader = null;
                    }
                }
            }
            if (z) {
                return i;
            }
            return -1;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Search position must not be negative: ");
        stringBuffer2.append(i);
        throw new IllegalArgumentException(stringBuffer2.toString());
    }

    @Override // org.apache.http.TokenIterator
    public boolean hasNext() {
        return this.currentToken != null;
    }

    /* access modifiers changed from: protected */
    public boolean isHttpSeparator(char c) {
        return HTTP_SEPARATORS.indexOf(c) >= 0;
    }

    /* access modifiers changed from: protected */
    public boolean isTokenChar(char c) {
        if (Character.isLetterOrDigit(c)) {
            return true;
        }
        if (!Character.isISOControl(c) && !isHttpSeparator(c)) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean isTokenSeparator(char c) {
        return c == ',';
    }

    /* access modifiers changed from: protected */
    public boolean isWhitespace(char c) {
        return c == '\t' || Character.isSpaceChar(c);
    }

    @Override // java.util.Iterator
    public final Object next() {
        return nextToken();
    }

    @Override // org.apache.http.TokenIterator
    public String nextToken() {
        String str = this.currentToken;
        if (str != null) {
            this.searchPos = findNext(this.searchPos);
            return str;
        }
        throw new NoSuchElementException("Iteration already finished.");
    }

    public final void remove() {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
