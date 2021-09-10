.class public abstract Lcom/google/android/gms/internal/ads/zzelb;
.super Lcom/google/android/gms/internal/ads/zzejh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzelb$zza;,
        Lcom/google/android/gms/internal/ads/zzelb$zzf;,
        Lcom/google/android/gms/internal/ads/zzelb$zzc;,
        Lcom/google/android/gms/internal/ads/zzelb$zzd;,
        Lcom/google/android/gms/internal/ads/zzelb$zzb;,
        Lcom/google/android/gms/internal/ads/zzelb$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzejh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zziqm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

.field private zziql:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqm:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbkz()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeoc;-><init>(Lcom/google/android/gms/internal/ads/zzemo;)V

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzelo;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzelo;->zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzejr;",
            ")TT;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    .line 50
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzejr;",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TT;"
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzekc;",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TT;"
        }
    .end annotation

    .line 21
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqv:I

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 24
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekj;->zza(Lcom/google/android/gms/internal/ads/zzekc;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzenj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzend;Lcom/google/android/gms/internal/ads/zzeko;)V

    .line 26
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzenj;->zzak(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzelo;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelo;

    throw p0

    .line 29
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzelo;

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelo;

    throw p0

    .line 32
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelo;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzelo;->zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelb;[B)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .line 53
    array-length v0, p1

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v1

    const/4 v2, 0x0

    .line 55
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;[BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzelb;[BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TT;"
        }
    .end annotation

    .line 33
    sget p2, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqv:I

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 36
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object p2

    const/4 v3, 0x0

    .line 37
    new-instance v5, Lcom/google/android/gms/internal/ads/zzejm;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzejm;-><init>(Lcom/google/android/gms/internal/ads/zzeko;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzenj;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzejm;)V

    .line 38
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzenj;->zzak(Ljava/lang/Object;)V

    .line 39
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzejh;->zzilm:I

    if-nez p1, :cond_0

    return-object p0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzelo;->zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzelo;

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelo;

    throw p0

    .line 44
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelo;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzelo;->zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelb;[BLcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TT;"
        }
    .end annotation

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;[BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelh;)Lcom/google/android/gms/internal/ads/zzelh;
    .locals 1

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 18
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzelh;->zzhg(I)Lcom/google/android/gms/internal/ads/zzelh;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzell<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzell<",
            "TE;>;"
        }
    .end annotation

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 20
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzell;->zzfy(I)Lcom/google/android/gms/internal/ads/zzell;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzene;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzene;-><init>(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 6
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 7
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqm:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/ads/zzelb;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 11
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqs:I

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzenj;->zzaw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 15
    sget p1, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqt:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 16
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzejr;",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TT;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->zzbgk()Lcom/google/android/gms/internal/ads/zzekc;

    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 6
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzekc;->zzgd(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzelo;->zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 8
    throw p0
.end method

.method protected static zzbil()Lcom/google/android/gms/internal/ads/zzelh;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzele;->zzbiz()Lcom/google/android/gms/internal/ads/zzele;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbim()Lcom/google/android/gms/internal/ads/zzelm;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemc;->zzbjr()Lcom/google/android/gms/internal/ads/zzemc;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbin()Lcom/google/android/gms/internal/ads/zzell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzell<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenb;->zzbke()Lcom/google/android/gms/internal/ads/zzenb;

    move-result-object v0

    return-object v0
.end method

.method static zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzelb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqm:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqm:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeoh;->zzj(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    .line 6
    sget v1, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqx:I

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzelb;->zziqm:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzenj;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejh;->zzilm:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzenj;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejh;->zzilm:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzemp;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzekl;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekn;->zza(Lcom/google/android/gms/internal/ads/zzekl;)Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzenj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoy;)V

    return-void
.end method

.method final zzbga()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    return v0
.end method

.method protected final zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/zzelb<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqw:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqw:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final zzbik()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenc;->zzbkf()Lcom/google/android/gms/internal/ads/zzenc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzenj;->zzau(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    return v0
.end method

.method public final synthetic zzbio()Lcom/google/android/gms/internal/ads/zzemn;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqw:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzelb;)Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final synthetic zzbip()Lcom/google/android/gms/internal/ads/zzemn;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqw:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    return-object v0
.end method

.method public final synthetic zzbiq()Lcom/google/android/gms/internal/ads/zzemo;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzelb$zze;->zziqx:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    return-object v0
.end method

.method final zzfv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziql:I

    return-void
.end method
