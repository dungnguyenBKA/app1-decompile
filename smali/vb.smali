.class final Lvb;
.super Lub;
.source "SourceFile"


# static fields
.field private static final m:Lak0;

.field private static final n:Lak0;

.field private static final o:Lak0;

.field private static final p:Lak0;

.field private static final q:Lak0;


# instance fields
.field private final g:Lzj0;

.field private final h:Lxj0;

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    .line 1
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lvb;->m:Lak0;

    const-string v0, "\"\\"

    .line 2
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lvb;->n:Lak0;

    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 3
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lvb;->o:Lak0;

    const-string v0, "\n\r"

    .line 4
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lvb;->p:Lak0;

    const-string v0, "*/"

    .line 5
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lvb;->q:Lak0;

    return-void
.end method

.method constructor <init>(Lzj0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lvb;->i:I

    const-string v0, "source == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lvb;->g:Lzj0;

    .line 5
    invoke-interface {p1}, Lzj0;->a()Lxj0;

    move-result-object p1

    iput-object p1, p0, Lvb;->h:Lxj0;

    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1}, Lub;->p0(I)V

    return-void
.end method

.method private A0()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lvb;->g:Lzj0;

    sget-object v1, Lvb;->o:Lak0;

    invoke-interface {v0, v1}, Lzj0;->w(Lak0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lvb;->h:Lxj0;

    invoke-virtual {v2, v0, v1}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvb;->h:Lxj0;

    invoke-virtual {v0}, Lxj0;->l0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private B0()C
    .locals 10

    .line 1
    iget-object v0, p0, Lvb;->g:Lzj0;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lzj0;->K(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lvb;->h:Lxj0;

    invoke-virtual {v0}, Lxj0;->readByte()B

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_b

    const/16 v3, 0x22

    if-eq v0, v3, :cond_b

    const/16 v3, 0x27

    if-eq v0, v3, :cond_b

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_b

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_b

    const/16 v3, 0x62

    if-eq v0, v3, :cond_a

    const/16 v3, 0x66

    if-eq v0, v3, :cond_9

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_8

    const/16 v4, 0x72

    if-eq v0, v4, :cond_7

    const/16 v4, 0x74

    if-eq v0, v4, :cond_6

    const/16 v4, 0x75

    if-ne v0, v4, :cond_5

    .line 3
    iget-object v0, p0, Lvb;->g:Lzj0;

    const-wide/16 v4, 0x4

    invoke-interface {v0, v4, v5}, Lzj0;->K(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v0, v7, :cond_3

    .line 4
    iget-object v7, p0, Lvb;->h:Lxj0;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lxj0;->V(J)B

    move-result v7

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    add-int/lit8 v7, v7, -0x30

    goto :goto_2

    :cond_0
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    if-gt v7, v3, :cond_1

    add-int/lit8 v7, v7, -0x61

    goto :goto_1

    :cond_1
    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    const/16 v8, 0x46

    if-gt v7, v8, :cond_2

    add-int/lit8 v7, v7, -0x41

    :goto_1
    add-int/2addr v7, v2

    :goto_2
    add-int/2addr v7, v6

    int-to-char v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "\\u"

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvb;->h:Lxj0;

    invoke-virtual {v2, v4, v5}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v1

    .line 6
    :cond_3
    iget-object v0, p0, Lvb;->h:Lxj0;

    invoke-virtual {v0, v4, v5}, Lxj0;->skip(J)V

    return v6

    .line 7
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unterminated escape sequence at path "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v2, "Invalid escape sequence: \\"

    .line 8
    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v1

    :cond_6
    const/16 v0, 0x9

    return v0

    :cond_7
    const/16 v0, 0xd

    return v0

    :cond_8
    return v2

    :cond_9
    const/16 v0, 0xc

    return v0

    :cond_a
    const/16 v0, 0x8

    return v0

    :cond_b
    int-to-char v0, v0

    return v0

    :cond_c
    const-string v0, "Unterminated escape sequence"

    .line 9
    invoke-virtual {p0, v0}, Lub;->t0(Ljava/lang/String;)Ltb;

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private C0(Lak0;)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lvb;->g:Lzj0;

    invoke-interface {v0, p1}, Lzj0;->w(Lak0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Lvb;->h:Lxj0;

    invoke-virtual {v2, v0, v1}, Lxj0;->V(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lvb;->h:Lxj0;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lxj0;->skip(J)V

    .line 4
    invoke-direct {p0}, Lvb;->B0()C

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lvb;->h:Lxj0;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lxj0;->skip(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    .line 6
    invoke-virtual {p0, p1}, Lub;->t0(Ljava/lang/String;)Ltb;

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private D0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvb;->g:Lzj0;

    sget-object v1, Lvb;->o:Lak0;

    invoke-interface {v0, v1}, Lzj0;->w(Lak0;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lvb;->h:Lxj0;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lxj0;->size()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lxj0;->skip(J)V

    return-void
.end method

.method private u0()V
    .locals 1

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1
    invoke-virtual {p0, v0}, Lub;->t0(Ljava/lang/String;)Ltb;

    const/4 v0, 0x0

    throw v0
.end method

.method private v0()I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lub;->c:[I

    iget v2, v0, Lub;->b:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/16 v7, 0x3b

    const/16 v8, 0x2c

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sub-int/2addr v2, v4

    .line 2
    aput v14, v1, v2

    goto :goto_0

    :cond_0
    if-ne v3, v14, :cond_3

    .line 3
    invoke-direct {v0, v4}, Lvb;->y0(Z)I

    move-result v1

    .line 4
    iget-object v2, v0, Lvb;->h:Lxj0;

    invoke-virtual {v2}, Lxj0;->readByte()B

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_2

    if-ne v1, v6, :cond_1

    .line 5
    iput v13, v0, Lvb;->i:I

    return v13

    :cond_1
    const-string v1, "Unterminated array"

    .line 6
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 7
    :cond_2
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    :cond_3
    if-eq v3, v10, :cond_3a

    if-ne v3, v12, :cond_4

    goto/16 :goto_15

    :cond_4
    if-ne v3, v13, :cond_6

    sub-int/2addr v2, v4

    .line 8
    aput v12, v1, v2

    .line 9
    invoke-direct {v0, v4}, Lvb;->y0(Z)I

    move-result v1

    .line 10
    iget-object v2, v0, Lvb;->h:Lxj0;

    invoke-virtual {v2}, Lxj0;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_5

    const-string v1, "Expected \':\'"

    .line 11
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 12
    :cond_5
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    :cond_6
    if-ne v3, v9, :cond_7

    sub-int/2addr v2, v4

    .line 13
    aput v11, v1, v2

    goto :goto_0

    :cond_7
    if-ne v3, v11, :cond_9

    .line 14
    invoke-direct {v0, v15}, Lvb;->y0(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const/16 v1, 0x12

    .line 15
    iput v1, v0, Lvb;->i:I

    return v1

    .line 16
    :cond_8
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    :cond_9
    const/16 v1, 0x8

    if-eq v3, v1, :cond_39

    .line 17
    :cond_a
    :goto_0
    invoke-direct {v0, v4}, Lvb;->y0(Z)I

    move-result v1

    if-eq v1, v5, :cond_38

    const/16 v2, 0x27

    if-eq v1, v2, :cond_37

    if-eq v1, v8, :cond_34

    if-eq v1, v7, :cond_34

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_33

    if-eq v1, v6, :cond_32

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_31

    .line 18
    iget-object v1, v0, Lvb;->h:Lxj0;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lxj0;->V(J)B

    move-result v1

    const/16 v5, 0x74

    if-eq v1, v5, :cond_f

    const/16 v5, 0x54

    if-ne v1, v5, :cond_b

    goto :goto_2

    :cond_b
    const/16 v5, 0x66

    if-eq v1, v5, :cond_e

    const/16 v5, 0x46

    if-ne v1, v5, :cond_c

    goto :goto_1

    :cond_c
    const/16 v5, 0x6e

    if-eq v1, v5, :cond_d

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_10

    :cond_d
    const-string v1, "null"

    const-string v5, "NULL"

    const/4 v6, 0x7

    goto :goto_3

    :cond_e
    :goto_1
    const-string v1, "false"

    const-string v5, "FALSE"

    const/4 v6, 0x6

    goto :goto_3

    :cond_f
    :goto_2
    const-string v1, "true"

    const-string v5, "TRUE"

    const/4 v6, 0x5

    .line 19
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    :goto_4
    if-ge v8, v7, :cond_13

    .line 20
    iget-object v15, v0, Lvb;->g:Lzj0;

    add-int/lit8 v11, v8, 0x1

    int-to-long v12, v11

    invoke-interface {v15, v12, v13}, Lzj0;->K(J)Z

    move-result v12

    if-nez v12, :cond_11

    :cond_10
    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    .line 21
    :cond_11
    iget-object v12, v0, Lvb;->h:Lxj0;

    int-to-long v9, v8

    invoke-virtual {v12, v9, v10}, Lxj0;->V(J)B

    move-result v9

    .line 22
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_12

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_12

    goto :goto_5

    :cond_12
    move v8, v11

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v15, 0x0

    goto :goto_4

    .line 23
    :cond_13
    iget-object v1, v0, Lvb;->g:Lzj0;

    add-int/lit8 v5, v7, 0x1

    int-to-long v8, v5

    invoke-interface {v1, v8, v9}, Lzj0;->K(J)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lvb;->h:Lxj0;

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Lxj0;->V(J)B

    move-result v1

    invoke-direct {v0, v1}, Lvb;->x0(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    .line 24
    :cond_14
    iget-object v1, v0, Lvb;->h:Lxj0;

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lxj0;->skip(J)V

    .line 25
    iput v6, v0, Lvb;->i:I

    :goto_6
    if-eqz v6, :cond_15

    return v6

    :cond_15
    move-wide v7, v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 26
    :goto_7
    iget-object v10, v0, Lvb;->g:Lzj0;

    add-int/lit8 v11, v5, 0x1

    int-to-long v2, v11

    invoke-interface {v10, v2, v3}, Lzj0;->K(J)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_8
    const/4 v2, 0x2

    goto/16 :goto_e

    .line 27
    :cond_16
    iget-object v2, v0, Lvb;->h:Lxj0;

    int-to-long v13, v5

    invoke-virtual {v2, v13, v14}, Lxj0;->V(J)B

    move-result v2

    const/16 v12, 0x2b

    if-eq v2, v12, :cond_2d

    const/16 v12, 0x45

    if-eq v2, v12, :cond_2b

    const/16 v12, 0x65

    if-eq v2, v12, :cond_2b

    const/16 v12, 0x2d

    if-eq v2, v12, :cond_29

    const/16 v12, 0x2e

    if-eq v2, v12, :cond_28

    const/16 v12, 0x30

    if-lt v2, v12, :cond_21

    const/16 v12, 0x39

    if-le v2, v12, :cond_17

    goto :goto_d

    :cond_17
    if-eq v1, v4, :cond_1f

    if-nez v1, :cond_18

    goto :goto_b

    :cond_18
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1c

    const-wide/16 v12, 0x0

    cmp-long v5, v7, v12

    if-nez v5, :cond_19

    goto/16 :goto_12

    :cond_19
    const-wide/16 v12, 0xa

    mul-long v12, v12, v7

    add-int/lit8 v2, v2, -0x30

    move v14, v11

    int-to-long v10, v2

    sub-long/2addr v12, v10

    const-wide v10, -0xcccccccccccccccL

    cmp-long v2, v7, v10

    if-gtz v2, :cond_1b

    cmp-long v2, v7, v10

    if-nez v2, :cond_1a

    cmp-long v2, v12, v7

    if-gez v2, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v2, 0x1

    :goto_a
    and-int/2addr v2, v6

    move v6, v2

    move-wide v7, v12

    const/4 v3, 0x6

    goto :goto_c

    :cond_1c
    move v14, v11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x6

    goto/16 :goto_11

    :cond_1d
    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq v1, v2, :cond_1e

    if-ne v1, v3, :cond_20

    :cond_1e
    const/4 v1, 0x7

    goto :goto_c

    :cond_1f
    :goto_b
    move v14, v11

    const/4 v3, 0x6

    add-int/lit8 v2, v2, -0x30

    neg-int v1, v2

    int-to-long v7, v1

    const/4 v1, 0x2

    :cond_20
    :goto_c
    const/4 v2, 0x7

    goto/16 :goto_11

    .line 28
    :cond_21
    :goto_d
    invoke-direct {v0, v2}, Lvb;->x0(I)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_8

    :goto_e
    if-ne v1, v2, :cond_26

    if-eqz v6, :cond_25

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v7, v2

    if-nez v4, :cond_22

    if-eqz v9, :cond_25

    :cond_22
    const-wide/16 v2, 0x0

    cmp-long v4, v7, v2

    if-nez v4, :cond_23

    if-nez v9, :cond_25

    :cond_23
    if-eqz v9, :cond_24

    goto :goto_f

    :cond_24
    neg-long v7, v7

    .line 29
    :goto_f
    iput-wide v7, v0, Lvb;->j:J

    .line 30
    iget-object v1, v0, Lvb;->h:Lxj0;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lxj0;->skip(J)V

    const/16 v15, 0x10

    .line 31
    iput v15, v0, Lvb;->i:I

    goto :goto_13

    :cond_25
    const/4 v2, 0x2

    :cond_26
    if-eq v1, v2, :cond_27

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2e

    .line 32
    :cond_27
    iput v5, v0, Lvb;->k:I

    const/16 v15, 0x11

    .line 33
    iput v15, v0, Lvb;->i:I

    goto :goto_13

    :cond_28
    move v14, v11

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2e

    const/4 v1, 0x3

    goto :goto_11

    :cond_29
    move v14, v11

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v5, 0x2

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_11

    :cond_2a
    const/4 v11, 0x5

    if-ne v1, v11, :cond_2e

    goto :goto_10

    :cond_2b
    move v14, v11

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v5, 0x2

    const/4 v11, 0x5

    if-eq v1, v5, :cond_2c

    const/4 v5, 0x4

    if-ne v1, v5, :cond_2e

    :cond_2c
    const/4 v1, 0x5

    goto :goto_11

    :cond_2d
    move v14, v11

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v11, 0x5

    if-ne v1, v11, :cond_2e

    :goto_10
    const/4 v1, 0x6

    :goto_11
    move v5, v14

    const-wide/16 v2, 0x0

    const/4 v14, 0x2

    goto/16 :goto_7

    :cond_2e
    :goto_12
    const/4 v15, 0x0

    :goto_13
    if-eqz v15, :cond_2f

    return v15

    .line 34
    :cond_2f
    iget-object v1, v0, Lvb;->h:Lxj0;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lxj0;->V(J)B

    move-result v1

    invoke-direct {v0, v1}, Lvb;->x0(I)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "Expected value"

    .line 35
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 36
    :cond_30
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 37
    :cond_31
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    .line 38
    iput v4, v0, Lvb;->i:I

    return v4

    :cond_32
    if-ne v3, v4, :cond_34

    .line 39
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    const/4 v1, 0x4

    .line 40
    iput v1, v0, Lvb;->i:I

    return v1

    .line 41
    :cond_33
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    const/4 v1, 0x3

    .line 42
    iput v1, v0, Lvb;->i:I

    return v1

    :cond_34
    if-eq v3, v4, :cond_36

    const/4 v1, 0x2

    if-ne v3, v1, :cond_35

    goto :goto_14

    :cond_35
    const-string v1, "Unexpected value"

    .line 43
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 44
    :cond_36
    :goto_14
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 45
    :cond_37
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 46
    :cond_38
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    const/16 v1, 0x9

    .line 47
    iput v1, v0, Lvb;->i:I

    return v1

    .line 48
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    :goto_15
    sub-int/2addr v2, v4

    const/4 v6, 0x4

    .line 49
    aput v6, v1, v2

    const/16 v1, 0x7d

    const/4 v2, 0x5

    if-ne v3, v2, :cond_3d

    .line 50
    invoke-direct {v0, v4}, Lvb;->y0(Z)I

    move-result v2

    .line 51
    iget-object v6, v0, Lvb;->h:Lxj0;

    invoke-virtual {v6}, Lxj0;->readByte()B

    if-eq v2, v8, :cond_3d

    if-eq v2, v7, :cond_3c

    if-ne v2, v1, :cond_3b

    const/4 v1, 0x2

    .line 52
    iput v1, v0, Lvb;->i:I

    return v1

    :cond_3b
    const-string v1, "Unterminated object"

    .line 53
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 54
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 55
    :cond_3d
    invoke-direct {v0, v4}, Lvb;->y0(Z)I

    move-result v2

    if-eq v2, v5, :cond_41

    const/16 v4, 0x27

    if-eq v2, v4, :cond_40

    if-ne v2, v1, :cond_3f

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3e

    .line 56
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    const/4 v1, 0x2

    .line 57
    iput v1, v0, Lvb;->i:I

    return v1

    :cond_3e
    const-string v1, "Expected name"

    .line 58
    invoke-virtual {v0, v1}, Lub;->t0(Ljava/lang/String;)Ltb;

    throw v16

    .line 59
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 60
    :cond_40
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    .line 61
    invoke-direct/range {p0 .. p0}, Lvb;->u0()V

    throw v16

    .line 62
    :cond_41
    iget-object v1, v0, Lvb;->h:Lxj0;

    invoke-virtual {v1}, Lxj0;->readByte()B

    const/16 v1, 0xd

    .line 63
    iput v1, v0, Lvb;->i:I

    return v1
.end method

.method private w0(Ljava/lang/String;Lub$a;)I
    .locals 4

    .line 1
    iget-object v0, p2, Lub$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p2, Lub$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iput v1, p0, Lvb;->i:I

    .line 4
    iget-object p2, p0, Lub;->d:[Ljava/lang/String;

    iget v0, p0, Lub;->b:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private x0(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lvb;->u0()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private y0(Z)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lvb;->g:Lzj0;

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lzj0;->K(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    iget-object v1, p0, Lvb;->h:Lxj0;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lxj0;->V(J)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lvb;->h:Lxj0;

    add-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Lxj0;->skip(J)V

    const/16 p1, 0x2f

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    .line 4
    iget-object p1, p0, Lvb;->g:Lzj0;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v2, v3}, Lzj0;->K(J)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lvb;->u0()V

    throw v1

    :cond_2
    const/16 p1, 0x23

    if-eq v0, p1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lvb;->u0()V

    throw v1

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private z0(Lak0;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lvb;->g:Lzj0;

    invoke-interface {v2, p1}, Lzj0;->w(Lak0;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 2
    iget-object v4, p0, Lvb;->h:Lxj0;

    invoke-virtual {v4, v2, v3}, Lxj0;->V(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :cond_0
    iget-object v4, p0, Lvb;->h:Lxj0;

    invoke-virtual {v4, v2, v3}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lvb;->h:Lxj0;

    invoke-virtual {v2}, Lxj0;->readByte()B

    .line 6
    invoke-direct {p0}, Lvb;->B0()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 7
    iget-object p1, p0, Lvb;->h:Lxj0;

    invoke-virtual {p1, v2, v3}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lvb;->h:Lxj0;

    invoke-virtual {v0}, Lxj0;->readByte()B

    return-object p1

    .line 9
    :cond_2
    iget-object p1, p0, Lvb;->h:Lxj0;

    invoke-virtual {p1, v2, v3}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Lvb;->h:Lxj0;

    invoke-virtual {p1}, Lxj0;->readByte()B

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    .line 12
    invoke-virtual {p0, p1}, Lub;->t0(Ljava/lang/String;)Ltb;

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public L()V
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lub;->p0(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lvb;->i:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Lsb;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S()V
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lub;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lub;->b:I

    .line 4
    iget-object v1, p0, Lub;->e:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvb;->i:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Lsb;

    const-string v1, "Expected END_ARRAY but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V()V
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lub;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lub;->b:I

    .line 4
    iget-object v1, p0, Lub;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5
    iget-object v1, p0, Lub;->e:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lvb;->i:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Lsb;

    const-string v1, "Expected END_OBJECT but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b0()Z
    .locals 2

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lvb;->i:I

    .line 2
    iget-object v1, p0, Lub;->c:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lub;->b:I

    .line 4
    iget-object v0, p0, Lvb;->h:Lxj0;

    invoke-virtual {v0}, Lxj0;->j()V

    .line 5
    iget-object v0, p0, Lvb;->g:Lzj0;

    invoke-interface {v0}, Lrk0;->close()V

    return-void
.end method

.method public i0()Z
    .locals 5

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lvb;->i:I

    .line 4
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5
    iput v2, p0, Lvb;->i:I

    .line 6
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 7
    :cond_2
    new-instance v0, Lsb;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j0()D
    .locals 8

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lvb;->i:I

    .line 4
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 5
    iget-wide v0, p0, Lvb;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lvb;->h:Lxj0;

    iget v1, p0, Lvb;->k:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 7
    sget-object v0, Lvb;->n:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 8
    sget-object v0, Lvb;->m:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 9
    invoke-direct {p0}, Lvb;->A0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    .line 10
    :goto_0
    iput v4, p0, Lvb;->i:I

    .line 11
    :try_start_0
    iget-object v0, p0, Lvb;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 13
    iput-object v3, p0, Lvb;->l:Ljava/lang/String;

    .line 14
    iput v2, p0, Lvb;->i:I

    .line 15
    iget-object v2, p0, Lub;->e:[I

    iget v3, p0, Lub;->b:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 16
    :cond_6
    new-instance v2, Ltb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ltb;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :catch_0
    new-instance v0, Lsb;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvb;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    new-instance v0, Lsb;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k0()I
    .locals 9

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 3
    iget-wide v0, p0, Lvb;->j:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 4
    iput v2, p0, Lvb;->i:I

    .line 5
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 6
    :cond_1
    new-instance v0, Lsb;

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lvb;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lvb;->h:Lxj0;

    iget v1, p0, Lvb;->k:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance v0, Lsb;

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 10
    sget-object v0, Lvb;->n:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_7
    sget-object v0, Lvb;->m:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 13
    iput v2, p0, Lvb;->i:I

    .line 14
    iget-object v1, p0, Lub;->e:[I

    iget v6, p0, Lub;->b:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15
    :catch_0
    :goto_2
    iput v5, p0, Lvb;->i:I

    .line 16
    :try_start_1
    iget-object v0, p0, Lvb;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lvb;->l:Ljava/lang/String;

    .line 18
    iput v2, p0, Lvb;->i:I

    .line 19
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 20
    :cond_8
    new-instance v0, Lsb;

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvb;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :catch_1
    new-instance v0, Lsb;

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvb;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l0()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lvb;->A0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lvb;->n:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lvb;->m:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lvb;->l:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lvb;->i:I

    .line 8
    iget-object v1, p0, Lub;->d:[Ljava/lang/String;

    iget v2, p0, Lub;->b:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lsb;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m0()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lvb;->A0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lvb;->n:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lvb;->m:Lak0;

    invoke-direct {p0, v0}, Lvb;->z0(Lak0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lvb;->l:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lvb;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 8
    iget-wide v0, p0, Lvb;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 9
    iget-object v0, p0, Lvb;->h:Lxj0;

    iget v1, p0, Lvb;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lxj0;->m0(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lvb;->i:I

    .line 11
    iget-object v1, p0, Lub;->e:[I

    iget v2, p0, Lub;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 12
    :cond_6
    new-instance v0, Lsb;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lub;->p0(I)V

    .line 4
    iget-object v1, p0, Lub;->e:[I

    iget v2, p0, Lub;->b:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    iput v0, p0, Lvb;->i:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Lsb;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o0()Lub$b;
    .locals 1

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    sget-object v0, Lub$b;->k:Lub$b;

    return-object v0

    .line 5
    :pswitch_1
    sget-object v0, Lub$b;->h:Lub$b;

    return-object v0

    .line 6
    :pswitch_2
    sget-object v0, Lub$b;->f:Lub$b;

    return-object v0

    .line 7
    :pswitch_3
    sget-object v0, Lub$b;->g:Lub$b;

    return-object v0

    .line 8
    :pswitch_4
    sget-object v0, Lub$b;->j:Lub$b;

    return-object v0

    .line 9
    :pswitch_5
    sget-object v0, Lub$b;->i:Lub$b;

    return-object v0

    .line 10
    :pswitch_6
    sget-object v0, Lub$b;->c:Lub$b;

    return-object v0

    .line 11
    :pswitch_7
    sget-object v0, Lub$b;->b:Lub$b;

    return-object v0

    .line 12
    :pswitch_8
    sget-object v0, Lub$b;->e:Lub$b;

    return-object v0

    .line 13
    :pswitch_9
    sget-object v0, Lub$b;->d:Lub$b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q0(Lub$a;)I
    .locals 4

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lvb;->l:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lvb;->w0(Ljava/lang/String;Lub$a;)I

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object v0, p0, Lvb;->g:Lzj0;

    iget-object v3, p1, Lub$a;->b:Lkk0;

    invoke-interface {v0, v3}, Lzj0;->h0(Lkk0;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lvb;->i:I

    .line 6
    iget-object v1, p0, Lub;->d:[Ljava/lang/String;

    iget v2, p0, Lub;->b:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lub$a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 7
    :cond_3
    iget-object v0, p0, Lub;->d:[Ljava/lang/String;

    iget v3, p0, Lub;->b:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 8
    invoke-virtual {p0}, Lvb;->l0()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-direct {p0, v3, p1}, Lvb;->w0(Ljava/lang/String;Lub$a;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 10
    iput v1, p0, Lvb;->i:I

    .line 11
    iput-object v3, p0, Lvb;->l:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lub;->d:[Ljava/lang/String;

    iget v2, p0, Lub;->b:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public r0()V
    .locals 3

    .line 1
    iget v0, p0, Lvb;->i:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lvb;->D0()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lvb;->n:Lak0;

    invoke-direct {p0, v0}, Lvb;->C0(Lak0;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lvb;->m:Lak0;

    invoke-direct {p0, v0}, Lvb;->C0(Lak0;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lvb;->i:I

    .line 7
    iget-object v0, p0, Lub;->d:[Ljava/lang/String;

    iget v1, p0, Lub;->b:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 8
    :cond_4
    new-instance v0, Lsb;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s0()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :cond_0
    iget v2, p0, Lvb;->i:I

    if-nez v2, :cond_1

    .line 2
    invoke-direct {p0}, Lvb;->v0()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 3
    invoke-virtual {p0, v4}, Lub;->p0(I)V

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    .line 4
    invoke-virtual {p0, v3}, Lub;->p0(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_3
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 5
    iget v2, p0, Lub;->b:I

    sub-int/2addr v2, v4

    iput v2, p0, Lub;->b:I

    goto/16 :goto_4

    .line 6
    :cond_4
    new-instance v0, Lsb;

    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 8
    iget v2, p0, Lub;->b:I

    sub-int/2addr v2, v4

    iput v2, p0, Lub;->b:I

    goto/16 :goto_4

    .line 9
    :cond_6
    new-instance v0, Lsb;

    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x9

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    .line 11
    iget-object v2, p0, Lvb;->h:Lxj0;

    iget v3, p0, Lvb;->k:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lxj0;->skip(J)V

    goto :goto_4

    :cond_b
    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    goto :goto_4

    .line 12
    :cond_c
    new-instance v0, Lsb;

    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lvb;->o0()Lub$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lub;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_d
    :goto_1
    sget-object v2, Lvb;->m:Lak0;

    invoke-direct {p0, v2}, Lvb;->C0(Lak0;)V

    goto :goto_4

    .line 15
    :cond_e
    :goto_2
    sget-object v2, Lvb;->n:Lak0;

    invoke-direct {p0, v2}, Lvb;->C0(Lak0;)V

    goto :goto_4

    .line 16
    :cond_f
    :goto_3
    invoke-direct {p0}, Lvb;->D0()V

    .line 17
    :goto_4
    iput v0, p0, Lvb;->i:I

    if-nez v1, :cond_0

    .line 18
    iget-object v0, p0, Lub;->e:[I

    iget v1, p0, Lub;->b:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 19
    iget-object v0, p0, Lub;->d:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JsonReader("

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvb;->g:Lzj0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
