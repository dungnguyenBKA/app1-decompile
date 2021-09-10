.class public abstract Lcom/google/android/gms/internal/ads/zzejg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzejh<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzejg<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzemn;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejg;->zzbfy()Lcom/google/android/gms/internal/ads/zzejg;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzejg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzekc;",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public zza([BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzeko;",
            ")TBuilderType;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lcom/google/android/gms/internal/ads/zzekc;->zzb([BIIZ)Lcom/google/android/gms/internal/ads/zzekc;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzejg;->zza(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzekc;->zzgd(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "Reading "

    const-string v2, " from a "

    invoke-static {v1, v0, p4, v2, p3}, Lic;->p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " threw an IOException (should never happen)."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7
    throw p1
.end method

.method public abstract zzbfy()Lcom/google/android/gms/internal/ads/zzejg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemn;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzemq;->zzbiq()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzejh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzejg;->zza(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzejg;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
