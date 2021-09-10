.class public Lqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmc;


# static fields
.field private static final u:Ljava/lang/String; = "qc"


# instance fields
.field private a:[I

.field private final b:[I

.field private final c:Lmc$a;

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:[S

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[I

.field private k:I

.field private l:Loc;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/Boolean;

.field private t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lmc$a;Loc;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lqc;->b:[I

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lqc;->t:Landroid/graphics/Bitmap$Config;

    .line 4
    iput-object p1, p0, Lqc;->c:Lmc$a;

    .line 5
    new-instance p1, Loc;

    invoke-direct {p1}, Loc;-><init>()V

    iput-object p1, p0, Lqc;->l:Loc;

    .line 6
    monitor-enter p0

    if-lez p4, :cond_2

    .line 7
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 p4, 0x0

    .line 8
    iput p4, p0, Lqc;->o:I

    .line 9
    iput-object p2, p0, Lqc;->l:Loc;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lqc;->k:I

    .line 11
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lqc;->d:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget-object p3, p0, Lqc;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    iput-boolean p4, p0, Lqc;->n:Z

    .line 15
    iget-object p3, p2, Loc;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnc;

    .line 16
    iget p4, p4, Lnc;->g:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    .line 17
    iput-boolean p3, p0, Lqc;->n:Z

    .line 18
    :cond_1
    iput p1, p0, Lqc;->p:I

    .line 19
    iget p3, p2, Loc;->f:I

    div-int p4, p3, p1

    iput p4, p0, Lqc;->r:I

    .line 20
    iget p2, p2, Loc;->g:I

    div-int p1, p2, p1

    iput p1, p0, Lqc;->q:I

    .line 21
    iget-object p1, p0, Lqc;->c:Lmc$a;

    mul-int p3, p3, p2

    check-cast p1, Lii;

    invoke-virtual {p1, p3}, Lii;->b(I)[B

    move-result-object p1

    iput-object p1, p0, Lqc;->i:[B

    .line 22
    iget-object p1, p0, Lqc;->c:Lmc$a;

    iget p2, p0, Lqc;->r:I

    iget p3, p0, Lqc;->q:I

    mul-int p2, p2, p3

    check-cast p1, Lii;

    invoke-virtual {p1, p2}, Lii;->c(I)[I

    move-result-object p1

    iput-object p1, p0, Lqc;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sample size must be >=0, not: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lqc;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqc;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    :goto_1
    iget-object v1, p0, Lqc;->c:Lmc$a;

    iget v2, p0, Lqc;->r:I

    iget v3, p0, Lqc;->q:I

    check-cast v1, Lii;

    invoke-virtual {v1, v2, v3, v0}, Lii;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method private j(Lnc;Lnc;)Landroid/graphics/Bitmap;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v10, v0, Lqc;->j:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 2
    iget-object v3, v0, Lqc;->m:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, v0, Lqc;->c:Lmc$a;

    check-cast v4, Lii;

    invoke-virtual {v4, v3}, Lii;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Lqc;->m:Landroid/graphics/Bitmap;

    .line 5
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v12, 0x3

    if-eqz v2, :cond_2

    .line 6
    iget v3, v2, Lnc;->g:I

    if-ne v3, v12, :cond_2

    iget-object v3, v0, Lqc;->m:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 7
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v13, 0x2

    if-eqz v2, :cond_7

    .line 8
    iget v3, v2, Lnc;->g:I

    if-lez v3, :cond_7

    if-ne v3, v13, :cond_6

    .line 9
    iget-boolean v3, v1, Lnc;->f:Z

    if-nez v3, :cond_3

    .line 10
    iget-object v3, v0, Lqc;->l:Loc;

    iget v4, v3, Loc;->k:I

    .line 11
    iget-object v5, v1, Lnc;->k:[I

    if-eqz v5, :cond_4

    iget v3, v3, Loc;->j:I

    iget v5, v1, Lnc;->h:I

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v4, 0x0

    .line 12
    :cond_4
    iget v3, v2, Lnc;->d:I

    iget v5, v0, Lqc;->p:I

    div-int/2addr v3, v5

    .line 13
    iget v6, v2, Lnc;->b:I

    div-int/2addr v6, v5

    .line 14
    iget v7, v2, Lnc;->c:I

    div-int/2addr v7, v5

    .line 15
    iget v2, v2, Lnc;->a:I

    div-int/2addr v2, v5

    .line 16
    iget v5, v0, Lqc;->r:I

    mul-int v6, v6, v5

    add-int/2addr v6, v2

    mul-int v3, v3, v5

    add-int/2addr v3, v6

    :goto_0
    if-ge v6, v3, :cond_7

    add-int v2, v6, v7

    move v5, v6

    :goto_1
    if-ge v5, v2, :cond_5

    .line 17
    aput v4, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_5
    iget v2, v0, Lqc;->r:I

    add-int/2addr v6, v2

    goto :goto_0

    :cond_6
    if-ne v3, v12, :cond_7

    .line 19
    iget-object v2, v0, Lqc;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    .line 20
    iget v8, v0, Lqc;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lqc;->q:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    :cond_7
    iget-object v2, v0, Lqc;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Lnc;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget v2, v1, Lnc;->c:I

    iget v3, v1, Lnc;->d:I

    mul-int v2, v2, v3

    .line 23
    iget-object v3, v0, Lqc;->i:[B

    if-eqz v3, :cond_8

    array-length v3, v3

    if-ge v3, v2, :cond_9

    .line 24
    :cond_8
    iget-object v3, v0, Lqc;->c:Lmc$a;

    check-cast v3, Lii;

    invoke-virtual {v3, v2}, Lii;->b(I)[B

    move-result-object v3

    iput-object v3, v0, Lqc;->i:[B

    .line 25
    :cond_9
    iget-object v3, v0, Lqc;->i:[B

    .line 26
    iget-object v4, v0, Lqc;->f:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_a

    new-array v4, v5, [S

    .line 27
    iput-object v4, v0, Lqc;->f:[S

    .line 28
    :cond_a
    iget-object v4, v0, Lqc;->f:[S

    .line 29
    iget-object v6, v0, Lqc;->g:[B

    if-nez v6, :cond_b

    new-array v6, v5, [B

    .line 30
    iput-object v6, v0, Lqc;->g:[B

    .line 31
    :cond_b
    iget-object v6, v0, Lqc;->g:[B

    .line 32
    iget-object v7, v0, Lqc;->h:[B

    if-nez v7, :cond_c

    const/16 v7, 0x1001

    new-array v7, v7, [B

    .line 33
    iput-object v7, v0, Lqc;->h:[B

    .line 34
    :cond_c
    iget-object v7, v0, Lqc;->h:[B

    .line 35
    iget-object v8, v0, Lqc;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    shl-int v14, v9, v8

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v14, 0x2

    add-int/2addr v8, v9

    shl-int v17, v9, v8

    const/4 v13, -0x1

    add-int/lit8 v17, v17, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_d

    .line 36
    aput-short v11, v4, v5

    int-to-byte v13, v5

    .line 37
    aput-byte v13, v6, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v13, -0x1

    goto :goto_2

    .line 38
    :cond_d
    iget-object v5, v0, Lqc;->e:[B

    move-object v12, v0

    move/from16 v25, v8

    move/from16 v24, v16

    move/from16 v28, v17

    const/4 v9, 0x0

    const/4 v13, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_3
    const/16 v30, 0x8

    if-ge v9, v2, :cond_19

    if-nez v20, :cond_10

    .line 39
    iget-object v11, v12, Lqc;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    if-gtz v11, :cond_e

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v33, v13

    goto :goto_4

    :cond_e
    move/from16 v31, v8

    .line 40
    iget-object v8, v12, Lqc;->d:Ljava/nio/ByteBuffer;

    move/from16 v32, v9

    iget-object v9, v12, Lqc;->e:[B

    move/from16 v33, v13

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v34, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    if-gtz v11, :cond_f

    const/4 v8, 0x3

    .line 41
    iput v8, v12, Lqc;->o:I

    goto/16 :goto_c

    :cond_f
    move/from16 v20, v11

    const/16 v21, 0x0

    goto :goto_5

    :cond_10
    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v33, v13

    .line 42
    :goto_5
    aget-byte v8, v5, v21

    and-int/lit16 v8, v8, 0xff

    shl-int v8, v8, v22

    add-int v23, v23, v8

    add-int/lit8 v22, v22, 0x8

    const/4 v8, 0x1

    add-int/lit8 v21, v21, 0x1

    const/4 v8, -0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v10, v22

    move/from16 v11, v24

    move/from16 v8, v25

    move/from16 v9, v32

    move/from16 v13, v33

    move-object/from16 v22, v5

    move/from16 v5, v26

    :goto_6
    if-lt v10, v8, :cond_18

    move-object/from16 v24, v12

    and-int v12, v23, v28

    shr-int v23, v23, v8

    sub-int/2addr v10, v8

    if-ne v12, v14, :cond_11

    move/from16 v25, v10

    move/from16 v11, v16

    move/from16 v28, v17

    move-object/from16 v12, v24

    move/from16 v8, v31

    const/4 v13, -0x1

    move/from16 v24, v5

    const/16 v5, 0x1000

    goto/16 :goto_a

    :cond_11
    if-ne v12, v15, :cond_12

    move-object/from16 v12, v24

    move/from16 v24, v5

    const/16 v5, 0x1000

    goto/16 :goto_b

    :cond_12
    move/from16 v25, v10

    const/4 v10, -0x1

    if-ne v13, v10, :cond_13

    .line 43
    aget-byte v5, v6, v12

    aput-byte v5, v3, v27

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v24, v12

    const/16 v5, 0x1000

    goto :goto_9

    :cond_13
    if-lt v12, v11, :cond_14

    int-to-byte v5, v5

    .line 44
    aput-byte v5, v7, v29

    add-int/lit8 v29, v29, 0x1

    move v5, v13

    goto :goto_7

    :cond_14
    move v5, v12

    :goto_7
    if-lt v5, v14, :cond_15

    .line 45
    aget-byte v10, v6, v5

    aput-byte v10, v7, v29

    add-int/lit8 v29, v29, 0x1

    .line 46
    aget-short v5, v4, v5

    goto :goto_7

    .line 47
    :cond_15
    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v10, v5

    .line 48
    aput-byte v10, v3, v27

    :goto_8
    const/16 v19, 0x1

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v9, v9, 0x1

    if-lez v29, :cond_16

    add-int/lit8 v29, v29, -0x1

    .line 49
    aget-byte v24, v7, v29

    aput-byte v24, v3, v27

    goto :goto_8

    :cond_16
    move/from16 v24, v5

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_17

    int-to-short v13, v13

    .line 50
    aput-short v13, v4, v11

    .line 51
    aput-byte v10, v6, v11

    add-int/lit8 v11, v11, 0x1

    and-int v10, v11, v28

    if-nez v10, :cond_17

    if-ge v11, v5, :cond_17

    add-int/lit8 v8, v8, 0x1

    add-int v28, v28, v11

    :cond_17
    :goto_9
    move v13, v12

    move-object v12, v0

    :goto_a
    move/from16 v5, v24

    move/from16 v10, v25

    goto/16 :goto_6

    :cond_18
    move/from16 v24, v5

    const/16 v5, 0x1000

    move-object v12, v0

    :goto_b
    move/from16 v25, v8

    move-object/from16 v5, v22

    move/from16 v26, v24

    move/from16 v8, v31

    move/from16 v22, v10

    move/from16 v24, v11

    move-object/from16 v10, v34

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_19
    move-object/from16 v34, v10

    :goto_c
    move/from16 v11, v27

    const/4 v10, 0x0

    .line 52
    invoke-static {v3, v11, v2, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 53
    iget-boolean v2, v1, Lnc;->e:Z

    if-nez v2, :cond_24

    iget v2, v0, Lqc;->p:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    goto/16 :goto_12

    .line 54
    :cond_1a
    iget-object v2, v0, Lqc;->j:[I

    .line 55
    iget v3, v1, Lnc;->d:I

    .line 56
    iget v4, v1, Lnc;->b:I

    .line 57
    iget v5, v1, Lnc;->c:I

    .line 58
    iget v6, v1, Lnc;->a:I

    .line 59
    iget v7, v0, Lqc;->k:I

    if-nez v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    .line 60
    :goto_d
    iget v8, v0, Lqc;->r:I

    .line 61
    iget-object v9, v0, Lqc;->i:[B

    .line 62
    iget-object v11, v0, Lqc;->a:[I

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v3, :cond_20

    add-int v14, v13, v4

    mul-int v14, v14, v8

    add-int v15, v14, v6

    add-int v10, v15, v5

    add-int/2addr v14, v8

    if-ge v14, v10, :cond_1c

    move v10, v14

    .line 63
    :cond_1c
    iget v14, v1, Lnc;->c:I

    mul-int v14, v14, v13

    :goto_f
    if-ge v15, v10, :cond_1f

    move/from16 v16, v3

    .line 64
    aget-byte v3, v9, v14

    move/from16 v17, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v12, :cond_1e

    .line 65
    aget v4, v11, v4

    if-eqz v4, :cond_1d

    .line 66
    aput v4, v2, v15

    goto :goto_10

    :cond_1d
    move v12, v3

    :cond_1e
    :goto_10
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_f

    :cond_1f
    move/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_e

    .line 67
    :cond_20
    iget-object v2, v0, Lqc;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    .line 68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    iget-object v2, v0, Lqc;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    if-eqz v7, :cond_23

    const/4 v2, -0x1

    if-eq v12, v2, :cond_23

    :cond_22
    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lqc;->s:Ljava/lang/Boolean;

    goto/16 :goto_21

    .line 69
    :cond_24
    :goto_12
    iget-object v2, v0, Lqc;->j:[I

    .line 70
    iget v3, v1, Lnc;->d:I

    iget v4, v0, Lqc;->p:I

    div-int/2addr v3, v4

    .line 71
    iget v5, v1, Lnc;->b:I

    div-int/2addr v5, v4

    .line 72
    iget v6, v1, Lnc;->c:I

    div-int/2addr v6, v4

    .line 73
    iget v7, v1, Lnc;->a:I

    div-int/2addr v7, v4

    .line 74
    iget v8, v0, Lqc;->k:I

    if-nez v8, :cond_25

    const/4 v10, 0x1

    goto :goto_13

    :cond_25
    const/4 v10, 0x0

    .line 75
    :goto_13
    iget v8, v0, Lqc;->r:I

    .line 76
    iget v9, v0, Lqc;->q:I

    .line 77
    iget-object v11, v0, Lqc;->i:[B

    .line 78
    iget-object v12, v0, Lqc;->a:[I

    .line 79
    iget-object v13, v0, Lqc;->s:Ljava/lang/Boolean;

    move-object v14, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x8

    :goto_14
    if-ge v13, v3, :cond_3a

    move-object/from16 p2, v14

    .line 80
    iget-boolean v14, v1, Lnc;->e:Z

    if-eqz v14, :cond_2a

    if-lt v15, v3, :cond_29

    add-int/lit8 v14, v16, 0x1

    move/from16 v20, v3

    const/4 v3, 0x2

    if-eq v14, v3, :cond_28

    const/4 v3, 0x3

    if-eq v14, v3, :cond_27

    const/4 v3, 0x4

    move/from16 v16, v14

    if-eq v14, v3, :cond_26

    goto :goto_15

    :cond_26
    const/4 v15, 0x1

    const/16 v17, 0x2

    goto :goto_15

    :cond_27
    const/4 v3, 0x4

    move/from16 v16, v14

    const/4 v15, 0x2

    const/16 v17, 0x4

    goto :goto_15

    :cond_28
    const/4 v3, 0x4

    move/from16 v16, v14

    const/4 v15, 0x4

    goto :goto_15

    :cond_29
    move/from16 v20, v3

    :goto_15
    add-int v3, v15, v17

    goto :goto_16

    :cond_2a
    move/from16 v20, v3

    move v3, v15

    move v15, v13

    :goto_16
    add-int/2addr v15, v5

    const/4 v14, 0x1

    if-ne v4, v14, :cond_2b

    const/4 v14, 0x1

    goto :goto_17

    :cond_2b
    const/4 v14, 0x0

    :goto_17
    if-ge v15, v9, :cond_39

    mul-int v15, v15, v8

    add-int v18, v15, v7

    move/from16 v21, v3

    add-int v3, v18, v6

    add-int/2addr v15, v8

    if-ge v15, v3, :cond_2c

    move v3, v15

    :cond_2c
    mul-int v15, v13, v4

    move/from16 v22, v5

    .line 81
    iget v5, v1, Lnc;->c:I

    mul-int v15, v15, v5

    if-eqz v14, :cond_2f

    move-object/from16 v14, p2

    move/from16 v5, v18

    :goto_18
    move/from16 v23, v6

    if-ge v5, v3, :cond_38

    .line 82
    aget-byte v6, v11, v15

    and-int/lit16 v6, v6, 0xff

    .line 83
    aget v6, v12, v6

    if-eqz v6, :cond_2d

    .line 84
    aput v6, v2, v5

    goto :goto_19

    :cond_2d
    if-eqz v10, :cond_2e

    if-nez v14, :cond_2e

    .line 85
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v14, v6

    :cond_2e
    :goto_19
    add-int/2addr v15, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v23

    goto :goto_18

    :cond_2f
    move/from16 v23, v6

    sub-int v5, v3, v18

    mul-int v5, v5, v4

    add-int/2addr v5, v15

    move-object/from16 v14, p2

    move/from16 v6, v18

    :goto_1a
    if-ge v6, v3, :cond_38

    move/from16 v18, v3

    .line 86
    iget v3, v1, Lnc;->c:I

    move/from16 v29, v7

    move/from16 v31, v8

    move v7, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 87
    :goto_1b
    iget v8, v0, Lqc;->p:I

    add-int/2addr v8, v15

    if-ge v7, v8, :cond_31

    iget-object v8, v0, Lqc;->i:[B

    move/from16 v32, v9

    array-length v9, v8

    if-ge v7, v9, :cond_32

    if-ge v7, v5, :cond_32

    .line 88
    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    .line 89
    iget-object v9, v0, Lqc;->a:[I

    aget v8, v9, v8

    if-eqz v8, :cond_30

    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v24, v24, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_30
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v32

    goto :goto_1b

    :cond_31
    move/from16 v32, v9

    :cond_32
    add-int/2addr v3, v15

    move v7, v3

    .line 90
    :goto_1c
    iget v8, v0, Lqc;->p:I

    add-int/2addr v8, v3

    if-ge v7, v8, :cond_34

    iget-object v8, v0, Lqc;->i:[B

    array-length v9, v8

    if-ge v7, v9, :cond_34

    if-ge v7, v5, :cond_34

    .line 91
    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    .line 92
    iget-object v9, v0, Lqc;->a:[I

    aget v8, v9, v8

    if-eqz v8, :cond_33

    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v24, v24, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_34
    if-nez v28, :cond_35

    const/4 v3, 0x0

    goto :goto_1d

    .line 93
    :cond_35
    div-int v24, v24, v28

    shl-int/lit8 v3, v24, 0x18

    div-int v25, v25, v28

    shl-int/lit8 v7, v25, 0x10

    or-int/2addr v3, v7

    div-int v26, v26, v28

    shl-int/lit8 v7, v26, 0x8

    or-int/2addr v3, v7

    div-int v27, v27, v28

    or-int v3, v3, v27

    :goto_1d
    if-eqz v3, :cond_36

    .line 94
    aput v3, v2, v6

    goto :goto_1e

    :cond_36
    if-eqz v10, :cond_37

    if-nez v14, :cond_37

    .line 95
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v14, v3

    :cond_37
    :goto_1e
    add-int/2addr v15, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move/from16 v7, v29

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_1a

    :cond_38
    move/from16 v29, v7

    move/from16 v31, v8

    move/from16 v32, v9

    goto :goto_1f

    :cond_39
    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v29, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v14, p2

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v20

    move/from16 v15, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v29

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_14

    :cond_3a
    move-object/from16 p2, v14

    .line 96
    iget-object v2, v0, Lqc;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_3c

    if-nez p2, :cond_3b

    const/4 v11, 0x0

    goto :goto_20

    .line 97
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 98
    :goto_20
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lqc;->s:Ljava/lang/Boolean;

    .line 99
    :cond_3c
    :goto_21
    iget-boolean v2, v0, Lqc;->n:Z

    if-eqz v2, :cond_3f

    iget v1, v1, Lnc;->g:I

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 100
    :cond_3d
    iget-object v1, v0, Lqc;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3e

    .line 101
    invoke-direct/range {p0 .. p0}, Lqc;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lqc;->m:Landroid/graphics/Bitmap;

    .line 102
    :cond_3e
    iget-object v1, v0, Lqc;->m:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lqc;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lqc;->q:I

    move-object/from16 v2, v34

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 103
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lqc;->h()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 104
    iget v7, v0, Lqc;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lqc;->q:I

    move-object v1, v9

    move-object/from16 v2, v34

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method


# virtual methods
.method public declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lqc;->l:Loc;

    iget v0, v0, Loc;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lqc;->k:I

    if-gez v0, :cond_2

    .line 2
    :cond_0
    sget-object v0, Lqc;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lqc;->l:Loc;

    iget v0, v0, Loc;->c:I

    .line 4
    :cond_1
    iput v2, p0, Lqc;->o:I

    .line 5
    :cond_2
    iget v0, p0, Lqc;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lqc;->o:I

    .line 7
    iget-object v5, p0, Lqc;->e:[B

    if-nez v5, :cond_4

    .line 8
    iget-object v5, p0, Lqc;->c:Lmc$a;

    const/16 v6, 0xff

    check-cast v5, Lii;

    invoke-virtual {v5, v6}, Lii;->b(I)[B

    move-result-object v5

    iput-object v5, p0, Lqc;->e:[B

    .line 9
    :cond_4
    iget-object v5, p0, Lqc;->l:Loc;

    iget-object v5, v5, Loc;->e:Ljava/util/List;

    iget v6, p0, Lqc;->k:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnc;

    .line 10
    iget v6, p0, Lqc;->k:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    .line 11
    iget-object v7, p0, Lqc;->l:Loc;

    iget-object v7, v7, Loc;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnc;

    goto :goto_0

    :cond_5
    move-object v6, v3

    .line 12
    :goto_0
    iget-object v7, v5, Lnc;->k:[I

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lqc;->l:Loc;

    iget-object v7, v7, Loc;->a:[I

    :goto_1
    iput-object v7, p0, Lqc;->a:[I

    if-nez v7, :cond_7

    .line 13
    sget-object v0, Lqc;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 14
    iput v2, p0, Lqc;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object v3

    .line 16
    :cond_7
    :try_start_1
    iget-boolean v1, v5, Lnc;->f:Z

    if-eqz v1, :cond_8

    .line 17
    iget-object v1, p0, Lqc;->b:[I

    array-length v2, v7

    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v1, p0, Lqc;->b:[I

    iput-object v1, p0, Lqc;->a:[I

    .line 19
    iget v2, v5, Lnc;->h:I

    aput v0, v1, v2

    .line 20
    iget v0, v5, Lnc;->g:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Lqc;->k:I

    if-nez v0, :cond_8

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lqc;->s:Ljava/lang/Boolean;

    .line 22
    :cond_8
    invoke-direct {p0, v5, v6}, Lqc;->j(Lnc;Lnc;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :cond_9
    :goto_2
    :try_start_2
    sget-object v0, Lqc;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lqc;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lqc;->l:Loc;

    iget v1, v1, Loc;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lqc;->k:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqc;->l:Loc;

    iget v0, v0, Loc;->c:I

    return v0
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lqc;->l:Loc;

    .line 2
    iget-object v1, p0, Lqc;->i:[B

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lqc;->c:Lmc$a;

    check-cast v2, Lii;

    invoke-virtual {v2, v1}, Lii;->e([B)V

    .line 4
    :cond_0
    iget-object v1, p0, Lqc;->j:[I

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lqc;->c:Lmc$a;

    check-cast v2, Lii;

    invoke-virtual {v2, v1}, Lii;->f([I)V

    .line 6
    :cond_1
    iget-object v1, p0, Lqc;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lqc;->c:Lmc$a;

    check-cast v2, Lii;

    invoke-virtual {v2, v1}, Lii;->d(Landroid/graphics/Bitmap;)V

    .line 8
    :cond_2
    iput-object v0, p0, Lqc;->m:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lqc;->d:Ljava/nio/ByteBuffer;

    .line 10
    iput-object v0, p0, Lqc;->s:Ljava/lang/Boolean;

    .line 11
    iget-object v0, p0, Lqc;->e:[B

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lqc;->c:Lmc$a;

    check-cast v1, Lii;

    invoke-virtual {v1, v0}, Lii;->e([B)V

    :cond_3
    return-void
.end method

.method public d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lqc;->l:Loc;

    iget v1, v0, Loc;->c:I

    if-lez v1, :cond_2

    iget v2, p0, Lqc;->k:I

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    if-ge v2, v1, :cond_1

    .line 2
    iget-object v0, v0, Loc;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc;

    iget v0, v0, Lnc;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lqc;->k:I

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lqc;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lqc;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lqc;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public i(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lqc;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method
