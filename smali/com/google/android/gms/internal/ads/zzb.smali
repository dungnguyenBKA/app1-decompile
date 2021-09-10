.class public final Lcom/google/android/gms/internal/ads/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static zza(I)I
    .locals 4

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202

    if-eq p0, v0, :cond_1

    const/16 v0, 0x301

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature algorithm: 0x"

    int-to-long v2, p0

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_2
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 244
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 247
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 249
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v2, 0x65

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    const-string v4, ", remaining: "

    invoke-static {v2, v3, v0, v4, p0}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 252
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v1, 0x5d

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-static {v1, v2, p0}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 234
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 236
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 238
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    .line 240
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 241
    throw p1

    .line 242
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 243
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x11

    const-string v1, "size: "

    invoke-static {v0, v1, p1}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 p1, 0x8

    if-lt p2, p1, :cond_1

    .line 215
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 221
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 227
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    throw p1

    .line 231
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x29

    const-string v1, "end > capacity: "

    const-string v2, " > "

    invoke-static {p1, v1, p2, v2, v0}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "end < start: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(I[BI)V
    .locals 1

    int-to-byte p2, p0

    const/4 v0, 0x1

    .line 253
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x8

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 254
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x10

    int-to-byte p2, p2

    const/4 v0, 0x3

    .line 255
    aput-byte p2, p1, v0

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 p2, 0x4

    .line 256
    aput-byte p0, p1, p2

    return-void
.end method

.method private static zza(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .line 95
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    const/16 v9, 0x8

    const/16 v10, 0x301

    const/16 v11, 0x202

    const/16 v12, 0x201

    const/4 v13, 0x1

    if-eqz v8, :cond_b

    add-int/lit8 v6, v6, 0x1

    .line 100
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 101
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-lt v14, v9, :cond_a

    .line 102
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v9, v12, :cond_1

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_1

    packed-switch v9, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :pswitch_0
    const/4 v10, 0x1

    :goto_1
    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    if-eq v5, v4, :cond_9

    .line 104
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v10

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "Unknown digestAlgorithm2: "

    const/16 v14, 0x25

    const/4 v15, 0x2

    if-eq v10, v13, :cond_5

    if-ne v10, v15, :cond_4

    if-eq v11, v13, :cond_8

    if-ne v11, v15, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq v11, v13, :cond_7

    if-ne v11, v15, :cond_6

    const/4 v13, -0x1

    goto :goto_3

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    const/4 v13, 0x0

    :cond_8
    :goto_3
    if-lez v13, :cond_0

    .line 109
    :cond_9
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    move v5, v9

    goto/16 :goto_0

    .line 110
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 111
    :goto_4
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x2d

    const-string v3, "Failed to parse signature record #"

    invoke-static {v2, v3, v6}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    if-ne v5, v4, :cond_d

    if-nez v6, :cond_c

    .line 112
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v1, "Unknown signature algorithm: 0x"

    if-eq v5, v12, :cond_10

    if-eq v5, v11, :cond_10

    if-eq v5, v10, :cond_f

    packed-switch v5, :pswitch_data_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v5

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :pswitch_1
    const-string v4, "RSA"

    goto :goto_6

    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v4, "DSA"

    goto :goto_6

    :cond_10
    const-string v4, "EC"

    :goto_6
    if-eq v5, v12, :cond_14

    if-eq v5, v11, :cond_13

    if-eq v5, v10, :cond_12

    packed-switch v5, :pswitch_data_2

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v5

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :pswitch_2
    const-string v1, "SHA512withRSA"

    const/4 v6, 0x0

    .line 118
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_9

    :pswitch_3
    const/4 v6, 0x0

    const-string v1, "SHA256withRSA"

    .line 119
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_9

    .line 120
    :pswitch_4
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v17, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v18, 0x40

    const/16 v19, 0x1

    const-string v15, "SHA-512"

    const-string v16, "MGF1"

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v6, "SHA512withRSA/PSS"

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_7

    .line 121
    :pswitch_5
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v17, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v18, 0x20

    const/16 v19, 0x1

    const-string v15, "SHA-256"

    const-string v16, "MGF1"

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v6, "SHA256withRSA/PSS"

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    .line 122
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v1, "SHA256withDSA"

    const/4 v6, 0x0

    .line 123
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    const-string v1, "SHA512withECDSA"

    .line 124
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    const-string v1, "SHA256withECDSA"

    .line 125
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 126
    :goto_9
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 127
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 128
    :try_start_2
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 129
    invoke-virtual {v4, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 130
    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 131
    invoke-virtual {v10, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_15

    .line 132
    invoke-virtual {v10, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 133
    :cond_15
    invoke-virtual {v10, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {v10, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v1, :cond_1f

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 138
    :cond_16
    :goto_a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_18

    add-int/2addr v7, v13

    .line 139
    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v9, :cond_17

    .line 141
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 142
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v10, v5, :cond_16

    .line 143
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    goto :goto_a

    .line 144
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    .line 145
    :goto_b
    new-instance v1, Ljava/io/IOException;

    const/16 v2, 0x2a

    const-string v3, "Failed to parse digest record #"

    invoke-static {v2, v3, v7}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_18
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 147
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)I

    move-result v1

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_1a

    .line 149
    invoke-static {v3, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_c

    .line 150
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    .line 151
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1a
    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 154
    :goto_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/2addr v3, v13

    .line 155
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzb;->zzb(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 156
    :try_start_4
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v6, p2

    .line 157
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 158
    new-instance v7, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzg;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 159
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_4
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x29

    const-string v4, "Failed to decode certificate #"

    invoke-static {v2, v4, v3}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 163
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 164
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 166
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    .line 170
    :goto_e
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x1b

    invoke-static {v8, v2}, Lic;->m(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Failed to verify "

    const-string v4, " signature"

    invoke-static {v2, v3, v8, v4}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :goto_f
    throw v1

    :goto_10
    goto :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static zza([I[Lcom/google/android/gms/internal/ads/zzc;)[[B
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, v3

    :goto_0
    const-wide/32 v9, 0x100000

    if-ge v6, v2, :cond_0

    aget-object v11, v1, v6

    .line 172
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzc;->size()J

    move-result-wide v11

    add-long/2addr v11, v9

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    .line 173
    div-long/2addr v11, v9

    add-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v11, 0x1fffff

    cmp-long v2, v7, v11

    if-gez v2, :cond_9

    long-to-int v2, v7

    .line 174
    array-length v6, v0

    new-array v6, v6, [[B

    const/4 v7, 0x0

    .line 175
    :goto_1
    array-length v8, v0

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-ge v7, v8, :cond_1

    .line 176
    aget v8, v0, v7

    .line 177
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzb;->zzc(I)I

    move-result v8

    mul-int v8, v8, v2

    add-int/2addr v8, v11

    .line 178
    new-array v8, v8, [B

    const/16 v11, 0x5a

    .line 179
    aput-byte v11, v8, v5

    .line 180
    invoke-static {v2, v8, v12}, Lcom/google/android/gms/internal/ads/zzb;->zza(I[BI)V

    .line 181
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v11, [B

    const/16 v7, -0x5b

    aput-byte v7, v2, v5

    .line 182
    array-length v7, v0

    new-array v8, v7, [Ljava/security/MessageDigest;

    const/4 v11, 0x0

    .line 183
    :goto_2
    array-length v12, v0

    const-string v13, " digest not supported"

    if-ge v11, v12, :cond_2

    .line 184
    aget v12, v0, v11

    .line 185
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    :try_start_0
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    aput-object v14, v8, v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_2
    array-length v11, v1

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v12, v11, :cond_7

    aget-object v15, v1, v12

    .line 189
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzc;->size()J

    move-result-wide v16

    move/from16 v18, v12

    move v1, v14

    move-wide/from16 v22, v16

    move/from16 v17, v11

    move-object/from16 v16, v13

    move-wide/from16 v11, v22

    move-wide v13, v9

    move-wide v9, v3

    :goto_4
    cmp-long v19, v11, v3

    if-lez v19, :cond_6

    .line 190
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x1

    .line 191
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(I[BI)V

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v7, :cond_3

    .line 192
    aget-object v13, v8, v3

    invoke-virtual {v13, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 193
    :cond_3
    :try_start_1
    invoke-interface {v15, v8, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzc;->zza([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    .line 194
    :goto_6
    array-length v13, v0

    if-ge v3, v13, :cond_5

    .line 195
    aget v13, v0, v3

    .line 196
    aget-object v14, v6, v3

    .line 197
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzb;->zzc(I)I

    move-result v13

    move-object/from16 v19, v2

    .line 198
    aget-object v2, v8, v3

    mul-int v20, v1, v13

    move/from16 v21, v7

    add-int/lit8 v7, v20, 0x5

    .line 199
    invoke-virtual {v2, v14, v7, v13}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v7

    if-ne v7, v13, :cond_4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    move/from16 v7, v21

    goto :goto_6

    .line 200
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 201
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lic;->m(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected output size of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " digest: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v19, v2

    move/from16 v21, v7

    int-to-long v2, v4

    add-long/2addr v9, v2

    sub-long/2addr v11, v2

    add-int/lit8 v1, v1, 0x1

    const-wide/32 v13, 0x100000

    const-wide/16 v3, 0x0

    move-object/from16 v2, v19

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 202
    new-instance v0, Ljava/security/DigestException;

    const/16 v3, 0x3b

    const-string v4, "Failed to digest chunk #"

    const-string v6, " of section #"

    invoke-static {v3, v4, v1, v6, v5}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move-object/from16 v19, v2

    move/from16 v21, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v18, 0x1

    const-wide/16 v3, 0x0

    const-wide/32 v9, 0x100000

    move v14, v1

    move-object/from16 v13, v16

    move/from16 v11, v17

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v16, v13

    .line 203
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 204
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 205
    aget v3, v0, v2

    .line 206
    aget-object v4, v6, v2

    .line 207
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    :try_start_2
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 210
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    return-object v1

    .line 212
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many chunks: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 19

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzi;->zza(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v2, 0x14

    sub-long v2, v9, v2

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_0

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v3, 0x504b0607

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_e

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzi;->zzc(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    cmp-long v2, v7, v9

    if-gez v2, :cond_d

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzi;->zzd(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v2, v7

    cmp-long v12, v2, v9

    if-nez v12, :cond_c

    const-wide/16 v2, 0x20

    cmp-long v12, v7, v2

    if-ltz v12, :cond_b

    const/16 v2, 0x18

    .line 9
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 10
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    int-to-long v13, v13

    sub-long v13, v7, v13

    invoke-virtual {v1, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    invoke-virtual {v1, v13, v14, v15}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v13, 0x8

    .line 13
    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v16, 0x20676953204b5041L

    cmp-long v18, v14, v16

    if-nez v18, :cond_a

    const/16 v14, 0x10

    .line 14
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    const-wide v16, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v18, v14, v16

    if-nez v18, :cond_a

    .line 15
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    .line 16
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v2, v3

    cmp-long v16, v14, v2

    if-ltz v16, :cond_9

    const-wide/32 v2, 0x7ffffff7

    cmp-long v16, v14, v2

    if-gtz v16, :cond_9

    const-wide/16 v2, 0x8

    add-long/2addr v2, v14

    long-to-int v3, v2

    move-wide/from16 v16, v14

    int-to-long v13, v3

    sub-long v13, v7, v13

    cmp-long v15, v13, v4

    if-ltz v15, :cond_8

    .line 17
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v1, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    invoke-virtual {v1, v4, v5, v15}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 21
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    cmp-long v15, v4, v16

    if-nez v15, :cond_7

    .line 22
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 23
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 24
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 25
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v3, v12, :cond_6

    .line 26
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v5, 0x18

    sub-int/2addr v3, v5

    const/16 v2, 0x8

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 27
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/2addr v6, v0

    .line 28
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v2, 0x8

    if-lt v4, v2, :cond_4

    .line 29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v15, 0x4

    const-string v12, " size out of range: "

    const-string v0, "APK Signing Block entry #"

    cmp-long v17, v4, v15

    if-ltz v17, :cond_3

    const-wide/32 v15, 0x7fffffff

    cmp-long v17, v4, v15

    if-gtz v17, :cond_3

    long-to-int v5, v4

    .line 30
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    .line 31
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    if-gt v5, v15, :cond_2

    .line 32
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v12, 0x7109871a

    if-ne v0, v12, :cond_1

    add-int/lit8 v5, v5, -0x4

    .line 33
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zze;

    const/4 v12, 0x0

    move-object v3, v0

    move-wide v5, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zze;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zza;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zze;)[[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 38
    :cond_1
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    goto :goto_1

    .line 39
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzh;

    .line 40
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x5b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v3, 0x4c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block offset out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-wide v4, v14

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK Signing Block size out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/16 v2, 0x7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const-string v2, "ZIP64 APK not supported"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    .line 54
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/16 v4, 0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not an APK file: ZIP End of Central Directory record not found in file with "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 56
    :catch_1
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static zza(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zze;)[[Ljava/security/cert/X509Certificate;
    .locals 18

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "X.509"

    .line 59
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5

    .line 60
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zza(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 61
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 62
    :try_start_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 63
    invoke-static {v6, v0, v2}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 64
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 65
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse/verify signer #"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " block"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    if-lez v5, :cond_6

    .line 66
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzb(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v2

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzc(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v11

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zzd(Lcom/google/android/gms/internal/ads/zze;)J

    move-result-wide v13

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zze;->zze(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 71
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 72
    new-instance v16, Lcom/google/android/gms/internal/ads/zzf;

    const-wide/16 v7, 0x0

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-wide v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzf;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 73
    new-instance v17, Lcom/google/android/gms/internal/ads/zzf;

    sub-long v9, v13, v11

    move-object/from16 v5, v17

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzf;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 74
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 75
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzi;->zza(Ljava/nio/ByteBuffer;J)V

    .line 77
    new-instance v2, Lcom/google/android/gms/internal/ads/zzd;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzd;-><init>(Ljava/nio/ByteBuffer;)V

    .line 78
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v5, v3, [I

    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 80
    aput v8, v5, v7

    add-int/2addr v7, v9

    goto :goto_2

    :cond_1
    const/4 v6, 0x3

    :try_start_3
    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzc;

    aput-object v16, v6, v4

    aput-object v17, v6, v9

    const/4 v7, 0x2

    aput-object v2, v6, v7

    .line 81
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzb;->zza([I[Lcom/google/android/gms/internal/ads/zzc;)[[B

    move-result-object v2
    :try_end_3
    .catch Ljava/security/DigestException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    if-ge v4, v3, :cond_3

    .line 82
    aget v6, v5, v4

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 84
    aget-object v8, v2, v4

    .line 85
    invoke-static {v7, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 87
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzb;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " digest of contents did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/X509Certificate;

    return-object v0

    :catch_3
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to compute digest(s) of contents"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No content digests found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signers found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to read list of signers"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private static zzb(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "SHA-512"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    const-string v2, "Unknown content digest algorthm: "

    invoke-static {v1, v2, p0}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "SHA-256"

    return-object p0
.end method

.method private static zzb(Ljava/nio/ByteBuffer;)[B
    .locals 5

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 4
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v2, 0x5a

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    const-string v4, ", available: "

    invoke-static {v2, v3, v0, v4, p0}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    const-string v2, "Unknown content digest algorthm: "

    invoke-static {v1, v2, p0}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x20

    return p0
.end method
