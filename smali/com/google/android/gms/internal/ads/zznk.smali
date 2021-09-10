.class final Lcom/google/android/gms/internal/ads/zznk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private length:I

.field private zzaou:[I

.field private zzaov:[J

.field private zzaox:[J

.field private zzayl:[I

.field private zzbfo:I

.field private zzbfp:[I

.field private zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

.field private zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

.field private zzbfs:I

.field private zzbft:I

.field private zzbfu:I

.field private zzbfv:J

.field private zzbfw:J

.field private zzbfx:Z

.field private zzbfy:Z

.field private zzbfz:Lcom/google/android/gms/internal/ads/zzht;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:[I

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzkk;

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzht;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:J

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfy:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfx:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzjp;ZZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznj;)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznk;->zzie()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzji;->setFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v3

    .line 4
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfz:Lcom/google/android/gms/internal/ads/zzht;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    if-eq p2, p5, :cond_2

    .line 5
    :cond_1
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhv;->zzahz:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    if-nez p3, :cond_9

    .line 8
    :try_start_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzjp;->zzdr:Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 10
    monitor-exit p0

    return v2

    .line 11
    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjp;->zzaol:J

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzji;->setFlags(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    iget p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    aget p1, p1, p4

    iput p1, p6, Lcom/google/android/gms/internal/ads/zznj;->size:I

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    aget-wide v0, p1, p4

    iput-wide v0, p6, Lcom/google/android/gms/internal/ads/zznj;->zzawv:J

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    aget-object p1, p1, p4

    iput-object p1, p6, Lcom/google/android/gms/internal/ads/zznj;->zzarp:Lcom/google/android/gms/internal/ads/zzkk;

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzjp;->zzaol:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:J

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    .line 18
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 19
    iget p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    add-int/2addr p4, p5

    iput p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    .line 20
    iget p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    if-ne p2, p4, :cond_7

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    :cond_7
    if-lez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    aget-wide p2, p1, p2

    goto :goto_1

    .line 23
    :cond_8
    iget-wide p1, p6, Lcom/google/android/gms/internal/ads/zznj;->zzawv:J

    iget p3, p6, Lcom/google/android/gms/internal/ads/zznj;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    move-wide p2, p1

    :goto_1
    iput-wide p2, p6, Lcom/google/android/gms/internal/ads/zznj;->zzbfn:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    monitor-exit p0

    return v3

    .line 25
    :cond_9
    :goto_2
    :try_start_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhv;->zzahz:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(JIJILcom/google/android/gms/internal/ads/zzkk;)V
    .locals 5

    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfx:Z

    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfy:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zznk;->zzei(J)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I

    aput-wide p1, v0, v3

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    aput-wide p4, p1, v3

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    aput p6, p2, v3

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    aput p3, p2, v3

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    aput-object p7, p2, v3

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfz:Lcom/google/android/gms/internal/ads/zzht;

    aput-object p3, p2, v3

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:[I

    aput v1, p2, v3

    .line 39
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    .line 40
    iget p3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    if-ne p2, p3, :cond_3

    add-int/lit16 p2, p3, 0x3e8

    .line 41
    new-array p4, p2, [I

    .line 42
    new-array p5, p2, [J

    .line 43
    new-array p6, p2, [J

    .line 44
    new-array p7, p2, [I

    .line 45
    new-array v0, p2, [I

    .line 46
    new-array v2, p2, [Lcom/google/android/gms/internal/ads/zzkk;

    .line 47
    new-array v3, p2, [Lcom/google/android/gms/internal/ads/zzht;

    .line 48
    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    sub-int/2addr p3, v4

    .line 49
    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 57
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    .line 65
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    .line 66
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    .line 67
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    .line 68
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfq:[Lcom/google/android/gms/internal/ads/zzkk;

    .line 69
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfr:[Lcom/google/android/gms/internal/ads/zzht;

    .line 70
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:[I

    .line 71
    iput v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I

    .line 73
    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    .line 74
    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :cond_3
    add-int/2addr v3, v2

    .line 76
    :try_start_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I

    if-ne v3, p3, :cond_4

    .line 77
    iput v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(JZ)J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznk;->zzie()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    aget-wide v4, v0, v3

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    .line 3
    monitor-exit p0

    return-wide v1

    :cond_1
    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v4, -0x1

    .line 4
    :goto_0
    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I

    if-eq v3, v5, :cond_3

    .line 5
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaox:[J

    aget-wide v6, v5, v3

    cmp-long v5, v6, p1

    if-gtz v5, :cond_3

    .line 6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zznk;->zzayl:[I

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v4, p3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v5, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    rem-int/2addr v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v0, :cond_4

    .line 8
    monitor-exit p0

    return-wide v1

    .line 9
    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    add-int/2addr p1, v4

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 10
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    .line 11
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    sub-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    aget-wide p1, p2, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 13
    :cond_5
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized zzei(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfy:Z

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzpt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfz:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzhv()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzib()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfx:Z

    return-void
.end method

.method public final zzic()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:J

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfw:J

    return-void
.end method

.method public final zzid()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzie()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized zzif()Lcom/google/android/gms/internal/ads/zzht;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfz:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzig()J
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznk;->zzie()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    monitor-exit p0

    return-wide v0

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfo:I

    rem-int/2addr v2, v3

    add-int/2addr v0, v1

    .line 4
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbft:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznk;->length:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaov:[J

    aget-wide v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->zzaou:[I

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    add-long/2addr v3, v0

    monitor-exit p0

    return-wide v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
