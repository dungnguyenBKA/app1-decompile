.class public Leo;
.super Lyn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Lho;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Z

.field private final e:Lcom/google/billingclient/g;

.field private f:Leo$b;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/android/billingclient/api/p;

.field private i:Lcom/android/billingclient/api/p;

.field private j:Lcom/google/billingclient/g$d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lyn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leo;->d:Z

    .line 3
    new-instance v0, Lbo;

    invoke-direct {v0, p0}, Lbo;-><init>(Leo;)V

    iput-object v0, p0, Leo;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lao;

    invoke-direct {v0, p0}, Lao;-><init>(Leo;)V

    iput-object v0, p0, Leo;->h:Lcom/android/billingclient/api/p;

    .line 5
    new-instance v0, Lzn;

    invoke-direct {v0, p0}, Lzn;-><init>(Leo;)V

    iput-object v0, p0, Leo;->i:Lcom/android/billingclient/api/p;

    .line 6
    new-instance v0, Leo$a;

    invoke-direct {v0, p0}, Leo$a;-><init>(Leo;)V

    iput-object v0, p0, Leo;->j:Lcom/google/billingclient/g$d;

    .line 7
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0}, Lyp;->C()Lcom/google/billingclient/g;

    move-result-object v0

    iput-object v0, p0, Leo;->e:Lcom/google/billingclient/g;

    .line 8
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v1

    iget-object v2, p0, Leo;->j:Lcom/google/billingclient/g$d;

    invoke-virtual {v1, v2}, Lyp;->V(Lcom/google/billingclient/g$d;)V

    const-string v1, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Leo;->h:Lcom/android/billingclient/api/p;

    const-string v3, "inapp"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/billingclient/g;->w(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/p;)V

    const-string v1, "photoeditor.layout.collagemaker.vip.monthly"

    const-string v2, "photoeditor.layout.collagemaker.vip.yearly"

    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Leo;->i:Lcom/android/billingclient/api/p;

    const-string v3, "subs"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/billingclient/g;->w(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/p;)V

    return-void
.end method

.method private B(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/n;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    sget v0, Lcom/google/billingclient/BillingHelper;->b:I

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/n;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/n;

    invoke-virtual {v1}, Lcom/android/billingclient/api/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Landroidx/core/app/b;->C0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lho;

    invoke-interface {p1, v1}, Lho;->g(Ljava/lang/String;)V

    :cond_2
    const-string p1, "photoeditor.layout.collagemaker.vip.monthly"

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/n;

    invoke-virtual {v1}, Lcom/android/billingclient/api/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Landroidx/core/app/b;->C0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lho;

    invoke-interface {p1, v1}, Lho;->r(Ljava/lang/String;)V

    :cond_3
    const-string p1, "photoeditor.layout.collagemaker.vip.yearly"

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/n;

    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroidx/core/app/b;->C0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lho;

    invoke-interface {p1, v0}, Lho;->i(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic n(Leo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Leo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Leo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Leo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Leo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s(Leo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic t(Leo;)Leo$b;
    .locals 0

    .line 1
    iget-object p0, p0, Leo;->f:Leo$b;

    return-object p0
.end method

.method static synthetic u(Leo;Leo$b;)Leo$b;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Leo;->f:Leo$b;

    return-object p1
.end method


# virtual methods
.method public A(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HasClickPro"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/b;->c0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lyn;->c:Landroid/content/Context;

    const p2, 0x7f0e00bf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Leo;->e:Lcom/google/billingclient/g;

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    const v4, -0x6e94872c

    if-eq v1, v4, :cond_5

    const v4, -0x10b2231d

    if-eq v1, v4, :cond_3

    const v4, 0x2276ea70

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "photoeditor.layout.collagemaker.vip.yearly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "photoeditor.layout.collagemaker.vip.monthly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_7

    const-string v1, "inapp"

    goto :goto_1

    :cond_7
    const-string v1, "subs"

    .line 7
    :goto_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/billingclient/g;->t(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "SubscribeProPresenter"

    return-object v0
.end method

.method public g(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lyn;->g(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    if-nez p3, :cond_0

    .line 2
    iget-object p1, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Leo;->d:Z

    .line 3
    :cond_0
    iget-object p1, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lho;

    invoke-interface {p1, p2}, Lho;->l(Z)V

    :cond_1
    return p2
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SubscribeProPresenter"

    const-string v1, "onRestoreInstanceState"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "mPreviousBuySubsPro"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Leo;->d:Z

    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SubscribeProPresenter"

    const-string v1, "onSaveInstanceState"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Leo;->d:Z

    const-string v1, "mPreviousBuySubsPro"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public j()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Leo;->g:Ljava/lang/Runnable;

    .line 2
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyp;->V(Lcom/google/billingclient/g$d;)V

    .line 3
    iput-object v0, p0, Leo;->j:Lcom/google/billingclient/g$d;

    .line 4
    iput-object v0, p0, Leo;->h:Lcom/android/billingclient/api/p;

    .line 5
    iput-object v0, p0, Leo;->i:Lcom/android/billingclient/api/p;

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Leo;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lho;

    invoke-interface {v0}, Lho;->b()V

    .line 3
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "HasPro"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lho;

    invoke-interface {v0, v1}, Lho;->l(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lho;

    invoke-interface {v0}, Lho;->o()V

    goto :goto_0

    :cond_1
    const-string v0, "isBuySubsPro = "

    .line 8
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscribeProPresenter"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic w()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Leo;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lyn;->b:Landroid/os/Handler;

    new-instance v1, Lco;

    invoke-direct {v1, p0}, Lco;-><init>(Leo;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic x(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1

    const-string p1, "SubscribeProPresenter"

    const-string v0, "mPermanentResponseListener"

    .line 1
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p2}, Leo;->B(Ljava/util/List;)V

    return-void
.end method

.method public synthetic y(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1

    const-string p1, "SubscribeProPresenter"

    const-string v0, "mProResponseListener"

    .line 1
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p2}, Leo;->B(Ljava/util/List;)V

    return-void
.end method

.method public z()V
    .locals 2

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

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Leo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leo$b;-><init>(Leo;Leo$a;)V

    iput-object v0, p0, Leo;->f:Leo$b;

    .line 5
    iget-object v0, p0, Leo;->e:Lcom/google/billingclient/g;

    invoke-virtual {v0}, Lcom/google/billingclient/g;->v()Lcom/google/billingclient/g;

    :goto_0
    return-void
.end method
