.class public Lcom/camerasideas/collagemaker/network/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/camerasideas/collagemaker/network/b;


# instance fields
.field private a:Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/network/b;->a:Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;

    return-void
.end method

.method public static a()Lcom/camerasideas/collagemaker/network/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/network/b;->b:Lcom/camerasideas/collagemaker/network/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/camerasideas/collagemaker/network/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/camerasideas/collagemaker/network/b;->b:Lcom/camerasideas/collagemaker/network/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/camerasideas/collagemaker/network/b;

    invoke-direct {v1}, Lcom/camerasideas/collagemaker/network/b;-><init>()V

    sput-object v1, Lcom/camerasideas/collagemaker/network/b;->b:Lcom/camerasideas/collagemaker/network/b;

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lcom/camerasideas/collagemaker/network/b;->b:Lcom/camerasideas/collagemaker/network/b;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/network/b;->a:Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c(Lcom/camerasideas/collagemaker/network/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/network/b;->a:Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/network/NetworkStateReceiver;->a(Lcom/camerasideas/collagemaker/network/a;)V

    return-void
.end method
