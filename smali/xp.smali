.class public final synthetic Lxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# instance fields
.field public final synthetic a:Lyp;


# direct methods
.method public synthetic constructor <init>(Lyp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxp;->a:Lyp;

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lxp;->a:Lyp;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    const-string v1, "photoeditor.layout.collagemaker.vip.yearly"

    const-string v2, "photoeditor.layout.collagemaker.removeads"

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", purchases = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CloudStoreManager"

    invoke-static {v4, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    if-eqz p2, :cond_7

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 7
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/j;

    .line 8
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v6, "HasPay"

    .line 10
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "SubscribePro"

    if-eqz v6, :cond_1

    .line 12
    :try_start_1
    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v6, "HasPro"

    .line 14
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 16
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    throw p1

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p2

    if-ne p2, v5, :cond_5

    .line 24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u8d2d\u4e70\u7d20\u6750\u5931\u8d25\uff1a"

    .line 27
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
