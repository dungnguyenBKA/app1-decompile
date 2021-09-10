.class public abstract Lik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lik$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnk<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final b:Lik$a;

.field protected final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lik;->c:Landroid/view/View;

    .line 4
    new-instance v0, Lik$a;

    invoke-direct {v0, p1}, Lik$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lik;->b:Lik$a;

    return-void
.end method


# virtual methods
.method public final a(Lmk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lik;->b:Lik$a;

    invoke-virtual {v0, p1}, Lik$a;->h(Lmk;)V

    return-void
.end method

.method public final c(Lzj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lik;->c:Landroid/view/View;

    const v1, 0x7f080140

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final f()Lzj;
    .locals 2

    .line 1
    iget-object v0, p0, Lik;->c:Landroid/view/View;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lzj;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lzj;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lik;->b:Lik$a;

    invoke-virtual {p1}, Lik$a;->b()V

    return-void
.end method

.method public final h(Lmk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lik;->b:Lik$a;

    invoke-virtual {v0, p1}, Lik$a;->c(Lmk;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Target for: "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lik;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
