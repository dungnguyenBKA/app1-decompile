.class public final Lcom/google/android/gms/internal/ads/zzbt;
.super Lcom/google/android/gms/internal/ads/zzepm;
.source "SourceFile"


# instance fields
.field private zzdd:Ljava/util/Date;

.field private zzde:Ljava/util/Date;

.field private zzdf:J

.field private zzdg:J

.field private zzdh:D

.field private zzdi:F

.field private zzdj:Lcom/google/android/gms/internal/ads/zzepw;

.field private zzdk:J

.field private zzdl:I

.field private zzdm:I

.field private zzdn:I

.field private zzdo:I

.field private zzdp:I

.field private zzdq:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "mvhd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzepm;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepw;->zzjbr:Lcom/google/android/gms/internal/ads/zzepw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MovieHeaderBox["

    const-string v1, "creationTime="

    .line 1
    invoke-static {v0, v1}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modificationTime="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timescale="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rate="

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "volume="

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "matrix="

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nextTrackId="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdk:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzepm;->zzr(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzepm;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzi(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 13
    aget-byte v3, v0, v2

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 14
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzg(Ljava/nio/ByteBuffer;)I

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepw;->zzs(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzepw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdl:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdm:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdn:I

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdo:I

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdp:I

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdq:I

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdk:J

    return-void
.end method

.method public final zzr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    return-wide v0
.end method
