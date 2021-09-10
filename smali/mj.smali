.class public Lmj;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmj$a;
    }
.end annotation


# instance fields
.field private final U:Lyi;

.field private final V:Lkj;

.field private final W:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmj;",
            ">;"
        }
    .end annotation
.end field

.field private X:Lmj;

.field private Y:Lcom/bumptech/glide/i;

.field private Z:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lyi;

    invoke-direct {v0}, Lyi;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 3
    new-instance v1, Lmj$a;

    invoke-direct {v1, p0}, Lmj$a;-><init>(Lmj;)V

    iput-object v1, p0, Lmj;->V:Lkj;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmj;->W:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lmj;->U:Lyi;

    return-void
.end method

.method private m1()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmj;->Z:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method private p1(Landroid/content/Context;Landroidx/fragment/app/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmj;->s1()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/c;->j()Ljj;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2}, Ljj;->l(Landroid/content/Context;Landroidx/fragment/app/g;)Lmj;

    move-result-object p1

    iput-object p1, p0, Lmj;->X:Lmj;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lmj;->X:Lmj;

    .line 7
    iget-object p1, p1, Lmj;->W:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private s1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmj;->X:Lmj;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lmj;->W:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmj;->X:Lmj;

    :cond_0
    return-void
.end method


# virtual methods
.method public B0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->B0()V

    .line 2
    iget-object v0, p0, Lmj;->U:Lyi;

    invoke-virtual {v0}, Lyi;->d()V

    return-void
.end method

.method public C0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    .line 2
    iget-object v0, p0, Lmj;->U:Lyi;

    invoke-virtual {v0}, Lyi;->e()V

    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->g0(Landroid/content/Context;)V

    move-object p1, p0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()Landroidx/fragment/app/g;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_2

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to register fragment with root, ancestor detached"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lmj;->p1(Landroid/content/Context;Landroidx/fragment/app/g;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unable to register fragment with root"

    .line 9
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method l1()Lyi;
    .locals 1

    .line 1
    iget-object v0, p0, Lmj;->U:Lyi;

    return-object v0
.end method

.method public n0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    .line 2
    iget-object v0, p0, Lmj;->U:Lyi;

    invoke-virtual {v0}, Lyi;->c()V

    .line 3
    invoke-direct {p0}, Lmj;->s1()V

    return-void
.end method

.method public n1()Lcom/bumptech/glide/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lmj;->Y:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public o1()Lkj;
    .locals 1

    .line 1
    iget-object v0, p0, Lmj;->V:Lkj;

    return-object v0
.end method

.method public p0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->p0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmj;->Z:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-direct {p0}, Lmj;->s1()V

    return-void
.end method

.method q1(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmj;->Z:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->H()Landroidx/fragment/app/g;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lmj;->p1(Landroid/content/Context;Landroidx/fragment/app/g;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public r1(Lcom/bumptech/glide/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmj;->Y:Lcom/bumptech/glide/i;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmj;->m1()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
