.class public Lcom/facebook/rebound/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/b$b;
    }
.end annotation


# static fields
.field private static l:I


# instance fields
.field private a:Lcom/facebook/rebound/c;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/rebound/b$b;

.field private final d:Lcom/facebook/rebound/b$b;

.field private final e:Lcom/facebook/rebound/b$b;

.field private f:D

.field private g:D

.field private h:Z

.field private i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:D

.field private final k:Lcom/facebook/rebound/g;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/rebound/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rebound/b$b;-><init>(Lcom/facebook/rebound/b$a;)V

    iput-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    .line 3
    new-instance v0, Lcom/facebook/rebound/b$b;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/b$b;-><init>(Lcom/facebook/rebound/b$a;)V

    iput-object v0, p0, Lcom/facebook/rebound/b;->d:Lcom/facebook/rebound/b$b;

    .line 4
    new-instance v0, Lcom/facebook/rebound/b$b;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/b$b;-><init>(Lcom/facebook/rebound/b$a;)V

    iput-object v0, p0, Lcom/facebook/rebound/b;->e:Lcom/facebook/rebound/b$b;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/rebound/b;->h:Z

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/b;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/facebook/rebound/b;->j:D

    .line 8
    iput-object p1, p0, Lcom/facebook/rebound/b;->k:Lcom/facebook/rebound/g;

    const-string p1, "spring:"

    .line 9
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcom/facebook/rebound/b;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/b;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/b;->b:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/facebook/rebound/c;->c:Lcom/facebook/rebound/c;

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/facebook/rebound/b;->a:Lcom/facebook/rebound/c;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/e;)Lcom/facebook/rebound/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/b;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method b(D)V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v2, v0, Lcom/facebook/rebound/b;->h:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p1

    .line 3
    :goto_0
    iget-wide v4, v0, Lcom/facebook/rebound/b;->j:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/rebound/b;->j:D

    .line 4
    iget-object v2, v0, Lcom/facebook/rebound/b;->a:Lcom/facebook/rebound/c;

    iget-wide v3, v2, Lcom/facebook/rebound/c;->b:D

    .line 5
    iget-wide v5, v2, Lcom/facebook/rebound/c;->a:D

    .line 6
    iget-object v2, v0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v7, v2, Lcom/facebook/rebound/b$b;->a:D

    .line 7
    iget-wide v9, v2, Lcom/facebook/rebound/b$b;->b:D

    .line 8
    iget-object v2, v0, Lcom/facebook/rebound/b;->e:Lcom/facebook/rebound/b$b;

    iget-wide v11, v2, Lcom/facebook/rebound/b$b;->a:D

    .line 9
    iget-wide v13, v2, Lcom/facebook/rebound/b$b;->b:D

    move v15, v1

    .line 10
    :goto_1
    iget-wide v1, v0, Lcom/facebook/rebound/b;->j:D

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v1, v16

    if-ltz v18, :cond_3

    sub-double v1, v1, v16

    .line 11
    iput-wide v1, v0, Lcom/facebook/rebound/b;->j:D

    cmpg-double v13, v1, v16

    if-gez v13, :cond_2

    .line 12
    iget-object v1, v0, Lcom/facebook/rebound/b;->d:Lcom/facebook/rebound/b$b;

    iput-wide v7, v1, Lcom/facebook/rebound/b$b;->a:D

    .line 13
    iput-wide v9, v1, Lcom/facebook/rebound/b$b;->b:D

    .line 14
    :cond_2
    iget-wide v1, v0, Lcom/facebook/rebound/b;->g:D

    sub-double v11, v1, v11

    mul-double v11, v11, v3

    mul-double v13, v5, v9

    sub-double/2addr v11, v13

    mul-double v13, v9, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v18

    add-double/2addr v13, v7

    mul-double v20, v11, v16

    mul-double v20, v20, v18

    add-double v20, v20, v9

    sub-double v13, v1, v13

    mul-double v13, v13, v3

    mul-double v22, v5, v20

    sub-double v13, v13, v22

    mul-double v22, v20, v16

    mul-double v22, v22, v18

    add-double v22, v22, v7

    mul-double v24, v13, v16

    mul-double v24, v24, v18

    add-double v24, v24, v9

    sub-double v18, v1, v22

    mul-double v18, v18, v3

    mul-double v22, v5, v24

    sub-double v18, v18, v22

    mul-double v22, v24, v16

    add-double v22, v22, v7

    mul-double v26, v18, v16

    add-double v26, v26, v9

    sub-double v1, v1, v22

    mul-double v1, v1, v3

    mul-double v28, v5, v26

    sub-double v1, v1, v28

    add-double v20, v20, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v24

    add-double v20, v20, v9

    add-double v20, v20, v26

    const-wide v28, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v20, v20, v28

    add-double v13, v13, v18

    mul-double v13, v13, v24

    add-double/2addr v13, v11

    add-double/2addr v13, v1

    mul-double v13, v13, v28

    mul-double v20, v20, v16

    add-double v7, v20, v7

    mul-double v13, v13, v16

    add-double/2addr v9, v13

    move-wide/from16 v11, v22

    move-wide/from16 v13, v26

    goto :goto_1

    .line 15
    :cond_3
    iget-object v5, v0, Lcom/facebook/rebound/b;->e:Lcom/facebook/rebound/b$b;

    iput-wide v11, v5, Lcom/facebook/rebound/b$b;->a:D

    .line 16
    iput-wide v13, v5, Lcom/facebook/rebound/b$b;->b:D

    .line 17
    iget-object v5, v0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iput-wide v7, v5, Lcom/facebook/rebound/b$b;->a:D

    .line 18
    iput-wide v9, v5, Lcom/facebook/rebound/b$b;->b:D

    const-wide/16 v11, 0x0

    cmpl-double v6, v1, v11

    if-lez v6, :cond_4

    div-double v1, v1, v16

    mul-double v7, v7, v1

    .line 19
    iget-object v6, v0, Lcom/facebook/rebound/b;->d:Lcom/facebook/rebound/b$b;

    iget-wide v13, v6, Lcom/facebook/rebound/b$b;->a:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v1

    mul-double v13, v13, v16

    add-double/2addr v13, v7

    iput-wide v13, v5, Lcom/facebook/rebound/b$b;->a:D

    mul-double v9, v9, v1

    .line 20
    iget-wide v1, v6, Lcom/facebook/rebound/b$b;->b:D

    mul-double v1, v1, v16

    add-double/2addr v1, v9

    iput-wide v1, v5, Lcom/facebook/rebound/b$b;->b:D

    .line 21
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/b;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    move v1, v15

    goto :goto_4

    :cond_5
    cmpl-double v1, v3, v11

    if-lez v1, :cond_6

    .line 22
    iget-wide v3, v0, Lcom/facebook/rebound/b;->g:D

    iput-wide v3, v0, Lcom/facebook/rebound/b;->f:D

    .line 23
    iget-object v1, v0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iput-wide v3, v1, Lcom/facebook/rebound/b$b;->a:D

    goto :goto_2

    .line 24
    :cond_6
    iget-object v1, v0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v3, v1, Lcom/facebook/rebound/b$b;->a:D

    iput-wide v3, v0, Lcom/facebook/rebound/b;->g:D

    .line 25
    iput-wide v3, v0, Lcom/facebook/rebound/b;->f:D

    .line 26
    :goto_2
    iget-object v1, v0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v3, v1, Lcom/facebook/rebound/b$b;->b:D

    cmpl-double v5, v11, v3

    if-nez v5, :cond_7

    goto :goto_3

    .line 27
    :cond_7
    iput-wide v11, v1, Lcom/facebook/rebound/b$b;->b:D

    .line 28
    iget-object v1, v0, Lcom/facebook/rebound/b;->k:Lcom/facebook/rebound/g;

    .line 29
    iget-object v3, v0, Lcom/facebook/rebound/b;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v3}, Lcom/facebook/rebound/g;->a(Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x1

    .line 31
    :goto_4
    iget-boolean v3, v0, Lcom/facebook/rebound/b;->h:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 32
    iput-boolean v4, v0, Lcom/facebook/rebound/b;->h:Z

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_9

    .line 33
    iput-boolean v2, v0, Lcom/facebook/rebound/b;->h:Z

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 34
    :goto_6
    iget-object v1, v0, Lcom/facebook/rebound/b;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/rebound/e;

    if-eqz v3, :cond_b

    .line 35
    invoke-interface {v4, v0}, Lcom/facebook/rebound/e;->c(Lcom/facebook/rebound/b;)V

    .line 36
    :cond_b
    invoke-interface {v4, v0}, Lcom/facebook/rebound/e;->b(Lcom/facebook/rebound/b;)V

    if-eqz v2, :cond_a

    .line 37
    invoke-interface {v4, v0}, Lcom/facebook/rebound/e;->d(Lcom/facebook/rebound/b;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public c()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v0, v0, Lcom/facebook/rebound/b$b;->a:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/b;->g:D

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v0, v0, Lcom/facebook/rebound/b$b;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    .line 2
    iget-wide v4, p0, Lcom/facebook/rebound/b;->g:D

    iget-wide v0, v0, Lcom/facebook/rebound/b$b;->a:D

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Lcom/facebook/rebound/c;

    iget-wide v0, v0, Lcom/facebook/rebound/c;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(D)Lcom/facebook/rebound/b;
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/b;->f:D

    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iput-wide p1, v0, Lcom/facebook/rebound/b$b;->a:D

    .line 3
    iget-object p1, p0, Lcom/facebook/rebound/b;->k:Lcom/facebook/rebound/g;

    .line 4
    iget-object p2, p0, Lcom/facebook/rebound/b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Lcom/facebook/rebound/g;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/rebound/b;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/e;

    .line 7
    invoke-interface {p2, p0}, Lcom/facebook/rebound/e;->b(Lcom/facebook/rebound/b;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v0, p1, Lcom/facebook/rebound/b$b;->a:D

    iput-wide v0, p0, Lcom/facebook/rebound/b;->g:D

    .line 9
    iget-object p2, p0, Lcom/facebook/rebound/b;->e:Lcom/facebook/rebound/b$b;

    iput-wide v0, p2, Lcom/facebook/rebound/b$b;->a:D

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p1, Lcom/facebook/rebound/b$b;->b:D

    return-object p0
.end method

.method public h(D)Lcom/facebook/rebound/b;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/b;->g:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/b$b;

    iget-wide v0, v0, Lcom/facebook/rebound/b$b;->a:D

    .line 3
    iput-wide v0, p0, Lcom/facebook/rebound/b;->f:D

    .line 4
    iput-wide p1, p0, Lcom/facebook/rebound/b;->g:D

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/b;->k:Lcom/facebook/rebound/g;

    .line 6
    iget-object p2, p0, Lcom/facebook/rebound/b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Lcom/facebook/rebound/g;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/rebound/b;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/e;

    .line 9
    invoke-interface {p2, p0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/b;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/rebound/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/facebook/rebound/b;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
