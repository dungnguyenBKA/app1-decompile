.class public abstract Lcom/google/android/gms/internal/ads/zzekl;
.super Lcom/google/android/gms/internal/ads/zzejo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzekl$zzb;,
        Lcom/google/android/gms/internal/ads/zzekl$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzinc:Z


# instance fields
.field zzind:Lcom/google/android/gms/internal/ads/zzekn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzekl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekl;->logger:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoh;->zzblc()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzekl;->zzinc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekl;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/ads/zzelt;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelt;->zzbik()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzelt;)I
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelt;->zzbik()I

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzemo;Lcom/google/android/gms/internal/ads/zzenj;)I
    .locals 2

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzejh;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejh;->zzbga()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzenj;->zzau(Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzejh;->zzfv(I)V

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzag(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgw(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzah(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzai(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzhc(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzaj(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzaj(Lcom/google/android/gms/internal/ads/zzejr;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzak(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzal(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgw(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(IF)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzelt;)I
    .locals 2

    const/16 v0, 0x8

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 10
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzah(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zza(ILcom/google/android/gms/internal/ads/zzelt;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzemo;)I
    .locals 2

    const/16 v0, 0x8

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 6
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzah(II)I

    move-result p0

    add-int/2addr p0, v0

    const/16 v0, 0x18

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzh(Lcom/google/android/gms/internal/ads/zzemo;)I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method static zzb(ILcom/google/android/gms/internal/ads/zzemo;Lcom/google/android/gms/internal/ads/zzenj;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zza(Lcom/google/android/gms/internal/ads/zzemo;Lcom/google/android/gms/internal/ads/zzenj;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic zzbhu()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzekl;->zzinc:Z

    return v0
.end method

.method public static zzbs(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(ID)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzejr;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->size()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzc(ILcom/google/android/gms/internal/ads/zzemo;Lcom/google/android/gms/internal/ads/zzenj;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzejh;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejh;->zzbga()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzenj;->zzau(Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzejh;->zzfv(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzejr;)I
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzah(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzc(ILcom/google/android/gms/internal/ads/zzejr;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzfk(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzfl(J)I

    move-result p0

    return p0
.end method

.method public static zzfl(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static zzfm(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzfp(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzfl(J)I

    move-result p0

    return p0
.end method

.method public static zzfn(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzfo(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method private static zzfp(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzg(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgv(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    return p0
.end method

.method public static zzgw(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzgx(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzgy(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzhc(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    return p0
.end method

.method public static zzgz(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzemo;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzemo;->zzbik()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzha(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzhb(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgw(I)I

    move-result p0

    return p0
.end method

.method private static zzhc(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzhd(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    return p0
.end method

.method public static zzi(IZ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzemo;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzemo;->zzbik()I

    move-result p0

    return p0
.end method

.method public static zzia(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeok;->zzd(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeon; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzj(ILjava/lang/String;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzia(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzl(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfl(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzm(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfl(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzn(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfp(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfl(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzo(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzp(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzv([B)Lcom/google/android/gms/internal/ads/zzekl;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzekl$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzekl$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzw([B)I
    .locals 1

    .line 1
    array-length p0, p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzgx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public abstract writeTag(II)V
.end method

.method public final zza(IF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzaf(II)V

    return-void
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzejr;)V
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzemo;)V
.end method

.method abstract zza(ILcom/google/android/gms/internal/ads/zzemo;Lcom/google/android/gms/internal/ads/zzenj;)V
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeon;)V
    .locals 6

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 14
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzgs(I)V

    const/4 p2, 0x0

    .line 15
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzejo;->zzh([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzekl$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    throw p1

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Lcom/google/android/gms/internal/ads/zzekl$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzekl$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzac(II)V
.end method

.method public abstract zzad(II)V
.end method

.method public final zzae(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzhc(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzad(II)V

    return-void
.end method

.method public abstract zzaf(II)V
.end method

.method public abstract zzai(Lcom/google/android/gms/internal/ads/zzejr;)V
.end method

.method public final zzb(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekl;->zzk(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzejr;)V
.end method

.method public abstract zzbhs()I
.end method

.method public final zzbht()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekl;->zzbhs()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbr(Z)V
    .locals 0

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzd(B)V

    return-void
.end method

.method public final zzc(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfj(J)V

    return-void
.end method

.method public abstract zzd(B)V
.end method

.method public final zzf(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgu(I)V

    return-void
.end method

.method public abstract zzfh(J)V
.end method

.method public final zzfi(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfp(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;->zzfh(J)V

    return-void
.end method

.method public abstract zzfj(J)V
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/ads/zzemo;)V
.end method

.method public abstract zzgr(I)V
.end method

.method public abstract zzgs(I)V
.end method

.method public final zzgt(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzhc(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzgs(I)V

    return-void
.end method

.method public abstract zzgu(I)V
.end method

.method public abstract zzh(IZ)V
.end method

.method public abstract zzhz(Ljava/lang/String;)V
.end method

.method public abstract zzi(IJ)V
.end method

.method public abstract zzi(ILjava/lang/String;)V
.end method

.method public final zzj(IJ)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzekl;->zzfp(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekl;->zzi(IJ)V

    return-void
.end method

.method public abstract zzk(IJ)V
.end method

.method abstract zzk([BII)V
.end method
