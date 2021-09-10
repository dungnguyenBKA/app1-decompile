.class public final Lcom/google/android/gms/internal/ads/zzcf$zzf;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;


# instance fields
.field private zzdv:I

.field private zzhv:I

.field private zzhw:I

.field private zzlh:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzmg:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzejr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzell;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzlh:Lcom/google/android/gms/internal/ads/zzejr;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhw:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhv:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzb(Lcom/google/android/gms/internal/ads/zzcm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzk(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzb(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcm;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhv:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdv:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdv:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzlh:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzbl()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    return-object v0
.end method

.method static synthetic zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object v0
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzell;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzbge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzell;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcg;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzmg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzlh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcr;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhv"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcm;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzcg;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
