.class public Lcom/android/billingclient/api/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/f;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/billingclient/api/n;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/n;

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->d()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/billingclient/api/n;

    .line 8
    invoke-virtual {v7}, Lcom/android/billingclient/api/n;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKUs should have the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->e()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/billingclient/api/n;

    .line 12
    invoke-virtual {v6}, Lcom/android/billingclient/api/n;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All SKUs must have the same package name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    new-instance v0, Lcom/android/billingclient/api/f;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/billingclient/api/f;-><init>(Lcom/android/billingclient/api/y;)V

    .line 15
    iget-object v4, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/n;

    invoke-virtual {v4}, Lcom/android/billingclient/api/n;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/android/billingclient/api/f;->j(Lcom/android/billingclient/api/f;Z)Z

    .line 16
    invoke-static {v0, v3}, Lcom/android/billingclient/api/f;->l(Lcom/android/billingclient/api/f;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-static {v0, v3}, Lcom/android/billingclient/api/f;->n(Lcom/android/billingclient/api/f;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/f;->q(Lcom/android/billingclient/api/f;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/f;->r(Lcom/android/billingclient/api/f;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-static {v0, v2}, Lcom/android/billingclient/api/f;->g(Lcom/android/billingclient/api/f;I)I

    .line 21
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/f;->i(Lcom/android/billingclient/api/f;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 22
    invoke-static {v0, v2}, Lcom/android/billingclient/api/f;->m(Lcom/android/billingclient/api/f;Z)Z

    return-object v0

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SkuDetails must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/f$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/android/billingclient/api/f$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/f$a;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object v0, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/util/ArrayList;

    return-object p0
.end method
