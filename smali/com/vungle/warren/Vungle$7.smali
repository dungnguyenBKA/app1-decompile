.class final Lcom/vungle/warren/Vungle$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$close:Ljava/lang/String;

.field final synthetic val$keepWatching:Ljava/lang/String;

.field final synthetic val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$7;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/Vungle$7;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 4
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "incentivizedTextSetByPub"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v2}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    const-string v3, "body"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    const-string v3, "continue"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    const-string v3, "close"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 15
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    const-string v3, "userID"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v4, v2

    :goto_0
    if-eqz v4, :cond_7

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot save incentivized cookie"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    return-void
.end method
