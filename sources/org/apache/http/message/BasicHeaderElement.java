package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.LangUtils;

public class BasicHeaderElement implements HeaderElement, Cloneable {
    private final String name;
    private final NameValuePair[] parameters;
    private final String value;

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        if (str != null) {
            this.name = str;
            this.value = str2;
            if (nameValuePairArr != null) {
                this.parameters = nameValuePairArr;
            } else {
                this.parameters = new NameValuePair[0];
            }
        } else {
            throw new IllegalArgumentException("Name may not be null");
        }
    }

    @Override // java.lang.Object
    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderElement)) {
            return false;
        }
        BasicHeaderElement basicHeaderElement = (BasicHeaderElement) obj;
        if (!this.name.equals(basicHeaderElement.name) || !LangUtils.equals(this.value, basicHeaderElement.value) || !LangUtils.equals((Object[]) this.parameters, (Object[]) basicHeaderElement.parameters)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.http.HeaderElement
    public String getName() {
        return this.name;
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameter(int i) {
        return this.parameters[i];
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair getParameterByName(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                NameValuePair[] nameValuePairArr = this.parameters;
                if (i >= nameValuePairArr.length) {
                    return null;
                }
                NameValuePair nameValuePair = nameValuePairArr[i];
                if (nameValuePair.getName().equalsIgnoreCase(str)) {
                    return nameValuePair;
                }
                i++;
            }
        } else {
            throw new IllegalArgumentException("Name may not be null");
        }
    }

    @Override // org.apache.http.HeaderElement
    public int getParameterCount() {
        return this.parameters.length;
    }

    @Override // org.apache.http.HeaderElement
    public NameValuePair[] getParameters() {
        return (NameValuePair[]) this.parameters.clone();
    }

    @Override // org.apache.http.HeaderElement
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.value);
        int i = 0;
        while (true) {
            NameValuePair[] nameValuePairArr = this.parameters;
            if (i >= nameValuePairArr.length) {
                return hashCode;
            }
            hashCode = LangUtils.hashCode(hashCode, nameValuePairArr[i]);
            i++;
        }
    }

    public String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        charArrayBuffer.append(this.name);
        if (this.value != null) {
            charArrayBuffer.append("=");
            charArrayBuffer.append(this.value);
        }
        for (int i = 0; i < this.parameters.length; i++) {
            charArrayBuffer.append("; ");
            charArrayBuffer.append(this.parameters[i]);
        }
        return charArrayBuffer.toString();
    }

    public BasicHeaderElement(String str, String str2) {
        this(str, str2, null);
    }
}
