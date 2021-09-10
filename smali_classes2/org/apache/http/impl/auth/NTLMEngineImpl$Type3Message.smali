.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 7

    const-string v0, "UnicodeLittleUnmarked"

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 2
    iput p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    .line 3
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p8, :cond_0

    if-eqz p7, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$600()[B

    move-result-object p6

    move-object v1, p7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p8

    .line 6
    invoke-static/range {v1 .. v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object p8

    iput-object p8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 7
    invoke-static {p7, p3, p4, p5, p6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p6

    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    goto :goto_0

    :cond_0
    const/high16 p7, 0x80000

    and-int/2addr p6, p7

    if-eqz p6, :cond_1

    .line 8
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$700()[B

    move-result-object p6

    .line 9
    invoke-static {p4, p5, p6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B

    move-result-object p7

    iput-object p7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 10
    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p6

    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 12
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object p6

    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
    :try_end_0
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p6, 0x0

    new-array p6, p6, [B

    .line 13
    iput-object p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 14
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object p4

    iput-object p4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 18
    new-instance p2, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p3, "Unicode not supported: "

    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v0, v0

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v1, v1

    .line 3
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    array-length v2, v2

    .line 4
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    array-length v3, v3

    .line 5
    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v4, v4

    add-int/lit8 v5, v1, 0x40

    add-int v6, v5, v0

    add-int v7, v6, v2

    add-int v8, v7, v4

    add-int v9, v8, v3

    const/4 v10, 0x0

    add-int/2addr v9, v10

    const/4 v11, 0x3

    .line 6
    invoke-virtual {p0, v9, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->prepareResponse(II)V

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    const/16 v1, 0x40

    .line 9
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 12
    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 13
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 14
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 15
    invoke-virtual {p0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 16
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 17
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 18
    invoke-virtual {p0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 19
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 20
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 21
    invoke-virtual {p0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 22
    invoke-virtual {p0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 23
    invoke-virtual {p0, v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 24
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    const v2, 0x20000205

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x20

    or-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const v2, 0x8000

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 25
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 26
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 27
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 28
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 29
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 30
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
