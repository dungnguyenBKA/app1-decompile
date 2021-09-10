.class public final Lcom/google/android/gms/internal/ads/zzjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzij;


# instance fields
.field private zzaho:I

.field private zzaib:F

.field private zzaic:F

.field private zzalj:Ljava/nio/ByteBuffer;

.field private zzamg:I

.field private zzamk:Ljava/nio/ByteBuffer;

.field private zzaml:Z

.field private zzans:Lcom/google/android/gms/internal/ads/zzjg;

.field private zzant:Ljava/nio/ShortBuffer;

.field private zzanu:J

.field private zzanv:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaib:F

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaic:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamg:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzant:Ljava/nio/ShortBuffer;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamg:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaib:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjg;->setSpeed(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaic:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjg;->zza(F)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanu:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanv:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaml:Z

    return-void
.end method

.method public final isActive()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaib:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaic:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzant:Ljava/nio/ShortBuffer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamg:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanu:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanv:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaml:Z

    return-void
.end method

.method public final zzb(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpt;->zza(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaib:F

    return p1
.end method

.method public final zzb(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 2
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamg:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamg:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzii;-><init>(III)V

    throw v0
.end method

.method public final zzc(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpt;->zza(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaic:F

    return p1
.end method

.method public final zzfe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaml:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjg;->zzgf()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    return v0
.end method

.method public final zzfk()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final zzfl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjg;->zzfl()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaml:Z

    return-void
.end method

.method public final zzfm()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzgk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanu:J

    return-wide v0
.end method

.method public final zzgl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanv:J

    return-wide v0
.end method

.method public final zzn(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanu:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanu:J

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzjg;->zza(Ljava/nio/ShortBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjg;->zzgf()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzaho:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzant:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzant:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzans:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzant:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjg;->zzb(Ljava/nio/ShortBuffer;)V

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanv:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzanv:J

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzamk:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzalj:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method
