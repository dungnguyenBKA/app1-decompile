.class final Lcom/google/android/gms/internal/ads/zzja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzij;


# instance fields
.field private zzaho:I

.field private zzalj:Ljava/nio/ByteBuffer;

.field private zzamg:I

.field private zzamh:[I

.field private zzami:Z

.field private zzamj:[I

.field private zzamk:Ljava/nio/ByteBuffer;

.field private zzaml:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamg:I

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaml:Z

    return-void
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzja;->flush()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamg:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    return-void
.end method

.method public final zzb([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamh:[I

    return-void
.end method

.method public final zzb(III)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamh:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamh:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    return v0

    :cond_0
    const/4 v4, 0x2

    if-ne p3, v4, :cond_6

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamg:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    if-ne v0, p2, :cond_1

    return v3

    .line 6
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamg:I

    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    .line 8
    array-length v0, v2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 10
    aget v2, v2, v0

    if-ge v2, p2, :cond_4

    .line 11
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    if-eq v2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzami:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzii;-><init>(III)V

    throw v0

    :cond_5
    return v1

    .line 13
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzii;-><init>(III)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final zzfe()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaml:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfj()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public final zzfk()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final zzfl()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaml:Z

    return-void
.end method

.method public final zzfm()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzn(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 3
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    array-length v3, v3

    mul-int v2, v2, v3

    shl-int/lit8 v2, v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    if-ge v0, v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamj:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 9
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaho:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzamk:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzalj:Ljava/nio/ByteBuffer;

    return-void
.end method
