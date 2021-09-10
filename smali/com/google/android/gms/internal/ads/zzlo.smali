.class public final Lcom/google/android/gms/internal/ads/zzlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzka;
.implements Lcom/google/android/gms/internal/ads/zzkf;


# static fields
.field private static final zzapk:Lcom/google/android/gms/internal/ads/zzkb;

.field private static final zzazz:I


# instance fields
.field private zzaip:J

.field private final zzapr:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaps:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzarg:I

.field private zzarh:I

.field private zzark:Lcom/google/android/gms/internal/ads/zzkc;

.field private final zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxt:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzkv;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxv:I

.field private zzaxw:I

.field private zzaxx:J

.field private zzaxy:I

.field private zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzbaa:[Lcom/google/android/gms/internal/ads/zzlq;

.field private zzbab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlo;->zzapk:Lcom/google/android/gms/internal/ads/zzkb;

    const-string v0, "qt  "

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpt;->zzbh(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzlo;->zzazz:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpm;->zzbjt:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaps:Lcom/google/android/gms/internal/ads/zzpn;

    return-void
.end method

.method private final zzeb(J)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasu:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_8

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    .line 3
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzaty:I

    if-ne v3, v4, :cond_7

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 5
    new-instance v9, Lcom/google/android/gms/internal/ads/zzke;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzke;-><init>()V

    .line 6
    sget v10, Lcom/google/android/gms/internal/ads/zzkw;->zzavx:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 7
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzbab:Z

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzkx;->zza(Lcom/google/android/gms/internal/ads/zzky;Z)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzke;->zzb(Lcom/google/android/gms/internal/ads/zzmh;)Z

    :cond_1
    const/4 v11, 0x0

    .line 9
    :goto_1
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 10
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzkv;

    .line 11
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzaua:I

    if-ne v13, v14, :cond_4

    .line 12
    sget v13, Lcom/google/android/gms/internal/ads/zzkw;->zzatz:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzbab:Z

    move/from16 v18, v13

    move-object v13, v12

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzkx;->zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzky;JLcom/google/android/gms/internal/ads/zzjo;Z)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 13
    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzaub:I

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzkv;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzauc:I

    .line 14
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzkv;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzaud:I

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzkv;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v12

    .line 15
    invoke-static {v13, v12, v9}, Lcom/google/android/gms/internal/ads/zzkx;->zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object v12

    .line 16
    iget v14, v12, Lcom/google/android/gms/internal/ads/zzlt;->zzaxc:I

    if-eqz v14, :cond_4

    .line 17
    new-instance v14, Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzls;->type:I

    .line 18
    invoke-interface {v15, v11, v2}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v2

    invoke-direct {v14, v13, v12, v2}, Lcom/google/android/gms/internal/ads/zzlq;-><init>(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 19
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzlt;->zzayj:I

    add-int/lit8 v2, v2, 0x1e

    .line 20
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzht;->zzv(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    .line 21
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzls;->type:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_3

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzke;->zzgt()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 23
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzke;->zzahr:I

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzke;->zzahs:I

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/internal/ads/zzht;->zzb(II)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    :cond_2
    if-eqz v8, :cond_3

    .line 24
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzht;->zza(Lcom/google/android/gms/internal/ads/zzmh;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    .line 25
    :cond_3
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzlq;->zzbae:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    move-object v10, v8

    move-object v2, v9

    .line 26
    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzls;->zzaip:J

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 27
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzlt;->zzaov:[J

    const/4 v9, 0x0

    aget-wide v12, v8, v9

    cmp-long v8, v12, v6

    if-gez v8, :cond_5

    move-wide v6, v12

    goto :goto_2

    :cond_4
    move-object v10, v8

    move-object v2, v9

    const/4 v9, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object v9, v2

    move-object v8, v10

    goto/16 :goto_1

    .line 29
    :cond_6
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaip:J

    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzlq;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzlq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaa:[Lcom/google/android/gms/internal/ads/zzlq;

    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzgs()V

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkf;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    .line 34
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    goto/16 :goto_0

    .line 35
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    goto/16 :goto_0

    .line 37
    :cond_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlo;->zzhb()V

    :cond_9
    return-void
.end method

.method private final zzhb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaip:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzkg;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3
    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_14

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_b

    if-ne v3, v10, :cond_a

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 4
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaa:[Lcom/google/android/gms/internal/ads/zzlq;

    array-length v15, v14

    if-ge v3, v15, :cond_2

    .line 5
    aget-object v14, v14, v3

    .line 6
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzlq;->zzaxg:I

    .line 7
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzlq;->zzbad:Lcom/google/android/gms/internal/ads/zzlt;

    iget v11, v14, Lcom/google/android/gms/internal/ads/zzlt;->zzaxc:I

    if-eq v15, v11, :cond_1

    .line 8
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzlt;->zzaov:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_1

    move v5, v3

    move-wide v12, v14

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v4, :cond_3

    return v4

    .line 9
    :cond_3
    aget-object v3, v14, v5

    .line 10
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzbae:Lcom/google/android/gms/internal/ads/zzkh;

    .line 11
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzaxg:I

    .line 12
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzbad:Lcom/google/android/gms/internal/ads/zzlt;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzlt;->zzaov:[J

    aget-wide v13, v12, v5

    .line 13
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzlt;->zzaou:[I

    aget v11, v11, v5

    .line 14
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzls;->zzbaj:I

    if-ne v12, v6, :cond_4

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    .line 15
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v16

    sub-long v16, v13, v16

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    move/from16 v18, v11

    int-to-long v10, v12

    add-long v10, v16, v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-ltz v12, :cond_9

    cmp-long v12, v10, v8

    if-ltz v12, :cond_5

    goto/16 :goto_3

    :cond_5
    long-to-int v2, v10

    .line 16
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzasq:I

    if-eqz v2, :cond_7

    .line 18
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaps:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    .line 19
    aput-byte v7, v8, v7

    .line 20
    aput-byte v7, v8, v6

    const/4 v9, 0x2

    .line 21
    aput-byte v7, v8, v9

    rsub-int/lit8 v8, v2, 0x4

    move/from16 v11, v18

    .line 22
    :goto_1
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    if-ge v9, v11, :cond_8

    .line 23
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    if-nez v9, :cond_6

    .line 24
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaps:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v9, v8, v2}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 25
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaps:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 26
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaps:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v9

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    .line 27
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 28
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v10, 0x4

    invoke-interface {v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 29
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    add-int/2addr v11, v8

    goto :goto_1

    .line 30
    :cond_6
    invoke-interface {v4, v1, v9, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v9

    .line 31
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    .line 32
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    goto :goto_1

    .line 33
    :cond_7
    :goto_2
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    move/from16 v11, v18

    if-ge v2, v11, :cond_8

    sub-int v2, v11, v2

    .line 34
    invoke-interface {v4, v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v2

    .line 35
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    add-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    .line 36
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    sub-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    move/from16 v18, v11

    goto :goto_2

    :cond_8
    move/from16 v20, v11

    .line 37
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzbad:Lcom/google/android/gms/internal/ads/zzlt;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlt;->zzban:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlt;->zzayl:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    .line 38
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzaxg:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzlq;->zzaxg:I

    .line 39
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    .line 40
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    return v7

    .line 41
    :cond_9
    :goto_3
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzkg;->position:J

    return v6

    .line 42
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 43
    :cond_b
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    int-to-long v10, v10

    sub-long/2addr v3, v10

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v10

    add-long/2addr v10, v3

    .line 45
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v12, :cond_10

    .line 46
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 47
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxw:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzasx:I

    if-ne v3, v4, :cond_f

    .line 48
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    .line 49
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    .line 51
    sget v5, Lcom/google/android/gms/internal/ads/zzlo;->zzazz:I

    if-ne v4, v5, :cond_c

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x4

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 53
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v4

    if-lez v4, :cond_e

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzlo;->zzazz:I

    if-ne v4, v5, :cond_d

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 55
    :goto_5
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzbab:Z

    goto :goto_6

    .line 56
    :cond_f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 57
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzkv;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzky;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxw:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzky;-><init>(ILcom/google/android/gms/internal/ads/zzpn;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Lcom/google/android/gms/internal/ads/zzky;)V

    goto :goto_6

    :cond_10
    cmp-long v5, v3, v8

    if-gez v5, :cond_12

    long-to-int v4, v3

    .line 58
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    :cond_11
    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    .line 59
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzkg;->position:J

    const/4 v3, 0x1

    .line 60
    :goto_7
    invoke-direct {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzlo;->zzeb(J)V

    if-eqz v3, :cond_13

    .line 61
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    const/4 v7, 0x1

    :cond_13
    if-eqz v7, :cond_0

    return v6

    .line 62
    :cond_14
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    if-nez v3, :cond_16

    .line 63
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v3, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzjz;->zza([BIIZ)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v6, 0x0

    goto/16 :goto_e

    .line 64
    :cond_15
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    .line 65
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 66
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    .line 67
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxw:I

    .line 68
    :cond_16
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_17

    .line 69
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 70
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    .line 71
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    .line 72
    :cond_17
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxw:I

    .line 73
    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaty:I

    if-eq v3, v8, :cond_19

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaua:I

    if-eq v3, v8, :cond_19

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaub:I

    if-eq v3, v8, :cond_19

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzauc:I

    if-eq v3, v8, :cond_19

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaud:I

    if-eq v3, v8, :cond_19

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaum:I

    if-ne v3, v8, :cond_18

    goto :goto_8

    :cond_18
    const/4 v8, 0x0

    goto :goto_9

    :cond_19
    :goto_8
    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_1b

    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    add-long/2addr v7, v9

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    int-to-long v9, v3

    sub-long/2addr v7, v9

    .line 75
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzkv;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxw:I

    invoke-direct {v5, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 76
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-nez v3, :cond_1a

    .line 77
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzlo;->zzeb(J)V

    goto/16 :goto_e

    .line 78
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlo;->zzhb()V

    goto/16 :goto_e

    .line 79
    :cond_1b
    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzauo:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzatz:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaup:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzauq:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavj:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavk:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavl:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaun:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavm:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavn:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavo:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavp:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavq:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaul:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzasx:I

    if-eq v3, v8, :cond_1d

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzavx:I

    if-ne v3, v8, :cond_1c

    goto :goto_a

    :cond_1c
    const/4 v3, 0x0

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_20

    .line 80
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    if-ne v3, v5, :cond_1e

    const/4 v3, 0x1

    goto :goto_c

    :cond_1e
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    .line 81
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-gtz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    .line 82
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpn;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxx:J

    long-to-int v9, v8

    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    .line 83
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-static {v8, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    goto :goto_e

    :cond_20
    const/4 v3, 0x0

    .line 85
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    .line 86
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxv:I

    :goto_e
    if-nez v6, :cond_0

    return v4
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlp;->zze(Lcom/google/android/gms/internal/ads/zzjz;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzaxy:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzarh:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzarg:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlo;->zzhb()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaa:[Lcom/google/android/gms/internal/ads/zzlq;

    if-eqz p1, :cond_2

    .line 7
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlq;->zzbad:Lcom/google/android/gms/internal/ads/zzlt;

    .line 9
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzlt;->zzec(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 10
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzlt;->zzed(J)I

    move-result v3

    .line 11
    :cond_1
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzlq;->zzaxg:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzdz(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzbaa:[Lcom/google/android/gms/internal/ads/zzlq;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 2
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlq;->zzbad:Lcom/google/android/gms/internal/ads/zzlt;

    .line 3
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzlt;->zzec(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 4
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzlt;->zzed(J)I

    move-result v6

    .line 5
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlt;->zzaov:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method
