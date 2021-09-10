.class public Lcom/caverock/androidsvg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/a$a;,
        Lcom/caverock/androidsvg/a$b;,
        Lcom/caverock/androidsvg/a$c;,
        Lcom/caverock/androidsvg/a$d;,
        Lcom/caverock/androidsvg/a$e;,
        Lcom/caverock/androidsvg/a$f;,
        Lcom/caverock/androidsvg/a$g;,
        Lcom/caverock/androidsvg/a$h;,
        Lcom/caverock/androidsvg/a$i;
    }
.end annotation


# instance fields
.field private a:Lcom/caverock/androidsvg/a$e;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/a$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/a$e;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/caverock/androidsvg/a;->b:Z

    .line 4
    iput-object p1, p0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/a$e;

    return-void
.end method

.method private static a(Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$i0;",
            ">;I",
            "Lcom/caverock/androidsvg/c$k0;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1}, Lcom/caverock/androidsvg/c$i0;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/c$m0;

    if-ne v1, p2, :cond_3

    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/caverock/androidsvg/a$e;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/a$c;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 3
    invoke-static {v0}, Lcom/caverock/androidsvg/a;->e(Lcom/caverock/androidsvg/a$c;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/a;->c(Ljava/util/List;Lcom/caverock/androidsvg/a$e;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid @media type list"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/util/List;Lcom/caverock/androidsvg/a$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/a$e;",
            ">;",
            "Lcom/caverock/androidsvg/a$e;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/a$e;

    .line 2
    sget-object v1, Lcom/caverock/androidsvg/a$e;->b:Lcom/caverock/androidsvg/a$e;

    if-eq v0, v1, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static e(Lcom/caverock/androidsvg/a$c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/a$c;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/a$e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/f$b;->m(C)Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/a$e;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/f$b;->p()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    .line 6
    :catch_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid @media type list"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private f(Lcom/caverock/androidsvg/a$c;)Lcom/caverock/androidsvg/a$g;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/caverock/androidsvg/a$g;

    invoke-direct {v2}, Lcom/caverock/androidsvg/a$g;-><init>()V

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1d

    :cond_0
    const-string v3, "<!--"

    .line 3
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "-->"

    .line 4
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x40

    .line 5
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v3

    const/16 v4, 0x7b

    const/16 v5, 0x7d

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_c

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    if-eqz v3, :cond_b

    .line 8
    iget-boolean v9, v0, Lcom/caverock/androidsvg/a;->b:Z

    if-nez v9, :cond_6

    const-string v9, "media"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/caverock/androidsvg/a;->e(Lcom/caverock/androidsvg/a$c;)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 12
    iget-object v4, v0, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/a$e;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/a;->c(Ljava/util/List;Lcom/caverock/androidsvg/a$e;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iput-boolean v8, v0, Lcom/caverock/androidsvg/a;->b:Z

    .line 14
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/a;->f(Lcom/caverock/androidsvg/a$c;)Lcom/caverock/androidsvg/a$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/a$g;->b(Lcom/caverock/androidsvg/a$g;)V

    .line 15
    iput-boolean v7, v0, Lcom/caverock/androidsvg/a;->b:Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/a;->f(Lcom/caverock/androidsvg/a$c;)Lcom/caverock/androidsvg/a$g;

    .line 17
    :goto_1
    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_5
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid @media rule: missing rule set"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v7

    const-string v3, "Ignoring @%s rule"

    .line 20
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "AndroidSVG CSSParser"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_9

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    if-ne v3, v4, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v5, :cond_7

    if-lez v7, :cond_7

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_7

    .line 23
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    goto/16 :goto_0

    .line 24
    :cond_b
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid \'@\' rule in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v3

    const/16 v9, 0x3a

    const/4 v10, 0x0

    if-eqz v3, :cond_d

    move-object v3, v10

    goto/16 :goto_12

    .line 26
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    new-instance v11, Lcom/caverock/androidsvg/a$h;

    invoke-direct {v11}, Lcom/caverock/androidsvg/a$h;-><init>()V

    .line 28
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v12

    if-eqz v12, :cond_e

    goto/16 :goto_10

    .line 29
    :cond_e
    sget-object v12, Lcom/caverock/androidsvg/a$b;->c:Lcom/caverock/androidsvg/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v13

    if-eqz v13, :cond_f

    goto/16 :goto_d

    .line 30
    :cond_f
    iget v13, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 31
    iget-object v14, v11, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    if-nez v14, :cond_10

    const/4 v14, 0x1

    goto :goto_5

    :cond_10
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    :goto_5
    if-nez v14, :cond_12

    const/16 v14, 0x3e

    .line 32
    invoke-virtual {v1, v14}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 33
    sget-object v14, Lcom/caverock/androidsvg/a$d;->c:Lcom/caverock/androidsvg/a$d;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_6

    :cond_11
    const/16 v14, 0x2b

    .line 35
    invoke-virtual {v1, v14}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 36
    sget-object v14, Lcom/caverock/androidsvg/a$d;->d:Lcom/caverock/androidsvg/a$d;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_6

    :cond_12
    move-object v14, v10

    :goto_6
    const/16 v15, 0x2a

    .line 38
    invoke-virtual {v1, v15}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 39
    new-instance v15, Lcom/caverock/androidsvg/a$i;

    invoke-direct {v15, v14, v10}, Lcom/caverock/androidsvg/a$i;-><init>(Lcom/caverock/androidsvg/a$d;Ljava/lang/String;)V

    goto :goto_7

    .line 40
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 41
    new-instance v7, Lcom/caverock/androidsvg/a$i;

    invoke-direct {v7, v14, v15}, Lcom/caverock/androidsvg/a$i;-><init>(Lcom/caverock/androidsvg/a$d;Ljava/lang/String;)V

    .line 42
    iget v15, v11, Lcom/caverock/androidsvg/a$h;->b:I

    add-int/2addr v15, v8

    iput v15, v11, Lcom/caverock/androidsvg/a$h;->b:I

    move-object v15, v7

    goto :goto_7

    :cond_14
    move-object v15, v10

    .line 43
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_c

    :cond_15
    const/16 v7, 0x2e

    .line 44
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v7

    if-eqz v7, :cond_18

    if-nez v15, :cond_16

    .line 45
    new-instance v7, Lcom/caverock/androidsvg/a$i;

    invoke-direct {v7, v14, v10}, Lcom/caverock/androidsvg/a$i;-><init>(Lcom/caverock/androidsvg/a$d;Ljava/lang/String;)V

    move-object v15, v7

    .line 46
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    const-string v8, "class"

    .line 47
    invoke-virtual {v15, v8, v12, v7}, Lcom/caverock/androidsvg/a$i;->a(Ljava/lang/String;Lcom/caverock/androidsvg/a$b;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v11}, Lcom/caverock/androidsvg/a$h;->a()V

    const/4 v8, 0x1

    goto :goto_7

    .line 49
    :cond_17
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid \".class\" selector in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const/16 v7, 0x23

    .line 50
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v7

    if-eqz v7, :cond_1b

    if-nez v15, :cond_19

    .line 51
    new-instance v15, Lcom/caverock/androidsvg/a$i;

    invoke-direct {v15, v14, v10}, Lcom/caverock/androidsvg/a$i;-><init>(Lcom/caverock/androidsvg/a$d;Ljava/lang/String;)V

    .line 52
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    const-string v8, "id"

    .line 53
    invoke-virtual {v15, v8, v12, v7}, Lcom/caverock/androidsvg/a$i;->a(Ljava/lang/String;Lcom/caverock/androidsvg/a$b;Ljava/lang/String;)V

    .line 54
    iget v7, v11, Lcom/caverock/androidsvg/a$h;->b:I

    add-int/lit16 v7, v7, 0x2710

    iput v7, v11, Lcom/caverock/androidsvg/a$h;->b:I

    goto :goto_8

    .line 55
    :cond_1a
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_8
    if-nez v15, :cond_1c

    goto/16 :goto_c

    :cond_1c
    const/16 v7, 0x5b

    .line 56
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid attribute selector in <style> element"

    if-eqz v7, :cond_26

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    const/16 v10, 0x3d

    .line 60
    invoke-virtual {v1, v10}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v10

    if-eqz v10, :cond_1d

    move-object v10, v12

    goto :goto_9

    :cond_1d
    const-string v10, "~="

    .line 61
    invoke-virtual {v1, v10}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 62
    sget-object v10, Lcom/caverock/androidsvg/a$b;->d:Lcom/caverock/androidsvg/a$b;

    goto :goto_9

    :cond_1e
    const-string v10, "|="

    .line 63
    invoke-virtual {v1, v10}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 64
    sget-object v10, Lcom/caverock/androidsvg/a$b;->e:Lcom/caverock/androidsvg/a$b;

    goto :goto_9

    :cond_1f
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_23

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v16

    if-eqz v16, :cond_20

    const/16 v16, 0x0

    goto :goto_a

    .line 67
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->k()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_21

    goto :goto_a

    .line 68
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v16

    :goto_a
    if-eqz v16, :cond_22

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    move-object/from16 v5, v16

    goto :goto_b

    .line 70
    :cond_22
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    const/4 v5, 0x0

    :goto_b
    const/16 v6, 0x5d

    .line 71
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-eqz v6, :cond_25

    if-nez v10, :cond_24

    .line 72
    sget-object v10, Lcom/caverock/androidsvg/a$b;->b:Lcom/caverock/androidsvg/a$b;

    :cond_24
    invoke-virtual {v15, v7, v10, v5}, Lcom/caverock/androidsvg/a$i;->a(Ljava/lang/String;Lcom/caverock/androidsvg/a$b;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v11}, Lcom/caverock/androidsvg/a$h;->a()V

    const/16 v5, 0x7d

    const/16 v6, 0x3b

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 74
    :cond_25
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_26
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_27
    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 77
    iget v5, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2a

    const/16 v6, 0x28

    .line 79
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    const/16 v6, 0x29

    .line 83
    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-nez v6, :cond_28

    add-int/lit8 v5, v5, -0x1

    .line 84
    iput v5, v1, Lcom/caverock/androidsvg/f$b;->b:I

    goto :goto_c

    .line 85
    :cond_28
    iget-object v6, v1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    iget v7, v1, Lcom/caverock/androidsvg/f$b;->b:I

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 86
    iget-object v6, v15, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    if-nez v6, :cond_29

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v15, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    .line 88
    :cond_29
    iget-object v6, v15, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v11}, Lcom/caverock/androidsvg/a$h;->a()V

    :cond_2a
    :goto_c
    if-eqz v15, :cond_2c

    .line 90
    iget-object v5, v11, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    if-nez v5, :cond_2b

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v11, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    .line 92
    :cond_2b
    iget-object v5, v11, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_e

    .line 93
    :cond_2c
    iput v13, v1, Lcom/caverock/androidsvg/f$b;->b:I

    :goto_d
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_2e

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->p()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_f

    .line 95
    :cond_2d
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v5, Lcom/caverock/androidsvg/a$h;

    invoke-direct {v5}, Lcom/caverock/androidsvg/a$h;-><init>()V

    move-object v11, v5

    :goto_f
    const/16 v5, 0x7d

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 97
    :cond_2e
    :goto_10
    iget-object v5, v11, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    if-nez v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_11

    :cond_2f
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    :goto_11
    if-nez v5, :cond_30

    .line 98
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_12
    if-eqz v3, :cond_3d

    .line 99
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 100
    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 102
    new-instance v4, Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v4}, Lcom/caverock/androidsvg/c$d0;-><init>()V

    .line 103
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/a$c;->r()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 105
    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v6

    const/16 v7, 0x21

    if-eqz v6, :cond_31

    const/4 v11, 0x1

    goto :goto_18

    .line 108
    :cond_31
    iget v6, v1, Lcom/caverock/androidsvg/f$b;->b:I

    .line 109
    iget-object v8, v1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v6

    :goto_14
    const/4 v11, -0x1

    if-eq v8, v11, :cond_35

    const/16 v11, 0x3b

    if-eq v8, v11, :cond_35

    const/16 v11, 0x7d

    if-eq v8, v11, :cond_35

    if-eq v8, v7, :cond_35

    const/16 v11, 0xa

    if-eq v8, v11, :cond_32

    const/16 v11, 0xd

    if-eq v8, v11, :cond_32

    const/4 v11, 0x0

    goto :goto_15

    :cond_32
    const/4 v11, 0x1

    :goto_15
    if-eqz v11, :cond_33

    goto :goto_17

    .line 110
    :cond_33
    invoke-virtual {v1, v8}, Lcom/caverock/androidsvg/f$b;->g(I)Z

    move-result v8

    if-nez v8, :cond_34

    .line 111
    iget v8, v1, Lcom/caverock/androidsvg/f$b;->b:I

    const/4 v11, 0x1

    add-int/lit8 v10, v8, 0x1

    goto :goto_16

    :cond_34
    const/4 v11, 0x1

    .line 112
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->a()I

    move-result v8

    goto :goto_14

    :cond_35
    :goto_17
    const/4 v11, 0x1

    .line 113
    iget v8, v1, Lcom/caverock/androidsvg/f$b;->b:I

    if-le v8, v6, :cond_36

    .line 114
    iget-object v8, v1, Lcom/caverock/androidsvg/f$b;->a:Ljava/lang/String;

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 115
    :cond_36
    iput v6, v1, Lcom/caverock/androidsvg/f$b;->b:I

    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-eqz v6, :cond_3b

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 117
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    const-string v7, "important"

    .line 119
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    goto :goto_1a

    .line 121
    :cond_37
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_1a
    const/16 v7, 0x3b

    .line 122
    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    .line 123
    invoke-static {v4, v5, v6}, Lcom/caverock/androidsvg/f;->C(Lcom/caverock/androidsvg/c$d0;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    const/16 v5, 0x7d

    .line 125
    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/f$b;->d(C)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_39

    const/4 v7, 0x1

    goto :goto_1c

    :cond_39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/a$h;

    .line 128
    new-instance v5, Lcom/caverock/androidsvg/a$f;

    invoke-direct {v5, v3, v4}, Lcom/caverock/androidsvg/a$f;-><init>(Lcom/caverock/androidsvg/a$h;Lcom/caverock/androidsvg/c$d0;)V

    invoke-virtual {v2, v5}, Lcom/caverock/androidsvg/a$g;->a(Lcom/caverock/androidsvg/a$f;)V

    goto :goto_1b

    .line 129
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/f$b;->f()Z

    move-result v6

    if-nez v6, :cond_3b

    goto/16 :goto_13

    .line 130
    :cond_3b
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Malformed rule set in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_3c
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_3e

    goto/16 :goto_0

    :cond_3e
    :goto_1d
    return-object v2
.end method

.method private static g(Lcom/caverock/androidsvg/a$h;ILjava/util/List;ILcom/caverock/androidsvg/c$k0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/a$h;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$i0;",
            ">;I",
            "Lcom/caverock/androidsvg/c$k0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/a$i;

    .line 2
    invoke-static {v0, p2, p3, p4}, Lcom/caverock/androidsvg/a;->j(Lcom/caverock/androidsvg/a$i;Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/a$i;->a:Lcom/caverock/androidsvg/a$d;

    sget-object v1, Lcom/caverock/androidsvg/a$d;->b:Lcom/caverock/androidsvg/a$d;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_1

    return v3

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    return v2

    :cond_2
    add-int/lit8 p4, p1, -0x1

    .line 4
    invoke-static {p0, p4, p2, p3}, Lcom/caverock/androidsvg/a;->i(Lcom/caverock/androidsvg/a$h;ILjava/util/List;I)Z

    move-result p4

    if-eqz p4, :cond_3

    return v3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 5
    :cond_4
    sget-object v1, Lcom/caverock/androidsvg/a$d;->c:Lcom/caverock/androidsvg/a$d;

    if-ne v0, v1, :cond_5

    sub-int/2addr p1, v3

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/a;->i(Lcom/caverock/androidsvg/a$h;ILjava/util/List;I)Z

    move-result p0

    return p0

    .line 7
    :cond_5
    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/a;->a(Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)I

    move-result v0

    if-gtz v0, :cond_6

    return v2

    .line 8
    :cond_6
    iget-object p4, p4, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {p4}, Lcom/caverock/androidsvg/c$i0;->a()Ljava/util/List;

    move-result-object p4

    sub-int/2addr v0, v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/caverock/androidsvg/c$k0;

    sub-int/2addr p1, v3

    .line 9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/a;->g(Lcom/caverock/androidsvg/a$h;ILjava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result p0

    return p0
.end method

.method protected static h(Lcom/caverock/androidsvg/a$h;Lcom/caverock/androidsvg/c$k0;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 4
    iget-object v4, p0, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ne v4, v3, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/a$h;->b(I)Lcom/caverock/androidsvg/a$i;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Lcom/caverock/androidsvg/a;->j(Lcom/caverock/androidsvg/a$i;Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result p0

    return p0

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    sub-int/2addr v2, v3

    .line 7
    invoke-static {p0, v2, v0, v1, p1}, Lcom/caverock/androidsvg/a;->g(Lcom/caverock/androidsvg/a$h;ILjava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result p0

    return p0

    .line 8
    :cond_3
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    check-cast v1, Lcom/caverock/androidsvg/c$m0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    goto :goto_0
.end method

.method private static i(Lcom/caverock/androidsvg/a$h;ILjava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/a$h;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$i0;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/a$h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/a$i;

    .line 2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/c$k0;

    .line 3
    invoke-static {v0, p2, p3, v1}, Lcom/caverock/androidsvg/a;->j(Lcom/caverock/androidsvg/a$i;Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/a$i;->a:Lcom/caverock/androidsvg/a$d;

    sget-object v2, Lcom/caverock/androidsvg/a$d;->b:Lcom/caverock/androidsvg/a$d;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_1

    return v4

    :cond_1
    if-gtz p3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 5
    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/a;->i(Lcom/caverock/androidsvg/a$h;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_3
    sget-object v2, Lcom/caverock/androidsvg/a$d;->c:Lcom/caverock/androidsvg/a$d;

    if-ne v0, v2, :cond_4

    sub-int/2addr p1, v4

    sub-int/2addr p3, v4

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/a;->i(Lcom/caverock/androidsvg/a$h;ILjava/util/List;I)Z

    move-result p0

    return p0

    .line 8
    :cond_4
    invoke-static {p2, p3, v1}, Lcom/caverock/androidsvg/a;->a(Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)I

    move-result v0

    if-gtz v0, :cond_5

    return v3

    .line 9
    :cond_5
    iget-object v1, v1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    invoke-interface {v1}, Lcom/caverock/androidsvg/c$i0;->a()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$k0;

    sub-int/2addr p1, v4

    .line 10
    invoke-static {p0, p1, p2, p3, v0}, Lcom/caverock/androidsvg/a;->g(Lcom/caverock/androidsvg/a$h;ILjava/util/List;ILcom/caverock/androidsvg/c$k0;)Z

    move-result p0

    return p0
.end method

.method private static j(Lcom/caverock/androidsvg/a$i;Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/a$i;",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$i0;",
            ">;I",
            "Lcom/caverock/androidsvg/c$k0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/a$i;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "G"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, p3, Lcom/caverock/androidsvg/c$l;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/a$i;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/a$i;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/a$a;

    .line 7
    iget-object v3, v2, Lcom/caverock/androidsvg/a$a;->a:Ljava/lang/String;

    const-string v4, "id"

    if-ne v3, v4, :cond_4

    .line 8
    iget-object v2, v2, Lcom/caverock/androidsvg/a$a;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/caverock/androidsvg/c$k0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_4
    const-string v4, "class"

    if-ne v3, v4, :cond_6

    .line 9
    iget-object v3, p3, Lcom/caverock/androidsvg/c$k0;->g:Ljava/util/List;

    if-nez v3, :cond_5

    return v1

    .line 10
    :cond_5
    iget-object v2, v2, Lcom/caverock/androidsvg/a$a;->c:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    return v1

    .line 11
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/caverock/androidsvg/a$i;->d:Ljava/util/List;

    if-eqz p0, :cond_b

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "first-child"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14
    invoke-static {p1, p2, p3}, Lcom/caverock/androidsvg/a;->a(Ljava/util/List;ILcom/caverock/androidsvg/c$k0;)I

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    return v1

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/caverock/androidsvg/a$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/a$c;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/f$b;->q()V

    .line 3
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/a;->f(Lcom/caverock/androidsvg/a$c;)Lcom/caverock/androidsvg/a$g;

    move-result-object p1

    return-object p1
.end method
