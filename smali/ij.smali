.class public Lij;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lij$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Lyi;

.field private final c:Lkj;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lij;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/i;

.field private f:Lij;

.field private g:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lyi;

    invoke-direct {v0}, Lyi;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v1, Lij$a;

    invoke-direct {v1, p0}, Lij$a;-><init>(Lij;)V

    iput-object v1, p0, Lij;->c:Lkj;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lij;->d:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lij;->b:Lyi;

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lij;->g()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->j()Ljj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj;->j(Landroid/app/Activity;)Lij;

    move-result-object p1

    iput-object p1, p0, Lij;->f:Lij;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lij;->f:Lij;

    .line 5
    iget-object p1, p1, Lij;->d:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->f:Lij;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lij;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lij;->f:Lij;

    :cond_0
    return-void
.end method


# virtual methods
.method a()Lyi;
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->b:Lyi;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->e:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public c()Lkj;
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->c:Lkj;

    return-object v0
.end method

.method e(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lij;->g:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lij;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/bumptech/glide/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lij;->e:Lcom/bumptech/glide/i;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lij;->d(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lij;->b:Lyi;

    invoke-virtual {v0}, Lyi;->c()V

    .line 3
    invoke-direct {p0}, Lij;->g()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    invoke-direct {p0}, Lij;->g()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lij;->b:Lyi;

    invoke-virtual {v0}, Lyi;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lij;->b:Lyi;

    invoke-virtual {v0}, Lyi;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lij;->g:Landroid/app/Fragment;

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
