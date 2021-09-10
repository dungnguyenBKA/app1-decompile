.class Lyp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/billingclient/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyp;


# direct methods
.method constructor <init>(Lyp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyp$a;->a:Lyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 2
    iget-object p3, p0, Lyp$a;->a:Lyp;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lpp;

    invoke-direct {v0, p3, p1, p2}, Lpp;-><init>(Lyp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "breastenlarger.bodyeditor.photoeditor.vip.permanent"

    const-string v1, "photoeditor.layout.collagemaker.vip.yearly"

    const-string v2, "photoeditor.layout.collagemaker.vip.monthly"

    const-string v3, "SubscribePro"

    .line 1
    iget-object v4, p0, Lyp$a;->a:Lyp;

    invoke-static {v4}, Lyp;->a(Lyp;)Lcom/google/billingclient/g$d;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, p0, Lyp$a;->a:Lyp;

    invoke-static {v4}, Lyp;->a(Lyp;)Lcom/google/billingclient/g$d;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/google/billingclient/g$d;->b(ILjava/util/List;)V

    :cond_0
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "photoeditor.layout.collagemaker.removeads"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v6

    .line 7
    invoke-static {v6}, Landroidx/core/app/b;->W(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 8
    :try_start_0
    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 9
    invoke-interface {v7, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 10
    invoke-interface {v7, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 11
    invoke-interface {v7, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 12
    invoke-interface {v7, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/j;

    .line 14
    invoke-virtual {v7}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_5

    if-eq v8, v10, :cond_4

    if-eq v8, v11, :cond_3

    if-eq v8, v12, :cond_2

    .line 15
    invoke-virtual {v7}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v7}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/app/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {v6, v0, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v6, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 22
    :cond_4
    invoke-interface {v6, v2, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 24
    :cond_5
    invoke-interface {v6, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    throw p1

    :cond_7
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e94872c -> :sswitch_3
        -0x39d87abc -> :sswitch_2
        -0x10b2231d -> :sswitch_1
        0x2276ea70 -> :sswitch_0
    .end sparse-switch
.end method
