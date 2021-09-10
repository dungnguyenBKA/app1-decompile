.class public Ldo;
.super Lyn;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;
.implements Lcom/android/billingclient/api/i;
.implements Lcom/google/billingclient/g$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Lgo;",
        ">;",
        "Lcom/android/billingclient/api/m;",
        "Lcom/android/billingclient/api/i;",
        "Lcom/google/billingclient/g$d;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/billingclient/g;


# direct methods
.method public constructor <init>(Lgo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lyn;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldo;->d:Ljava/util/List;

    .line 3
    invoke-virtual {p0, p1}, Lyn;->d(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/google/billingclient/g;

    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/google/billingclient/g;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/m;)V

    iput-object p1, p0, Ldo;->e:Lcom/google/billingclient/g;

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/billingclient/g;->x(Lcom/google/billingclient/g$d;)V

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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", purchases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConsumePurchasesPresenter"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    iget-object p2, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Lgo;->a(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lgo;->c(ZLjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-interface {p1, p2}, Lgo;->m(Z)V

    :cond_1
    return-void
.end method

.method public c(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ConsumePurchasesPresenter"

    return-object v0
.end method

.method public f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/j;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "responseCode="

    .line 4
    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sku="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConsumePurchasesPresenter"

    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    iget-object p2, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Lgo;->a(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lgo;->c(ZLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lgo;

    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p1, p2}, Lgo;->m(Z)V

    :cond_2
    return-void
.end method

.method public n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ldo;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/j;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lgo;

    const/4 v1, 0x1

    const-string v2, "Consume your purchases..."

    invoke-interface {v0, v1, v2}, Lgo;->c(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Ldo;->e:Lcom/google/billingclient/g;

    invoke-virtual {p1}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/billingclient/g;->m(Ljava/lang/String;Lcom/android/billingclient/api/i;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/b;->c0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lgo;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lyn;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s ..."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-interface {v0, v1, v5}, Lgo;->c(ZLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Ldo;->e:Lcom/google/billingclient/g;

    invoke-virtual {v0}, Lcom/google/billingclient/g;->v()Lcom/google/billingclient/g;

    :goto_1
    return-void
.end method
