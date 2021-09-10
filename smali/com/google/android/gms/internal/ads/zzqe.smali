.class public final Lcom/google/android/gms/internal/ads/zzqe;
.super Lcom/google/android/gms/internal/ads/zzlv;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final zzbld:[I


# instance fields
.field private final context:Landroid/content/Context;

.field private zzaif:I

.field private zzalq:Z

.field private final zzble:Lcom/google/android/gms/internal/ads/zzqi;

.field private final zzblf:Lcom/google/android/gms/internal/ads/zzqj;

.field private final zzblg:J

.field private final zzblh:I

.field private final zzbli:Z

.field private final zzblj:[J

.field private zzblk:[Lcom/google/android/gms/internal/ads/zzht;

.field private zzbll:Lcom/google/android/gms/internal/ads/zzqg;

.field private zzblm:Landroid/view/Surface;

.field private zzbln:Landroid/view/Surface;

.field private zzblo:I

.field private zzblp:Z

.field private zzblq:J

.field private zzblr:J

.field private zzbls:I

.field private zzblt:I

.field private zzblu:I

.field private zzblv:F

.field private zzblw:I

.field private zzblx:I

.field private zzbly:I

.field private zzblz:F

.field private zzbma:I

.field private zzbmb:I

.field private zzbmc:I

.field private zzbmd:F

.field zzbme:Lcom/google/android/gms/internal/ads/zzqf;

.field private zzbmf:J

.field private zzbmg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbld:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlx;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqk;I)V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlx;JLcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqk;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlx;JLcom/google/android/gms/internal/ads/zzjt;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqk;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzlx;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzjt<",
            "Lcom/google/android/gms/internal/ads/zzjv;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzqk;",
            "I)V"
        }
    .end annotation

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 2
    invoke-direct {p0, p3, p2, p4, p5}, Lcom/google/android/gms/internal/ads/zzlv;-><init>(ILcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzjt;Z)V

    const-wide/16 p2, 0x0

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblg:J

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblh:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqe;->context:Landroid/content/Context;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzqi;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzble:Lcom/google/android/gms/internal/ads/zzqi;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    .line 8
    sget p1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/4 p3, 0x1

    const/16 p4, 0x16

    if-gt p1, p4, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpt;->DEVICE:Ljava/lang/String;

    const-string p4, "foster"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpt;->MANUFACTURER:Ljava/lang/String;

    const-string p4, "NVIDIA"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p5, 0x1

    .line 9
    :cond_0
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbli:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblj:[J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    .line 12
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    .line 14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblv:F

    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblo:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjl()V

    return-void
.end method

.method private static zza(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    .line 157
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzpt;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/16 p0, 0x10

    .line 158
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzpt;->zzf(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzpt;->zzf(II)I

    move-result p0

    mul-int p0, p0, p1

    shl-int/2addr p0, v3

    shl-int/lit8 p1, p0, 0x4

    goto :goto_2

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_3

    :pswitch_2
    mul-int p1, p1, p2

    :goto_2
    const/4 v3, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 159
    div-int/2addr p1, v3

    return p1

    :cond_8
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final zza(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 145
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzpu;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 146
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpu;->endSection()V

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:I

    return-void
.end method

.method private final zza(Landroid/media/MediaCodec;IJJ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjm()V

    const-string p3, "releaseOutputBuffer"

    .line 150
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzpu;->beginSection(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 152
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpu;->endSection()V

    .line 153
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblt:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjk()V

    return-void
.end method

.method private static zza(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 2

    .line 160
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzj(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzqe;->zzj(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final zzb(Landroid/media/MediaCodec;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjm()V

    const-string p3, "releaseOutputBuffer"

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzpu;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpu;->endSection()V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblt:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjk()V

    return-void
.end method

.method private static zzem(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzahf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzht;->height:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzahj:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private final zzji()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    return-void
.end method

.method private final zzjj()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhd()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqe;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzqd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbme:Lcom/google/android/gms/internal/ads/zzqf;

    :cond_0
    return-void
.end method

.method private final zzjl()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbma:I

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmb:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmd:F

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmc:I

    return-void
.end method

.method private final zzjm()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbma:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbly:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmd:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbly:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzqj;->zza(IIIF)V

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbma:I

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmb:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbly:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmc:I

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmd:F

    :cond_1
    return-void
.end method

.method private final zzjn()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbma:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmb:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbly:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzqj;->zza(IIIF)V

    :cond_1
    return-void
.end method

.method private final zzjo()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblr:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzqj;->zzf(IJ)V

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblr:J

    :cond_0
    return-void
.end method

.method private final zzn(Z)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->context:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final isReady()Z
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhd()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    return v1

    .line 4
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 6
    :cond_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    return v0
.end method

.method protected final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    .line 8
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblv:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    .line 9
    sget v1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblu:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_5

    .line 11
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    goto :goto_3

    .line 15
    :cond_4
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblu:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbly:I

    .line 16
    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblo:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected final onStarted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->onStarted()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblr:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    return-void
.end method

.method protected final onStopped()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjo()V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzbd(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzjo;->zzaoj:I

    if-ge v3, v5, :cond_2

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzjo;->zzac(I)Lcom/google/android/gms/internal/ads/zzjo$zza;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzjo$zza;->zzaon:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 6
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzlx;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 7
    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahb:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzlw;->zzaz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-lez v3, :cond_7

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-lez v4, :cond_7

    .line 9
    sget v1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_4

    .line 10
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahi:F

    float-to-double v0, p2

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzlw;->zza(IID)Z

    move-result v1

    goto :goto_2

    :cond_4
    mul-int v3, v3, v4

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzlz;->zzhk()I

    move-result p2

    if-gt v3, p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzpt;->zzbkn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    :cond_6
    move v1, v0

    .line 13
    :cond_7
    :goto_2
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcr:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x8

    goto :goto_3

    :cond_8
    const/4 p2, 0x4

    .line 14
    :goto_3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzalq:Z

    if-eqz p1, :cond_9

    const/16 v2, 0x10

    :cond_9
    if-eqz v1, :cond_a

    const/4 p1, 0x3

    goto :goto_4

    :cond_a
    const/4 p1, 0x2

    :goto_4
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 31
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhe()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzqe;->zzn(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    if-eq p1, p2, :cond_7

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->getState()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhd()Landroid/media/MediaCodec;

    move-result-object v0

    .line 40
    sget v2, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzhf()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhc()V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eq p2, v0, :cond_5

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjn()V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjj()V

    if-ne p1, v1, :cond_6

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzji()V

    return-void

    .line 48
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjl()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjj()V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjn()V

    .line 52
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    if-eqz p1, :cond_8

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Landroid/view/Surface;)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 54
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblo:I

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhd()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 56
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblo:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_a
    return-void

    .line 58
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhd;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method protected final zza(JZ)V
    .locals 3

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zza(JZ)V

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjj()V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblt:I

    .line 26
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblj:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    .line 28
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    :cond_0
    if-eqz p3, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzji()V

    return-void

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblq:J

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzjp;)V
    .locals 1

    .line 109
    sget p1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjk()V

    :cond_0
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzlw;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 60
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzblk:[Lcom/google/android/gms/internal/ads/zzht;

    .line 61
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    .line 62
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    .line 63
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzqe;->zzi(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v7

    .line 64
    array-length v8, v4

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 65
    new-instance v4, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzqg;-><init>(III)V

    goto/16 :goto_c

    .line 66
    :cond_0
    array-length v8, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    aget-object v12, v4, v10

    .line 67
    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcr:Z

    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/ads/zzqe;->zza(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 68
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-eq v13, v9, :cond_2

    iget v14, v12, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-ne v14, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    :goto_2
    or-int/2addr v11, v14

    .line 69
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 70
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzht;->height:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 71
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzqe;->zzi(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    if-eqz v11, :cond_10

    const/16 v4, 0x42

    const-string v8, "Resolutions unknown. Codec max resolution: "

    const-string v9, "x"

    .line 72
    invoke-static {v4, v8, v5, v9, v6}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaCodecVideoRenderer"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-le v4, v10, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_6

    move v12, v4

    goto :goto_4

    :cond_6
    move v12, v10

    :goto_4
    if-eqz v11, :cond_7

    move v4, v10

    :cond_7
    int-to-float v10, v4

    int-to-float v13, v12

    div-float/2addr v10, v13

    .line 74
    sget-object v13, Lcom/google/android/gms/internal/ads/zzqe;->zzbld:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_f

    move/from16 p4, v14

    aget v14, v13, v15

    move-object/from16 v16, v13

    int-to-float v13, v14

    mul-float v13, v13, v10

    float-to-int v13, v13

    if-le v14, v12, :cond_f

    if-gt v13, v4, :cond_8

    goto/16 :goto_a

    :cond_8
    move/from16 v17, v4

    .line 75
    sget v4, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    move/from16 v18, v10

    const/16 v10, 0x15

    if-lt v4, v10, :cond_b

    if-eqz v11, :cond_9

    move v4, v13

    goto :goto_6

    :cond_9
    move v4, v14

    :goto_6
    if-eqz v11, :cond_a

    goto :goto_7

    :cond_a
    move v14, v13

    .line 76
    :goto_7
    invoke-virtual {v1, v4, v14}, Lcom/google/android/gms/internal/ads/zzlw;->zzd(II)Landroid/graphics/Point;

    move-result-object v4

    .line 77
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzht;->zzahi:F

    .line 78
    iget v13, v4, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    float-to-double v8, v10

    invoke-virtual {v1, v13, v14, v8, v9}, Lcom/google/android/gms/internal/ads/zzlw;->zza(IID)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_b

    :cond_b
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    const/16 v4, 0x10

    .line 79
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/ads/zzpt;->zzf(II)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    .line 80
    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/zzpt;->zzf(II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    mul-int v9, v8, v4

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzlz;->zzhk()I

    move-result v10

    if-gt v9, v10, :cond_e

    .line 82
    new-instance v9, Landroid/graphics/Point;

    if-eqz v11, :cond_c

    move v10, v4

    goto :goto_8

    :cond_c
    move v10, v8

    :goto_8
    if-eqz v11, :cond_d

    goto :goto_9

    :cond_d
    move v8, v4

    .line 83
    :goto_9
    invoke-direct {v9, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v9

    goto :goto_b

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, p4

    move-object/from16 v13, v16

    move/from16 v4, v17

    move/from16 v10, v18

    move-object/from16 v9, v19

    move-object/from16 v8, v20

    goto :goto_5

    :cond_f
    :goto_a
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_10

    .line 84
    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 85
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 86
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    .line 87
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Ljava/lang/String;II)I

    move-result v4

    .line 88
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v4, 0x39

    const-string v8, "Codec max resolution adjusted to: "

    move-object/from16 v9, v19

    .line 89
    invoke-static {v4, v8, v5, v9, v6}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v20

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_10
    new-instance v4, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzqg;-><init>(III)V

    .line 91
    :goto_c
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbll:Lcom/google/android/gms/internal/ads/zzqg;

    .line 92
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbli:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzaif:I

    .line 93
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfa()Landroid/media/MediaFormat;

    move-result-object v3

    .line 94
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzqg;->width:I

    const-string v8, "max-width"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 95
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzqg;->height:I

    const-string v8, "max-height"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzqg;->zzbmi:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_11

    const-string v7, "max-input-size"

    .line 97
    invoke-virtual {v3, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_11
    if-eqz v5, :cond_12

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12
    if-eqz v6, :cond_13

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    .line 99
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    .line 100
    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    :cond_13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    if-nez v4, :cond_15

    .line 102
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Z

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzqe;->zzn(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    .line 103
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-nez v4, :cond_14

    .line 104
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzqe;->context:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Z

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    .line 105
    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    .line 106
    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 107
    sget v1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_16

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    if-eqz v1, :cond_16

    .line 108
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqe;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzqd;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbme:Lcom/google/android/gms/internal/ads/zzqf;

    :cond_16
    return-void
.end method

.method protected final zza([Lcom/google/android/gms/internal/ads/zzht;J)V
    .locals 5

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblk:[Lcom/google/android/gms/internal/ads/zzht;

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 17
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    goto :goto_1

    .line 18
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblj:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 19
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblj:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    .line 22
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhd;->zza([Lcom/google/android/gms/internal/ads/zzht;J)V

    return-void
.end method

.method protected final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, p9

    .line 112
    :goto_0
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblj:[J

    aget-wide v9, v6, v5

    cmp-long v11, v3, v9

    if-ltz v11, :cond_0

    .line 113
    aget-wide v9, v6, v5

    iput-wide v9, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    add-int/lit8 v0, v0, -0x1

    .line 114
    iput v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    .line 115
    invoke-static {v6, v8, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 116
    :cond_0
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    sub-long v9, v3, v9

    if-eqz p11, :cond_1

    .line 117
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_1
    sub-long v11, v3, p1

    .line 118
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-ne v0, v6, :cond_3

    .line 119
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzqe;->zzem(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_2
    return v5

    .line 121
    :cond_3
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    const/16 v6, 0x15

    if-nez v0, :cond_5

    .line 122
    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    if-lt v0, v6, :cond_4

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Landroid/media/MediaCodec;IJJ)V

    goto :goto_1

    .line 124
    :cond_4
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzqe;->zzb(Landroid/media/MediaCodec;IJ)V

    :goto_1
    return v8

    .line 125
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhd;->getState()I

    move-result v0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_6

    return v5

    .line 126
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    sub-long v13, v13, p3

    sub-long/2addr v11, v13

    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    mul-long v11, v11, v15

    add-long/2addr v11, v13

    .line 128
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzble:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzqi;->zzf(JJ)J

    move-result-wide v11

    sub-long v3, v11, v13

    .line 129
    div-long/2addr v3, v15

    .line 130
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzqe;->zzem(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dropVideoBuffer"

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpu;->beginSection(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpu;->endSection()V

    .line 134
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:I

    .line 135
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    add-int/2addr v1, v8

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    .line 136
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblt:I

    add-int/2addr v1, v8

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblt:I

    .line 137
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:I

    .line 138
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzbls:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzqe;->zzblh:I

    if-ne v0, v1, :cond_7

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjo()V

    :cond_7
    return v8

    .line 140
    :cond_8
    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    if-lt v0, v6, :cond_9

    const-wide/32 v13, 0xc350

    cmp-long v0, v3, v13

    if-gez v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    move-wide v5, v11

    .line 141
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Landroid/media/MediaCodec;IJJ)V

    return v8

    :cond_9
    const-wide/16 v11, 0x7530

    cmp-long v0, v3, v11

    if-gez v0, :cond_b

    const-wide/16 v5, 0x2af8

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    const-wide/16 v5, 0x2710

    sub-long/2addr v3, v5

    .line 142
    :try_start_0
    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 143
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    :cond_a
    :goto_2
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzqe;->zzb(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_b
    return v5
.end method

.method protected final zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 0

    .line 111
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzqe;->zza(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbll:Lcom/google/android/gms/internal/ads/zzqg;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzqg;->width:I

    if-gt p1, p3, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzqg;->height:I

    if-gt p1, p3, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->zzahf:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzqg;->zzbmi:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzlw;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlw;->zzbcs:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzn(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final zzc(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zzd(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahk:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblv:F

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzj(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblu:I

    return-void
.end method

.method protected final zze(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zze(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzei()Lcom/google/android/gms/internal/ads/zzia;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzia;->zzaif:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzaif:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzjm;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzble:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqi;->enable()V

    return-void
.end method

.method protected final zzeh()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblw:I

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblx:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblz:F

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblv:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmf:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmg:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjl()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqe;->zzjj()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzble:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqi;->disable()V

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbme:Lcom/google/android/gms/internal/ads/zzqf;

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzalq:Z

    .line 12
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzeh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzbcq:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zzjm;)V

    .line 17
    throw v0
.end method

.method protected final zzhf()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzlv;->zzhf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    .line 10
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbln:Landroid/view/Surface;

    .line 12
    :cond_3
    throw v1
.end method

.method final zzjk()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblp:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblf:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzblm:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
