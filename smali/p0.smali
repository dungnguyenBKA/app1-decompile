.class public Lp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lr0;

.field protected b:Lr0;

.field protected c:Lr0;

.field protected d:Lr0;

.field protected e:Lr0;

.field protected f:Lr0;

.field protected g:Lr0;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field private l:I

.field private m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lr0;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp0;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lp0;->m:Z

    .line 4
    iput-object p1, p0, Lp0;->a:Lr0;

    .line 5
    iput p2, p0, Lp0;->l:I

    .line 6
    iput-boolean p3, p0, Lp0;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lp0;->q:Z

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 2
    iget v1, v0, Lp0;->l:I

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v4, v0, Lp0;->a:Lr0;

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_f

    .line 4
    iget v8, v0, Lp0;->i:I

    add-int/2addr v8, v2

    iput v8, v0, Lp0;->i:I

    .line 5
    iget-object v8, v4, Lr0;->h0:[Lr0;

    iget v9, v0, Lp0;->l:I

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 6
    iget-object v8, v4, Lr0;->g0:[Lr0;

    aput-object v10, v8, v9

    .line 7
    invoke-virtual {v4}, Lr0;->v()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_a

    .line 8
    iget-object v8, v0, Lp0;->b:Lr0;

    if-nez v8, :cond_0

    .line 9
    iput-object v4, v0, Lp0;->b:Lr0;

    .line 10
    :cond_0
    iput-object v4, v0, Lp0;->d:Lr0;

    .line 11
    iget-object v8, v4, Lr0;->C:[Lr0$a;

    iget v11, v0, Lp0;->l:I

    aget-object v8, v8, v11

    sget-object v12, Lr0$a;->d:Lr0$a;

    if-ne v8, v12, :cond_a

    iget-object v8, v4, Lr0;->g:[I

    aget v13, v8, v11

    const/4 v14, 0x3

    if-eqz v13, :cond_1

    aget v13, v8, v11

    if-eq v13, v14, :cond_1

    aget v8, v8, v11

    if-ne v8, v3, :cond_a

    .line 12
    :cond_1
    iget v8, v0, Lp0;->j:I

    add-int/2addr v8, v2

    iput v8, v0, Lp0;->j:I

    .line 13
    iget-object v8, v4, Lr0;->f0:[F

    aget v13, v8, v11

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-lez v16, :cond_2

    .line 14
    iget v3, v0, Lp0;->k:F

    aget v8, v8, v11

    add-float/2addr v3, v8

    iput v3, v0, Lp0;->k:F

    .line 15
    :cond_2
    invoke-virtual {v4}, Lr0;->v()I

    move-result v3

    if-eq v3, v9, :cond_4

    iget-object v3, v4, Lr0;->C:[Lr0$a;

    aget-object v3, v3, v11

    if-ne v3, v12, :cond_4

    iget-object v3, v4, Lr0;->g:[I

    aget v8, v3, v11

    if-eqz v8, :cond_3

    aget v3, v3, v11

    if-ne v3, v14, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    cmpg-float v3, v13, v15

    if-gez v3, :cond_5

    .line 16
    iput-boolean v2, v0, Lp0;->n:Z

    goto :goto_2

    .line 17
    :cond_5
    iput-boolean v2, v0, Lp0;->o:Z

    .line 18
    :goto_2
    iget-object v3, v0, Lp0;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lp0;->h:Ljava/util/ArrayList;

    .line 20
    :cond_6
    iget-object v3, v0, Lp0;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_7
    iget-object v3, v0, Lp0;->f:Lr0;

    if-nez v3, :cond_8

    .line 22
    iput-object v4, v0, Lp0;->f:Lr0;

    .line 23
    :cond_8
    iget-object v3, v0, Lp0;->g:Lr0;

    if-eqz v3, :cond_9

    .line 24
    iget-object v3, v3, Lr0;->g0:[Lr0;

    iget v8, v0, Lp0;->l:I

    aput-object v4, v3, v8

    .line 25
    :cond_9
    iput-object v4, v0, Lp0;->g:Lr0;

    :cond_a
    if-eq v6, v4, :cond_b

    .line 26
    iget-object v3, v6, Lr0;->h0:[Lr0;

    iget v6, v0, Lp0;->l:I

    aput-object v4, v3, v6

    .line 27
    :cond_b
    iget-object v3, v4, Lr0;->A:[Lq0;

    add-int/lit8 v6, v1, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_d

    .line 28
    iget-object v3, v3, Lq0;->b:Lr0;

    .line 29
    iget-object v6, v3, Lr0;->A:[Lq0;

    aget-object v8, v6, v1

    iget-object v8, v8, Lq0;->d:Lq0;

    if-eqz v8, :cond_d

    aget-object v6, v6, v1

    iget-object v6, v6, Lq0;->d:Lq0;

    iget-object v6, v6, Lq0;->b:Lr0;

    if-eq v6, v4, :cond_c

    goto :goto_3

    :cond_c
    move-object v10, v3

    :cond_d
    :goto_3
    if-eqz v10, :cond_e

    goto :goto_4

    :cond_e
    move-object v10, v4

    const/4 v7, 0x1

    :goto_4
    move-object v6, v4

    move-object v4, v10

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 30
    :cond_f
    iput-object v4, v0, Lp0;->c:Lr0;

    .line 31
    iget v1, v0, Lp0;->l:I

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lp0;->m:Z

    if-eqz v1, :cond_10

    .line 32
    iput-object v4, v0, Lp0;->e:Lr0;

    goto :goto_5

    .line 33
    :cond_10
    iget-object v1, v0, Lp0;->a:Lr0;

    iput-object v1, v0, Lp0;->e:Lr0;

    .line 34
    :goto_5
    iget-boolean v1, v0, Lp0;->o:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lp0;->n:Z

    if-eqz v1, :cond_11

    const/4 v5, 0x1

    :cond_11
    iput-boolean v5, v0, Lp0;->p:Z

    .line 35
    :cond_12
    iput-boolean v2, v0, Lp0;->q:Z

    return-void
.end method
