.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type1Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UnicodeLittleUnmarked"

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v0, "Unicode unsupported: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    array-length v0, v0

    const/16 v1, 0x20

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    array-length v2, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->prepareResponse(II)V

    const v0, 0x20080235

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 4
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 6
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    array-length v0, v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 7
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 8
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 9
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 10
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 11
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 12
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
