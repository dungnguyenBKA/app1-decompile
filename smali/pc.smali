.class public Lpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Loc;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lpc;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lpc;->d:I

    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpc;->c:Loc;

    iget v0, v0, Loc;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lpc;->c:Loc;

    const/4 v1, 0x1

    iput v1, v0, Loc;->b:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lpc;->d()I

    move-result v0

    iput v0, p0, Lpc;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget v1, p0, Lpc;->d:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lpc;->a:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    nop

    const/4 v0, 0x3

    const-string v1, "GifHeaderParser"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 5
    iget-object v0, p0, Lpc;->c:Loc;

    const/4 v1, 0x1

    iput v1, v0, Loc;->b:I

    :cond_0
    return-void
.end method

.method private f(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 4
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 5
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 6
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    nop

    const-string p1, "GifHeaderParser"

    const/4 v0, 0x3

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 8
    iget-object p1, p0, Lpc;->c:Loc;

    const/4 v0, 0x1

    iput v0, p1, Loc;->b:I

    :cond_0
    return-object v1
.end method

.method private g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    .line 1
    :cond_0
    invoke-direct {p0}, Lpc;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lpc;->c:Loc;

    return-void
.end method

.method public c()Loc;
    .locals 9

    .line 1
    iget-object v0, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1b

    .line 2
    invoke-direct {p0}, Lpc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lpc;->c:Loc;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 5
    invoke-direct {p0}, Lpc;->d()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lpc;->c:Loc;

    iput v4, v0, Loc;->b:I

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lpc;->c:Loc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v5

    iput v5, v0, Loc;->f:I

    .line 9
    iget-object v0, p0, Lpc;->c:Loc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v5

    iput v5, v0, Loc;->g:I

    .line 10
    invoke-direct {p0}, Lpc;->d()I

    move-result v0

    .line 11
    iget-object v5, p0, Lpc;->c:Loc;

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v5, Loc;->h:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    int-to-double v6, v0

    .line 12
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    iput v0, v5, Loc;->i:I

    .line 13
    iget-object v0, p0, Lpc;->c:Loc;

    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    iput v5, v0, Loc;->j:I

    .line 14
    iget-object v0, p0, Lpc;->c:Loc;

    invoke-direct {p0}, Lpc;->d()I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lpc;->c:Loc;

    iget-boolean v0, v0, Loc;->h:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lpc;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lpc;->c:Loc;

    iget v5, v0, Loc;->i:I

    invoke-direct {p0, v5}, Lpc;->f(I)[I

    move-result-object v5

    iput-object v5, v0, Loc;->a:[I

    .line 17
    iget-object v0, p0, Lpc;->c:Loc;

    iget-object v5, v0, Loc;->a:[I

    iget v6, v0, Loc;->j:I

    aget v5, v5, v6

    iput v5, v0, Loc;->k:I

    .line 18
    :cond_4
    :goto_2
    invoke-direct {p0}, Lpc;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :cond_5
    :goto_3
    if-nez v0, :cond_19

    .line 19
    invoke-direct {p0}, Lpc;->b()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, p0, Lpc;->c:Loc;

    iget v5, v5, Loc;->c:I

    const v6, 0x7fffffff

    if-gt v5, v6, :cond_19

    .line 20
    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_d

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_6

    .line 21
    iget-object v5, p0, Lpc;->c:Loc;

    iput v4, v5, Loc;->b:I

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 22
    :cond_7
    iget-object v5, p0, Lpc;->c:Loc;

    iget-object v6, v5, Loc;->d:Lnc;

    if-nez v6, :cond_8

    .line 23
    new-instance v6, Lnc;

    invoke-direct {v6}, Lnc;-><init>()V

    iput-object v6, v5, Loc;->d:Lnc;

    .line 24
    :cond_8
    iget-object v5, v5, Loc;->d:Lnc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v6

    iput v6, v5, Lnc;->a:I

    .line 25
    iget-object v5, p0, Lpc;->c:Loc;

    iget-object v5, v5, Loc;->d:Lnc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v6

    iput v6, v5, Lnc;->b:I

    .line 26
    iget-object v5, p0, Lpc;->c:Loc;

    iget-object v5, v5, Loc;->d:Lnc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v6

    iput v6, v5, Lnc;->c:I

    .line 27
    iget-object v5, p0, Lpc;->c:Loc;

    iget-object v5, v5, Loc;->d:Lnc;

    invoke-direct {p0}, Lpc;->g()I

    move-result v6

    iput v6, v5, Lnc;->d:I

    .line 28
    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    and-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v4

    int-to-double v7, v7

    .line 29
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    .line 30
    iget-object v8, p0, Lpc;->c:Loc;

    iget-object v8, v8, Loc;->d:Lnc;

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v8, Lnc;->e:Z

    if-eqz v6, :cond_b

    .line 31
    invoke-direct {p0, v7}, Lpc;->f(I)[I

    move-result-object v5

    iput-object v5, v8, Lnc;->k:[I

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    .line 32
    iput-object v5, v8, Lnc;->k:[I

    .line 33
    :goto_6
    iget-object v5, p0, Lpc;->c:Loc;

    iget-object v5, v5, Loc;->d:Lnc;

    iget-object v6, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, v5, Lnc;->j:I

    .line 34
    invoke-direct {p0}, Lpc;->d()I

    .line 35
    invoke-direct {p0}, Lpc;->i()V

    .line 36
    invoke-direct {p0}, Lpc;->b()Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_3

    .line 37
    :cond_c
    iget-object v5, p0, Lpc;->c:Loc;

    iget v6, v5, Loc;->c:I

    add-int/2addr v6, v4

    iput v6, v5, Loc;->c:I

    .line 38
    iget-object v6, v5, Loc;->e:Ljava/util/List;

    iget-object v5, v5, Loc;->d:Lnc;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 39
    :cond_d
    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    if-eq v5, v4, :cond_18

    const/16 v6, 0xf9

    const/4 v7, 0x2

    if-eq v5, v6, :cond_14

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_13

    const/16 v6, 0xff

    if-eq v5, v6, :cond_e

    .line 40
    invoke-direct {p0}, Lpc;->i()V

    goto/16 :goto_3

    .line 41
    :cond_e
    invoke-direct {p0}, Lpc;->e()V

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_7
    const/16 v8, 0xb

    if-ge v6, v8, :cond_f

    .line 43
    iget-object v8, p0, Lpc;->a:[B

    aget-byte v8, v8, v6

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 44
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NETSCAPE2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 45
    :cond_10
    invoke-direct {p0}, Lpc;->e()V

    .line 46
    iget-object v5, p0, Lpc;->a:[B

    aget-byte v6, v5, v1

    if-ne v6, v4, :cond_11

    .line 47
    aget-byte v6, v5, v4

    .line 48
    aget-byte v5, v5, v7

    .line 49
    iget-object v5, p0, Lpc;->c:Loc;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_11
    iget v5, p0, Lpc;->d:I

    if-lez v5, :cond_5

    invoke-direct {p0}, Lpc;->b()Z

    move-result v5

    if-eqz v5, :cond_10

    goto/16 :goto_3

    .line 51
    :cond_12
    invoke-direct {p0}, Lpc;->i()V

    goto/16 :goto_3

    .line 52
    :cond_13
    invoke-direct {p0}, Lpc;->i()V

    goto/16 :goto_3

    .line 53
    :cond_14
    iget-object v5, p0, Lpc;->c:Loc;

    new-instance v6, Lnc;

    invoke-direct {v6}, Lnc;-><init>()V

    iput-object v6, v5, Loc;->d:Lnc;

    .line 54
    invoke-direct {p0}, Lpc;->d()I

    .line 55
    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    .line 56
    iget-object v6, p0, Lpc;->c:Loc;

    iget-object v6, v6, Loc;->d:Lnc;

    and-int/lit8 v8, v5, 0x1c

    shr-int/2addr v8, v7

    iput v8, v6, Lnc;->g:I

    if-nez v8, :cond_15

    .line 57
    iput v4, v6, Lnc;->g:I

    :cond_15
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    .line 58
    :goto_8
    iput-boolean v5, v6, Lnc;->f:Z

    .line 59
    invoke-direct {p0}, Lpc;->g()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v7, :cond_17

    const/16 v5, 0xa

    .line 60
    :cond_17
    iget-object v7, p0, Lpc;->c:Loc;

    iget-object v7, v7, Loc;->d:Lnc;

    mul-int/lit8 v5, v5, 0xa

    iput v5, v7, Lnc;->i:I

    .line 61
    invoke-direct {p0}, Lpc;->d()I

    move-result v5

    iput v5, v7, Lnc;->h:I

    .line 62
    invoke-direct {p0}, Lpc;->d()I

    goto/16 :goto_3

    .line 63
    :cond_18
    invoke-direct {p0}, Lpc;->i()V

    goto/16 :goto_3

    .line 64
    :cond_19
    iget-object v0, p0, Lpc;->c:Loc;

    iget v1, v0, Loc;->c:I

    if-gez v1, :cond_1a

    .line 65
    iput v4, v0, Loc;->b:I

    .line 66
    :cond_1a
    iget-object v0, p0, Lpc;->c:Loc;

    return-object v0

    .line 67
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public h(Ljava/nio/ByteBuffer;)Lpc;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lpc;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    new-instance v0, Loc;

    invoke-direct {v0}, Loc;-><init>()V

    iput-object v0, p0, Lpc;->c:Loc;

    .line 4
    iput v1, p0, Lpc;->d:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lpc;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method
