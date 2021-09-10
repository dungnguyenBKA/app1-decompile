.class public Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/camerasideas/collagemaker/network/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/camerasideas/collagemaker/network/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;->a:Lcom/camerasideas/collagemaker/network/a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "NetworkStateReceiver"

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "onReceive: \u7f51\u7edc\u53d1\u751f\u53d8\u5316"

    .line 3
    invoke-static {v0, p2}, Lem;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "onReceive: \u7f51\u7edc\u8fde\u63a5\u6210\u529f"

    .line 5
    invoke-static {v0, p1}, Lem;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;->a:Lcom/camerasideas/collagemaker/network/a;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/camerasideas/collagemaker/network/a;->h()V

    goto :goto_2

    :cond_1
    const-string p2, "onReceive: \u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    .line 8
    invoke-static {v0, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f0e00bf

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;->a:Lcom/camerasideas/collagemaker/network/a;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Lcom/camerasideas/collagemaker/network/a;->k()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "onReceive: \u5f02\u5e38"

    .line 12
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
