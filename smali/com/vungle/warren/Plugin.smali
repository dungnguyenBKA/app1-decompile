.class public Lcom/vungle/warren/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWrapperInfo(Lcom/vungle/warren/VungleApiClient$WrapperFramework;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->none:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    if-eq p0, v0, :cond_1

    .line 2
    sput-object p0, Lcom/vungle/warren/VungleApiClient;->WRAPPER_FRAMEWORK_SELECTED:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vungle/warren/VungleApiClient;->setHeaderUa(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vungle/warren/VungleApiClient;->setHeaderUa(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "Wrapper framework version is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "Wrapper is null or is not none"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "VUNGLE WARNING: SDK already initialized, you should\'ve set wrapper info before"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
