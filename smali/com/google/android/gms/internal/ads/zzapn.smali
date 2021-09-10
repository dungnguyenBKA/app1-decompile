.class public abstract Lcom/google/android/gms/internal/ads/zzapn;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzapk;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzapk;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzapk;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13

    move-object v8, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v9, p3

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-eq v0, v10, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_c

    const/16 v3, 0xa

    if-eq v0, v3, :cond_b

    const/16 v3, 0xb

    if-eq v0, v3, :cond_a

    const-string v3, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvl;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v7

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    move-object v11, v2

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzapj;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzapj;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapl;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 10
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v12

    move-object v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapk;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lzv;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzank;)V

    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 13
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzapk;->zzdm(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 16
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvl;

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v6

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_2
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    .line 21
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 22
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/zzape;

    if-eqz v7, :cond_3

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/zzape;

    goto :goto_2

    .line 24
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 25
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v11

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    .line 26
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lzv;Lcom/google/android/gms/internal/ads/zzape;Lcom/google/android/gms/internal/ads/zzank;)V

    .line 27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 28
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v0

    .line 29
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzapk;->zzaa(Lzv;)Z

    move-result v0

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzgx;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_c

    .line 32
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvl;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v7

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_4
    move-object v11, v2

    goto :goto_5

    .line 37
    :cond_4
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 38
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzapj;

    if-eqz v3, :cond_5

    .line 39
    check-cast v2, Lcom/google/android/gms/internal/ads/zzapj;

    goto :goto_4

    .line 40
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapl;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 41
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v12

    move-object v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    .line 42
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lzv;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzank;)V

    .line 43
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 44
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v0

    .line 45
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzapk;->zzz(Lzv;)Z

    move-result v0

    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzgx;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_c

    .line 48
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvl;

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v6

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_6
    move-object v7, v2

    goto :goto_7

    :cond_6
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    .line 53
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 54
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/zzapd;

    if-eqz v7, :cond_7

    .line 55
    check-cast v2, Lcom/google/android/gms/internal/ads/zzapd;

    goto :goto_6

    .line 56
    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 57
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v11

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    .line 58
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lzv;Lcom/google/android/gms/internal/ads/zzapd;Lcom/google/android/gms/internal/ads/zzank;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 60
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvl;

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v6

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_8
    move-object v7, v2

    goto :goto_9

    :cond_8
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    .line 65
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 66
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/zzaoy;

    if-eqz v7, :cond_9

    .line 67
    check-cast v2, Lcom/google/android/gms/internal/ads/zzaoy;

    goto :goto_8

    .line 68
    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapa;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 69
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v11

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/gms/internal/ads/zzvs;

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v12

    .line 71
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lzv;Lcom/google/android/gms/internal/ads/zzaoy;Lcom/google/android/gms/internal/ads/zzank;Lcom/google/android/gms/internal/ads/zzvs;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 73
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    .line 75
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzapk;->zza([Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 77
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v0

    .line 78
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzapk;->zzy(Lzv;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c

    .line 80
    :cond_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzapk;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_c

    .line 83
    :cond_d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzapk;->zzvd()Lcom/google/android/gms/internal/ads/zzapy;

    move-result-object v0

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_c

    .line 86
    :cond_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzapk;->zzvc()Lcom/google/android/gms/internal/ads/zzapy;

    move-result-object v0

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_c

    .line 89
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object v3

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 92
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzvs;

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_10

    move-object v11, v2

    goto :goto_b

    :cond_10
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    .line 95
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 96
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzapp;

    if-eqz v2, :cond_11

    .line 97
    check-cast v1, Lcom/google/android/gms/internal/ads/zzapp;

    goto :goto_a

    .line 98
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapr;-><init>(Landroid/os/IBinder;)V

    :goto_a
    move-object v11, v1

    :goto_b
    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    .line 99
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Lzv;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzapp;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_c
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
