.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3
    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;)Lorg/apache/http/Header;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "uri"

    .line 1
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "realm"

    .line 2
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nonce"

    .line 3
    invoke-virtual {v0, v5}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "opaque"

    .line 4
    invoke-virtual {v0, v7}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "methodname"

    .line 5
    invoke-virtual {v0, v9}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "algorithm"

    .line 6
    invoke-virtual {v0, v10}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_18

    if-eqz v4, :cond_17

    if-eqz v6, :cond_16

    const-string v12, "qop"

    .line 7
    invoke-virtual {v0, v12}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "auth"

    if-eqz v13, :cond_2

    .line 8
    new-instance v15, Ljava/util/StringTokenizer;

    move-object/from16 v16, v7

    const-string v7, ","

    invoke-direct {v15, v13, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v16, v7

    const/4 v7, 0x0

    :goto_0
    const/4 v15, -0x1

    if-eq v7, v15, :cond_15

    const-string v13, "MD5"

    if-nez v11, :cond_3

    move-object v11, v13

    :cond_3
    const-string v15, "charset"

    .line 12
    invoke-virtual {v0, v15}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_4

    const-string v15, "ISO-8859-1"

    :cond_4
    move-object/from16 v17, v13

    const-string v13, "MD5-sess"

    .line 13
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v17, v11

    :goto_1
    move-object/from16 v18, v14

    .line 14
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14
    :try_end_0
    .catch Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v17

    move-object/from16 v19, v8

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v10

    .line 16
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v12

    .line 17
    iget-object v12, v0, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v1

    move-object/from16 v22, v2

    .line 18
    iget-wide v1, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    const-wide/16 v23, 0x1

    add-long v1, v1, v23

    iput-wide v1, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    goto :goto_2

    :cond_6
    move-object v12, v1

    move-object/from16 v22, v2

    const-wide/16 v1, 0x1

    .line 19
    iput-wide v1, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 21
    iput-object v6, v0, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    .line 22
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    new-instance v2, Ljava/util/Formatter;

    move-object/from16 v17, v12

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v12, 0x1

    move-object/from16 v23, v5

    new-array v5, v12, [Ljava/lang/Object;

    move-object/from16 v24, v13

    .line 24
    iget-wide v12, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v5, v13

    const-string v12, "%08x"

    invoke-virtual {v2, v12, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 27
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    :cond_7
    const/4 v5, 0x0

    .line 28
    iput-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 29
    iput-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move-object/from16 v5, v24

    .line 30
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v12, 0x3a

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 40
    :goto_3
    iget-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    invoke-static {v5, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    if-ne v7, v10, :cond_9

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object/from16 v13, v22

    const/4 v10, 0x1

    if-eq v7, v10, :cond_14

    .line 42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 43
    :goto_4
    iget-object v9, v0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    invoke-static {v9, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v9

    const-string v10, "auth-int"

    if-nez v7, :cond_a

    const/4 v15, 0x0

    .line 44
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    .line 47
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-ne v7, v5, :cond_b

    move-object v5, v10

    goto :goto_5

    :cond_b
    move-object/from16 v5, v18

    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_6
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v5, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v9, 0x80

    invoke-direct {v5, v9}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "Proxy-Authorization"

    .line 53
    invoke-virtual {v5, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string v9, "Authorization"

    .line 54
    invoke-virtual {v5, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_7
    const-string v9, ": Digest "

    .line 55
    invoke-virtual {v5, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 56
    new-instance v9, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "username"

    invoke-direct {v12, v14, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v8, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v4, v23

    invoke-direct {v3, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v4, v17

    invoke-direct {v3, v4, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "response"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "nc"

    if-eqz v7, :cond_e

    .line 62
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    move-object v14, v10

    goto :goto_8

    :cond_d
    move-object/from16 v14, v18

    :goto_8
    move-object/from16 v4, v21

    invoke-direct {v3, v4, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v3, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    const-string v6, "cnonce"

    invoke-direct {v2, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move-object/from16 v4, v21

    .line 65
    :goto_9
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v3, v20

    invoke-direct {v2, v3, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_f

    .line 66
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v3, v16

    move-object/from16 v6, v19

    invoke-direct {v2, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v2, 0x0

    .line 67
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 68
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/message/BasicNameValuePair;

    if-lez v2, :cond_10

    const-string v6, ", "

    .line 69
    invoke-virtual {v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 70
    :cond_10
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v6, 0x1

    .line 71
    :goto_c
    sget-object v7, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v5, v3, v6}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 72
    :cond_13
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v5}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    const-string v2, "qop-int method is not suppported"

    invoke-direct {v1, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :catch_0
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    const-string v2, "Unsuppported digest algorithm: "

    move-object/from16 v11, v17

    invoke-static {v2, v11}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_15
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    const-string v2, "None of the qop methods is supported: "

    invoke-static {v2, v13}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nonce may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Realm may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "URI may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v0, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    const-string v1, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-static {v1, p0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 4
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x2

    .line 5
    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v4, v6, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 6
    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "charset"

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p2}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    const-string v0, "stale"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/AuthSchemeBase;->processChallenge(Lorg/apache/http/Header;)V

    const-string p1, "realm"

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "nonce"

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v0, "missing nonce in challenge"

    invoke-direct {p1, v0}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v0, "missing realm in challenge"

    invoke-direct {p1, v0}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
