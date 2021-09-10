.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/j<",
            "**>;>;"
        }
    .end annotation
.end field

.field private b:Lwd;

.field private c:Lqe;

.field private d:Loe;

.field private e:Lif;

.field private f:Llf;

.field private g:Llf;

.field private h:Laf$a;

.field private i:Ljf;

.field private j:Lbj;

.field private k:Lcom/bumptech/glide/c$a;

.field private l:Ljj$b;

.field private m:Llf;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbk<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/bumptech/glide/d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d$a;-><init>(Lcom/bumptech/glide/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/c$a;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/d;->f:Llf;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Llf;->d()Llf;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->f:Llf;

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/d;->g:Llf;

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Llf;->c()Llf;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->g:Llf;

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/d;->m:Llf;

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Llf;->b()Llf;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->m:Llf;

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/d;->i:Ljf;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljf$a;

    invoke-direct {v1, v2}, Ljf$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljf$a;->a()Ljf;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->i:Ljf;

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/d;->j:Lbj;

    if-nez v1, :cond_4

    .line 10
    new-instance v1, Ldj;

    invoke-direct {v1}, Ldj;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/d;->j:Lbj;

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/d;->c:Lqe;

    if-nez v1, :cond_6

    .line 12
    iget-object v1, v0, Lcom/bumptech/glide/d;->i:Ljf;

    invoke-virtual {v1}, Ljf;->b()I

    move-result v1

    if-lez v1, :cond_5

    .line 13
    new-instance v3, Lwe;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lwe;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/d;->c:Lqe;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v1, Lre;

    invoke-direct {v1}, Lre;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/d;->c:Lqe;

    .line 15
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/d;->d:Loe;

    if-nez v1, :cond_7

    .line 16
    new-instance v1, Lve;

    iget-object v3, v0, Lcom/bumptech/glide/d;->i:Ljf;

    invoke-virtual {v3}, Ljf;->a()I

    move-result v3

    invoke-direct {v1, v3}, Lve;-><init>(I)V

    iput-object v1, v0, Lcom/bumptech/glide/d;->d:Loe;

    .line 17
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/d;->e:Lif;

    if-nez v1, :cond_8

    .line 18
    new-instance v1, Lhf;

    iget-object v3, v0, Lcom/bumptech/glide/d;->i:Ljf;

    invoke-virtual {v3}, Ljf;->c()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lhf;-><init>(J)V

    iput-object v1, v0, Lcom/bumptech/glide/d;->e:Lif;

    .line 19
    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/d;->h:Laf$a;

    if-nez v1, :cond_9

    .line 20
    new-instance v1, Lgf;

    invoke-direct {v1, v2}, Lgf;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bumptech/glide/d;->h:Laf$a;

    .line 21
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/d;->b:Lwd;

    if-nez v1, :cond_a

    .line 22
    new-instance v1, Lwd;

    iget-object v4, v0, Lcom/bumptech/glide/d;->e:Lif;

    iget-object v5, v0, Lcom/bumptech/glide/d;->h:Laf$a;

    iget-object v6, v0, Lcom/bumptech/glide/d;->g:Llf;

    iget-object v7, v0, Lcom/bumptech/glide/d;->f:Llf;

    .line 23
    invoke-static {}, Llf;->e()Llf;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/d;->m:Llf;

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lwd;-><init>(Lif;Laf$a;Llf;Llf;Llf;Llf;Z)V

    iput-object v1, v0, Lcom/bumptech/glide/d;->b:Lwd;

    .line 24
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/d;->n:Ljava/util/List;

    if-nez v1, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->n:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/d;->n:Ljava/util/List;

    .line 27
    :goto_1
    new-instance v7, Ljj;

    iget-object v1, v0, Lcom/bumptech/glide/d;->l:Ljj$b;

    invoke-direct {v7, v1}, Ljj;-><init>(Ljj$b;)V

    .line 28
    new-instance v15, Lcom/bumptech/glide/c;

    iget-object v3, v0, Lcom/bumptech/glide/d;->b:Lwd;

    iget-object v4, v0, Lcom/bumptech/glide/d;->e:Lif;

    iget-object v5, v0, Lcom/bumptech/glide/d;->c:Lqe;

    iget-object v6, v0, Lcom/bumptech/glide/d;->d:Loe;

    iget-object v8, v0, Lcom/bumptech/glide/d;->j:Lbj;

    const/4 v9, 0x4

    iget-object v10, v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/c$a;

    iget-object v11, v0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    iget-object v12, v0, Lcom/bumptech/glide/d;->n:Ljava/util/List;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lwd;Lif;Lqe;Loe;Ljj;Lbj;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    return-object v15
.end method

.method b(Ljj$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/d;->l:Ljj$b;

    return-void
.end method
