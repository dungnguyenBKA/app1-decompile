.class public final Lorg/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/http/conn/scheme/SchemeSocketFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    const v0, 0xffff

    if-gt p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    .line 4
    iput p2, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    .line 5
    instance-of p1, p3, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    iput-boolean p1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Port is invalid: "

    invoke-static {p3, p2}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-lez p3, :cond_1

    const v0, 0xffff

    if-gt p3, v0, :cond_1

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 11
    instance-of p1, p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;

    check-cast p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {p1, p2}, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {p1, p2}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    .line 16
    :goto_0
    iput p3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Port is invalid: "

    invoke-static {p2, p3}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/http/conn/scheme/Scheme;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/apache/http/conn/scheme/Scheme;

    .line 3
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    iget v3, p1, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    iget-boolean p1, p1, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getDefaultPort()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    instance-of v1, v0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->getFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lorg/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V

    return-object v1

    .line 5
    :cond_1
    new-instance v1, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .locals 0

    if-gtz p1, :cond_0

    .line 1
    iget p1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    :cond_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v0
.end method
