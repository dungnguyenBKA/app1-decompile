.class public final Lvg0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvg0;->j:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvg0;->k:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvg0;->l:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvg0;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvg0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lvg0;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lvg0;->c:J

    .line 5
    iput-object p5, p0, Lvg0;->d:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lvg0;->e:Ljava/lang/String;

    .line 7
    iput-boolean p7, p0, Lvg0;->f:Z

    .line 8
    iput-boolean p8, p0, Lvg0;->g:Z

    .line 9
    iput-boolean p9, p0, Lvg0;->i:Z

    .line 10
    iput-boolean p10, p0, Lvg0;->h:Z

    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_5

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return p2
.end method

.method public static c(Ldh0;Lch0;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh0;",
            "Lch0;",
            ")",
            "Ljava/util/List<",
            "Lvg0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lch0;->f()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 2
    invoke-virtual {v0, v4}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Set-Cookie"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 5
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v4, :cond_25

    .line 8
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3b

    .line 11
    invoke-static {v7, v3, v10, v11}, Lrh0;->k(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v12, 0x3d

    .line 12
    invoke-static {v7, v3, v0, v12}, Lrh0;->k(Ljava/lang/String;IIC)I

    move-result v13

    if-ne v13, v0, :cond_5

    :cond_4
    :goto_3
    move-object/from16 v7, p0

    goto/16 :goto_f

    .line 13
    :cond_5
    invoke-static {v7, v3, v13}, Lrh0;->B(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v15}, Lrh0;->s(Ljava/lang/String;)I

    move-result v14

    const/4 v2, -0x1

    if-eq v14, v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 15
    invoke-static {v7, v13, v0}, Lrh0;->B(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-static/range {v16 .. v16}, Lrh0;->s(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v2, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    const-wide v17, 0xe677d21fdbffL

    const/4 v2, 0x1

    move-wide/from16 v25, v17

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_4
    const-wide v29, 0x7fffffffffffffffL

    const-wide/high16 v31, -0x8000000000000000L

    if-ge v0, v10, :cond_15

    .line 17
    invoke-static {v7, v0, v10, v11}, Lrh0;->k(Ljava/lang/String;IIC)I

    move-result v13

    .line 18
    invoke-static {v7, v0, v13, v12}, Lrh0;->k(Ljava/lang/String;IIC)I

    move-result v14

    .line 19
    invoke-static {v7, v0, v14}, Lrh0;->B(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v14, v13, :cond_8

    add-int/lit8 v14, v14, 0x1

    .line 20
    invoke-static {v7, v14, v13}, Lrh0;->B(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_8
    const-string v14, ""

    :goto_5
    const-string v11, "expires"

    .line 21
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 22
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v14, v3, v0}, Lvg0;->d(Ljava/lang/String;II)J

    move-result-wide v25
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_7

    :cond_9
    const-string v11, "max-age"

    .line 23
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 24
    :try_start_1
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v29, 0x0

    cmp-long v0, v19, v29

    if-gtz v0, :cond_b

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v11, v0

    :try_start_2
    const-string v0, "-?\\d+"

    .line 25
    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "-"

    .line 26
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_6
    move-wide/from16 v19, v31

    goto :goto_7

    :cond_a
    move-wide/from16 v19, v29

    :cond_b
    :goto_7
    const/16 v24, 0x1

    goto :goto_8

    .line 27
    :cond_c
    throw v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    const-string v11, "domain"

    .line 28
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    :try_start_3
    const-string v0, "."

    .line 29
    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 30
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 32
    :cond_e
    invoke-static {v14}, Lrh0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object/from16 v27, v0

    const/16 v23, 0x0

    goto :goto_8

    .line 33
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    const-string v11, "path"

    .line 35
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    move-object/from16 v28, v14

    goto :goto_8

    :cond_12
    const-string v11, "secure"

    .line 36
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const/16 v21, 0x1

    goto :goto_8

    :cond_13
    const-string v11, "httponly"

    .line 37
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v22, 0x1

    :catch_1
    :cond_14
    :goto_8
    add-int/lit8 v0, v13, 0x1

    const/16 v11, 0x3b

    goto/16 :goto_4

    :cond_15
    cmp-long v0, v19, v31

    if-nez v0, :cond_16

    move-object/from16 v7, p0

    move-wide/from16 v17, v31

    goto :goto_a

    :cond_16
    const-wide/16 v10, -0x1

    cmp-long v0, v19, v10

    if-eqz v0, :cond_1a

    const-wide v10, 0x20c49ba5e353f7L

    cmp-long v0, v19, v10

    if-gtz v0, :cond_17

    const-wide/16 v10, 0x3e8

    mul-long v29, v19, v10

    :cond_17
    add-long v29, v8, v29

    cmp-long v0, v29, v8

    if-ltz v0, :cond_19

    cmp-long v0, v29, v17

    if-lez v0, :cond_18

    goto :goto_9

    :cond_18
    move-object/from16 v7, p0

    move-wide/from16 v17, v29

    goto :goto_a

    :cond_19
    :goto_9
    move-object/from16 v7, p0

    goto :goto_a

    :cond_1a
    move-object/from16 v7, p0

    move-wide/from16 v17, v25

    .line 38
    :goto_a
    iget-object v0, v7, Ldh0;->d:Ljava/lang/String;

    move-object/from16 v8, v27

    if-nez v8, :cond_1b

    move-object v8, v0

    goto :goto_c

    .line 39
    :cond_1b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_b

    .line 40
    :cond_1c
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_1d

    .line 42
    invoke-static {v0}, Lrh0;->C(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_1e

    goto :goto_f

    .line 43
    :cond_1e
    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1f

    .line 44
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    const-string v0, "/"

    move-object/from16 v2, v28

    if-eqz v2, :cond_21

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_d

    :cond_20
    move-object/from16 v20, v2

    goto :goto_e

    .line 46
    :cond_21
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ldh0;->e()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x2f

    .line 47
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-eqz v9, :cond_22

    .line 48
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_22
    move-object/from16 v20, v0

    .line 49
    :goto_e
    new-instance v0, Lvg0;

    move-object v14, v0

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v24}, Lvg0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_10

    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_23

    goto :goto_11

    :cond_23
    if-nez v6, :cond_24

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 51
    :cond_24
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_25
    if-eqz v6, :cond_26

    .line 52
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    .line 53
    :cond_26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method private static d(Ljava/lang/String;II)J
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lvg0;->a(Ljava/lang/String;IIZ)I

    move-result p1

    .line 2
    sget-object v1, Lvg0;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge p1, p2, :cond_4

    add-int/lit8 v11, p1, 0x1

    .line 3
    invoke-static {p0, v11, p2, v10}, Lvg0;->a(Ljava/lang/String;IIZ)I

    move-result v11

    .line 4
    invoke-virtual {v1, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v4, v2, :cond_0

    .line 5
    sget-object p1, Lvg0;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p1, 0x3

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_0
    if-ne v5, v2, :cond_1

    .line 9
    sget-object p1, Lvg0;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    if-ne v6, v2, :cond_2

    .line 11
    sget-object p1, Lvg0;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 12
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 v6, p1, 0x4

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    .line 14
    sget-object p1, Lvg0;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 16
    invoke-static {p0, v11, p2, v0}, Lvg0;->a(Ljava/lang/String;IIZ)I

    move-result p1

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x46

    if-lt v3, p0, :cond_5

    const/16 p0, 0x63

    if-gt v3, p0, :cond_5

    add-int/lit16 v3, v3, 0x76c

    :cond_5
    if-ltz v3, :cond_6

    const/16 p0, 0x45

    if-gt v3, p0, :cond_6

    add-int/lit16 v3, v3, 0x7d0

    :cond_6
    const/16 p0, 0x641

    if-lt v3, p0, :cond_c

    if-eq v6, v2, :cond_b

    if-lt v5, v10, :cond_a

    const/16 p0, 0x1f

    if-gt v5, p0, :cond_a

    if-ltz v4, :cond_9

    const/16 p0, 0x17

    if-gt v4, p0, :cond_9

    if-ltz v7, :cond_8

    const/16 p0, 0x3b

    if-gt v7, p0, :cond_8

    if-ltz v8, :cond_7

    if-gt v8, p0, :cond_7

    .line 17
    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lrh0;->n:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 19
    invoke-virtual {p0, v10, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v6, v10

    .line 20
    invoke-virtual {p0, v9, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 22
    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 23
    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 24
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 25
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 26
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    .line 27
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 28
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 29
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 30
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 31
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 32
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvg0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvg0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lvg0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lvg0;

    .line 3
    iget-object v0, p1, Lvg0;->a:Ljava/lang/String;

    iget-object v2, p0, Lvg0;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvg0;->b:Ljava/lang/String;

    iget-object v2, p0, Lvg0;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvg0;->d:Ljava/lang/String;

    iget-object v2, p0, Lvg0;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvg0;->e:Ljava/lang/String;

    iget-object v2, p0, Lvg0;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lvg0;->c:J

    iget-wide v4, p0, Lvg0;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lvg0;->f:Z

    iget-boolean v2, p0, Lvg0;->f:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lvg0;->g:Z

    iget-boolean v2, p0, Lvg0;->g:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lvg0;->h:Z

    iget-boolean v2, p0, Lvg0;->h:Z

    if-ne v0, v2, :cond_1

    iget-boolean p1, p1, Lvg0;->i:Z

    iget-boolean v0, p0, Lvg0;->i:Z

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lvg0;->a:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lic;->w(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lvg0;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lic;->w(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lvg0;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lic;->w(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lvg0;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lic;->w(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-wide v1, p0, Lvg0;->c:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lvg0;->f:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lvg0;->g:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lvg0;->h:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lvg0;->i:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lvg0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lvg0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lvg0;->h:Z

    if-eqz v1, :cond_1

    .line 6
    iget-wide v1, p0, Lvg0;->c:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "; max-age=0"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lvg0;->c:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lhi0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lvg0;->i:Z

    if-nez v1, :cond_2

    const-string v1, "; domain="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lvg0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "; path="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvg0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v1, p0, Lvg0;->f:Z

    if-eqz v1, :cond_3

    const-string v1, "; secure"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-boolean v1, p0, Lvg0;->g:Z

    if-eqz v1, :cond_4

    const-string v1, "; httponly"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
