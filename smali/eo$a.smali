.class Leo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/billingclient/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leo$a;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/j;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photoeditor.layout.collagemaker.vip.yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Leo$a;->a:Leo;

    invoke-static {p2}, Leo;->q(Leo;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/app/b;->A0(Landroid/content/Context;Z)V

    .line 4
    :cond_1
    iget-object p2, p0, Leo$a;->a:Leo;

    invoke-static {p2}, Leo;->r(Leo;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Leo$a;->a:Leo;

    invoke-static {p2}, Leo;->s(Leo;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lho;

    invoke-interface {p2, p1}, Lho;->l(Z)V

    .line 6
    :cond_2
    iget-object p1, p0, Leo$a;->a:Leo;

    invoke-static {p1}, Leo;->t(Leo;)Leo$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Leo$a;->a:Leo;

    invoke-static {p1}, Leo;->t(Leo;)Leo$b;

    move-result-object p1

    invoke-virtual {p1}, Leo$b;->run()V

    .line 8
    iget-object p1, p0, Leo$a;->a:Leo;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Leo;->u(Leo;Leo$b;)Leo$b;

    :cond_3
    return-void
.end method
